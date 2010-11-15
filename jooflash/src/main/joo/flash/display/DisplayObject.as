package flash.display {
import flash.events.KeyboardEvent;

import js.Element;
import flash.events.EventDispatcher;
import js.Event;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Transform;

public class DisplayObject extends EventDispatcher implements IBitmapDrawable {

  public function DisplayObject() {
    super();
  }

  /**
   * Indicates the instance name of the DisplayObject. The object can be identified in
   * the child list of its parent display object container by calling the
   * <code>getChildByName()</code> method of the display object container.
   *
   * @example
   * The following code creates two Sprite object and traces the
   * associated <code>name</code> property when the user clicks either of the objects:
   * <pre>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var circle1:Sprite = new Sprite();
   * circle1.graphics.beginFill(0xFF0000);
   * circle1.graphics.drawCircle(40, 40, 40);
   * circle1.name = "circle1";
   * addChild(circle1);
   * circle1.addEventListener(MouseEvent.CLICK, traceName);
   *
   * var circle2:Sprite = new Sprite();
   * circle2.graphics.beginFill(0x0000FF);
   * circle2.graphics.drawCircle(140, 40, 40);
   * circle2.name = "circle2";
   * addChild(circle2);
   * circle2.addEventListener(MouseEvent.CLICK, traceName);
   *
   * function traceName(event:MouseEvent):void {
   *     trace(event.target.name);
   * }
   * </pre>
   */
  public function get name():String {
    return _name;
  }

  /**
   * Set the instance name of the DisplayObject. The object can be identified in
   * the child list of its parent display object container by calling the
   * <code>getChildByName()</code> method of the display object container.
   *
   * @param value the new name of the DisplayObject
   * @throws IllegalOperationError If you are attempting to set this property on an object that was
   *   placed on the timeline in the Flash authoring tool.
   *
   */
  public function set name(value:String):void {
    _name = value;
  }

  /**
   * The Stage of the display object. A Flash application has only one Stage object. For example, you can create and
   * load multiple display objects into the display list, and the stage property of each display object refers to the
   * same Stage object (even if the display object belongs to a loaded SWF file).
   * <p>If a display object is not added to the display list, its stage property is set to null.</p>
   * <p><b>Example</b></p>
   * <p>The following code creates two TextField objects and uses the width property of the Stage object to position
   * the text fields:</p>
   * <pre>
   * import flash.text.TextField;
   *
   * var tf1:TextField = new TextField();
   * tf1.text = "Text Field 1";
   * tf1.border = true;
   * tf1.x = 10;
   * addChild(tf1);
   * tf1.width = tf1.stage.stageWidth / 2 - 10;
   *
   * var tf2:TextField = new TextField();
   * tf2.text = "Text Field 2";
   * tf2.border = true;
   * tf2.x = tf1.x + tf1.width + 5;
   * addChild(tf2);
   * tf2.width = tf2.stage.stageWidth / 2 - 10;
   *
   * trace(stage.stageWidth);
   * </pre>
   * @return the Stage of the display object.
   */
  public function get stage() : Stage {
    return this._parent ? this._parent.stage : null;
  }

  /**
   * Indicates the DisplayObjectContainer object that contains this display object. Use the parent property to
   * specify a relative path to display objects that are above the current display object in the display list
   * hierarchy.
   * <p>You can use parent to move up multiple levels in the display list as in the following:</p>
   * <pre>
   *   this.parent.parent.alpha = 20;
   * </pre>
   * @throws SecurityError The parent display object belongs to a security sandbox to which you do not have
   *   access. You can avoid this situation by having the parent movie call the Security.allowDomain() method.
   * @example
   * The following code creates three Sprite objects and shows how the parent property reflects the display
   * list hierarchy:
   * <pre>
   * import flash.display.Sprite;
   * 
   * var sprite1:Sprite = new Sprite();
   * sprite1.name = "sprite1";
   * var sprite2:Sprite = new Sprite();
   * sprite2.name = "sprite2";
   * var sprite3:Sprite = new Sprite();
   * sprite3.name = "sprite3";
   * 
   * sprite1.addChild(sprite2);
   * sprite2.addChild(sprite3);
   * 
   * trace(sprite2.parent.name); // sprite1
   * trace(sprite3.parent.name); // sprite2
   * trace(sprite3.parent.parent.name); // sprite1
   * </pre>
   */
  public function get parent():DisplayObjectContainer {
    return _parent;
  }

  // internal
  public function set parent(parent : DisplayObjectContainer) : void {
    _parent = parent;
  }

  private static const DOM_EVENT_TO_MOUSE_EVENT : Object/*<String,String>*/ = {
    'click':     MouseEvent.CLICK,
    'dblclick':  MouseEvent.DOUBLE_CLICK,
    'mousedown': MouseEvent.MOUSE_DOWN,
    'mouseup':   MouseEvent.MOUSE_UP,
    'mousemove': MouseEvent.MOUSE_MOVE
    // TODO: map remaining MouseEvent constants to DOM events!
  };
  private static const DOM_EVENT_TO_KEYBOARD_EVENT : Object/*<String,String>*/ = {
    'keydown': KeyboardEvent.KEY_DOWN,
    'keyup': KeyboardEvent.KEY_UP
  };
  private static const FLASH_EVENT_TO_DOM_EVENT : Object = merge(
    reverseMapping(DOM_EVENT_TO_MOUSE_EVENT),
    reverseMapping(DOM_EVENT_TO_KEYBOARD_EVENT));

  private static function merge(o1:Object, o2:Object):Object {
    var result:Object = {};
    for (var m:String in o1) {
      result[m] = o1[m];
    }
    for (m in o2) {
      result[m] = o2[m];
    }
    return result;
  }

  private static function reverseMapping(mapping:Object):Object {
    var result:Object = {};
    for (var m:String in mapping) {
      result[mapping[m]] = m;
    }
    return result;
  }

  override public function addEventListener(type : String, listener : Function, useCapture : Boolean = false,
                                            priority : int = 0, useWeakReference : Boolean = false) : void {
    var newEventType : Boolean = !this.hasEventListener(type);
    super.addEventListener(type, listener, useCapture, priority, useWeakReference);
    var domEventType : String = FLASH_EVENT_TO_DOM_EVENT[type];
    if (newEventType) {
      if (domEventType) {
        this._elem.addEventListener(domEventType, this.transformAndDispatch, useCapture);
        // TODO: maintain different event listeners for useCapture==true and useCapture==false (if supported by browser)!
      }
    }
  }

  override public function removeEventListener(type : String, listener : Function, useCapture : Boolean = false):void {
    super.removeEventListener(type, listener, useCapture);
    if (!this.hasEventListener(type)) { // did we just remove the last event listener of this type?
      var domEventType : String = FLASH_EVENT_TO_DOM_EVENT[type];
      if (domEventType) {
        // remove the DOM element event listener, too:
        this._elem.removeEventListener(domEventType, this.transformAndDispatch, useCapture);
      }
    }
  }

  private function transformAndDispatch(event : js.Event) : Boolean {
    var flashEvent:flash.events.Event;
    var type : String = DOM_EVENT_TO_MOUSE_EVENT[event.type];
    if (type) {
      flashEvent = new MouseEvent(type, true, true, event.pageX - this.stage.x, event.pageY - this.stage.y, null,
        event.ctrlKey, event.altKey, event.shiftKey, stage.buttonDown);
    } else {
      type = DOM_EVENT_TO_KEYBOARD_EVENT[event.type];
      if (type) {
        flashEvent = new KeyboardEvent(type, true, true, event['charCode'], event.keyCode || event['which'], 0,
          event.ctrlKey, event.altKey, event.shiftKey, event.ctrlKey, event.ctrlKey);
      }
    }
    if (!flashEvent) {
      trace("Unmapped DOM event type " + event.type + " occured, ignoring.");
    }
    return this.dispatchEvent(flashEvent);
  }

  /**
   * Indicates the x coordinate of the DisplayObject instance relative to the local coordinates of the parent
   * DisplayObjectContainer. If the object is inside a DisplayObjectContainer that has transformations, it is in the
   * local coordinate system of the enclosing DisplayObjectContainer. Thus, for a DisplayObjectContainer rotated 90°
   * counterclockwise, the DisplayObjectContainer's children inherit a coordinate system that is rotated 90°
   * counterclockwise. The object's coordinates refer to the registration point position.
   * <p><b>Example</b></p>
   * The following code sets up a circle Sprite object. A Timer object is used to change the x property of the sprite
   * every 50 milliseconds:
   * <pre>
   * import flash.display.Sprite;
   * import flash.utils.Timer;
   * import flash.events.TimerEvent;
   *
   * var circle:Sprite = new Sprite();
   * circle.graphics.beginFill(0xFF0000);
   * circle.graphics.drawCircle(100, 100, 100);
   * addChild(circle);
   *
   * var tim:Timer = new Timer(50);
   * tim.start();
   * tim.addEventListener(TimerEvent.TIMER, bounce);
   *
   * var xInc:Number = 2;
   *
   * function bounce(event:TimerEvent):void {
   *     circle.x += xInc;
   *     if (circle.x > circle.width) {
   *         xInc = -2;
   *     }
   *     if (circle.x &lt; 0) {
   *         xInc = 2;
   *     }
   * }
   * </pre>
   * @return the x coordinate of the DisplayObject instance relative to the local coordinates of the parent
   * DisplayObjectContainer.
   */
  public function get x():Number {
    return this._x;
  }

  /**
   * Updates the x coordinate of the DisplayObject instance relative to the local coordinates of the parent
   * DisplayObjectContainer.
   * @param value the new x coordinate.
   * @see #x()
   */
  public function set x(value:Number) : void {
    this._x = isNaN(value) ? 0 : value;
    if (this._elem) {
      this._elem.style.left = value + "px";
    }
  }

  /**
   * Indicates the y coordinate of the DisplayObject instance relative to the local coordinates of the parent
   * DisplayObjectContainer. If the object is inside a DisplayObjectContainer that has transformations, it is in the
   * local coordinate system of the enclosing DisplayObjectContainer. Thus, for a DisplayObjectContainer rotated 90°
   * counterclockwise, the DisplayObjectContainer's children inherit a coordinate system that is rotated 90°
   * counterclockwise. The object's coordinates refer to the registration point position.
   * <p><b>Example</b></p>
   * The following code creates two TextField objects and adjusts the height property of each based on the textHeight
   * property of each; it also positions the second text field by setting its y property:
   * <pre>
   * import flash.text.TextField;
   * 
   * var tf1:TextField = new TextField();
   * tf1.text = "Text Field 1";
   * tf1.border = true;
   * tf1.wordWrap = true;
   * tf1.width = 40;
   * tf1.height = tf1.textHeight + 5;
   * addChild(tf1);
   * 
   * var tf2:TextField = new TextField();
   * tf2.text = "Text Field 2";
   * tf2.border = true;
   * tf2.wordWrap = true;
   * tf2.width = 40;
   * tf2.height = tf2.textHeight + 5;
   * tf2.y = tf1.y + tf1.height + 5;
   * addChild(tf2);
   * </pre>
   * @return the y coordinate of the DisplayObject instance relative to the local coordinates of the parent
   * DisplayObjectContainer.
   */
  public function get y():Number {
    return this._y;
  }

  /**
   * Updates the x coordinate of the DisplayObject instance relative to the local coordinates of the parent
   * DisplayObjectContainer.
   * @param value the new x coordinate.
   * @see #x()
   */
  public function set y(value:Number) : void {
    this._y = isNaN(value) ? 0 : value;
    if (this._elem) {
      this._elem.style.top = value+"px";
    }
  }

  /**
   * Indicates the width of the display object, in pixels. The width is calculated based on the bounds of the content
   * of the display object. When you set the width property, the scaleX property is adjusted accordingly, as shown in
   * the following code:
   * <pre>
   *   var rect:Shape = new Shape();
   *   rect.graphics.beginFill(0xFF0000);
   *   rect.graphics.drawRect(0, 0, 100, 100);
   *   trace(rect.scaleX) // 1;
   *   rect.width = 200;
   *   trace(rect.scaleX) // 2;
   * </pre>
   * Except for TextField and Video objects, a display object with no content (such as an empty sprite) has a width
   * of 0, even if you try to set width to a different value.
   * <p><b>Example</b></p>
   * <p>The following code sets up a square Sprite object. When the user clicks the sprite, the widen() method
   * increases the width property of the sprite:</p>
   * <pre>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFF0000);
   * square.graphics.drawRect(0, 0, 100, 100);
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, widen);
   *
   * function widen(event:MouseEvent):void {
   *     square.width += 10;
   * }
   * </pre>
   * @return the width of the display object, in pixels.
   */
  public function get width() : Number {
    // TODO: compute real width considering margins and borders!
    return getElement().offsetWidth;
  }

  /**
   * Sets the width of the display object, in pixels.
   * @param value the new width of the display object, in pixels.
   * @see #width
   */
  public function set width(value : Number) : void {
    getElement().style.width = isNaN(value) ? "auto" : (value + "px");
  }

  /**
   * Indicates the height of the display object, in pixels. The height is calculated based on the bounds of the content
   * of the display object. When you set the height property, the scaleY property is adjusted accordingly, as shown in
   * the following code:
<pre>
    var rect:Shape = new Shape();
    rect.graphics.beginFill(0xFF0000);
    rect.graphics.drawRect(0, 0, 100, 100);
    trace(rect.scaleY) // 1;
    rect.height = 200;
    trace(rect.scaleY) // 2;
</pre>
   * Except for TextField and Video objects, a display object with no content (such as an empty sprite) has a height
   * of 0, even if you try to set height to a different value.
   * <p><b>Example</b></p>
   * The following code creates two TextField objects and adjusts the height property of each based on the textHeight
   * property of each; it also positions the second text field by setting its y property:
<pre>
import flash.text.TextField;

var tf1:TextField = new TextField();
tf1.text = "Text Field 1";
tf1.border = true;
tf1.wordWrap = true;
tf1.width = 40;
tf1.height = tf1.textHeight + 5;
addChild(tf1);

var tf2:TextField = new TextField();
tf2.text = "Text Field 2";
tf2.border = true;
tf2.wordWrap = true;
tf2.width = 40;
tf2.height = tf2.textHeight + 5;
tf2.y = tf1.y + tf1.height + 5;
addChild(tf2);
</pre>
   */
  public function get height() : Number {
    // TODO: compute real height considering margins and borders!
    return getElement().offsetHeight;
  }

  /**
   * Sets the height of the display object, in pixels.
   * @param value the new height of the display object, in pixels.
   * @see #height
   */
  public function set height(value : Number) : void {
    getElement().style.height = isNaN(value) ? "auto" : (value + "px");
  }

  protected function createElement() : Element {
    var elem : Element = window.document.createElement(getElementName());
    elem.style.position = "absolute";
    elem.style.width = "100%";
    elem.style['MozUserSelect'] = 'none';
    elem.style['KhtmlUserSelect'] = 'none';
    elem['unselectable'] = 'on';
    elem['onselectstart'] = function():Boolean {return false;};
    return elem;
  }

  protected function getElementName() : String {
    return "div";
  }

  public function getElement() : Element {
    if (!_elem) {
      _elem = this.createElement();
    }
    return _elem;
  }

  /**
   * An object with properties pertaining to a display object's matrix, color transform, and pixel bounds. The
   * specific properties � matrix, colorTransform, and three read-only properties (concatenatedMatrix,
   * concatenatedColorTransform, and pixelBounds) � are described in the entry for the Transform class.
   * <p>Each of the transform object's properties is itself an object. This concept is important because the
   * only way to set new values for the matrix or colorTransform objects is to create a new object and copy that
   * object into the transform.matrix or transform.colorTransform property.</p>
   * <p>For example, to increase the tx value of a display object's matrix, you must make a copy of the entire
   * matrix object, then copy the new object into the matrix property of the transform object:</p>
   * <pre>
   *   var myMatrix:Object = myDisplayObject.transform.matrix;  
   *   myMatrix.tx += 10; 
   *   myDisplayObject.transform.matrix = myMatrix;  
   * </pre>
   * You cannot directly set the tx property. The following code has no effect on myDisplayObject:
   * <pre>
   *   myDisplayObject.transform.matrix.tx += 10;
   * </pre>
   * You can also copy an entire transform object and assign it to another display object's transform property.
   * For example, the following code copies the entire transform object from myOldDisplayObj to myNewDisplayObj:
   * <pre>
   *   myNewDisplayObj.transform = myOldDisplayObj.transform;
   * </pre>
   * The resulting display object, myNewDisplayObj, now has the same values for its matrix, color transform,
   * and pixel bounds as the old display object, myOldDisplayObj.
   * @example
   * The following code sets up a square Sprite object. When the user clicks the sprite, the transformer()
   * method adjusts the colorTransform and matrix properties of the transform property of the sprite:
   * <pre>
   * import flash.display.Sprite;
   * import flash.geom.ColorTransform;
   * import flash.geom.Matrix;
   * import flash.geom.Transform;
   * import flash.events.MouseEvent;
   * 
   * var square:Sprite = new Sprite();
   * square.graphics.lineStyle(20, 0xFF2200);
   * square.graphics.beginFill(0x0000DD);
   * square.graphics.drawRect(0, 0, 100, 100);
   * addChild(square);
   * 
   * var resultColorTransform:ColorTransform = new ColorTransform();
   * resultColorTransform.alphaMultiplier = 0.5;
   * resultColorTransform.redOffset = 155;
   * resultColorTransform.greenMultiplier = 0.5;
   * 
   * var skewMatrix:Matrix = new Matrix(1, 1, 0, 1);
   * 
   * square.addEventListener(MouseEvent.CLICK, transformer);
   * 
   * function transformer(event:MouseEvent):void {
   *     var transformation:Transform = square.transform;
   *     var tempMatrix:Matrix = square.transform.matrix;
   *     tempMatrix.concat(skewMatrix);
   *     square.transform.colorTransform = resultColorTransform;
   *     
   *     square.transform.matrix = tempMatrix;
   * }
   * </pre>
   * @see flash.geom.Transform
   */
  public function get transform():Transform {
    if (!_transform)
      _transform = new Transform(this);
    return _transform;
  }

  public function set transform(value:Transform) : void {
    _transform = value;
  }

  /**
   * Indicates the rotation of the DisplayObject instance, in degrees, from its original orientation. Values from 0 to 180 represent
   * clockwise rotation; values from 0 to -180 represent counterclockwise rotation. Values outside this range are added to or
   * subtracted from 360 to obtain a value within the range. For example, the statement <code>my_video.rotation = 450</code> is the
   * same as <code> my_video.rotation = 90</code>.
   *
   * @example
   * The following code creates a Sprite object and rotates the object when the user clicks it:
   *
   * <pre>
   * import flash.display.Sprite;
   * import flash.events.MouseEvent;
   *
   * var square:Sprite = new Sprite();
   * square.graphics.beginFill(0xFFCC00);
   * square.graphics.drawRect(-50, -50, 100, 100);
   * square.x = 150;
   * square.y = 150;
   * addChild(square);
   *
   * square.addEventListener(MouseEvent.CLICK, rotate);
   *
   * function rotate(event:MouseEvent):void {
   *         square.rotation += 15;
   * }
   * </pre>
  */
  public var rotation:Number;

  private var _parent : DisplayObjectContainer;
  private var _elem : Element;
  private var _x : Number = 0, _y : Number = 0;
  private var _transform : Transform;
  private var _name : String;
}
}