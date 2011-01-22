package flash.display
{
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.CLICK
 */
[Event(name="click", type="flash.events.MouseEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.DOUBLE_CLICK
 */
[Event(name="doubleClick", type="flash.events.MouseEvent")]
/**
 * property FocusEvent.type =
 * @eventType flash.events.FocusEvent.FOCUS_IN
 */
[Event(name="focusIn", type="flash.events.FocusEvent")]
/**
 * property FocusEvent.type =
 * @eventType flash.events.FocusEvent.FOCUS_OUT
 */
[Event(name="focusOut", type="flash.events.FocusEvent")]
/**
 * property KeyboardEvent.type =
 * @eventType flash.events.KeyboardEvent.KEY_DOWN
 */
[Event(name="keyDown", type="flash.events.KeyboardEvent")]
/**
 * property FocusEvent.type =
 * @eventType flash.events.FocusEvent.KEY_FOCUS_CHANGE
 */
[Event(name="keyFocusChange", type="flash.events.FocusEvent")]
/**
 * property KeyboardEvent.type =
 * @eventType flash.events.KeyboardEvent.KEY_UP
 */
[Event(name="keyUp", type="flash.events.KeyboardEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.MOUSE_DOWN
 */
[Event(name="mouseDown", type="flash.events.MouseEvent")]
/**
 * property FocusEvent.type =
 * @eventType flash.events.FocusEvent.MOUSE_FOCUS_CHANGE
 */
[Event(name="mouseFocusChange", type="flash.events.FocusEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.MOUSE_MOVE
 */
[Event(name="mouseMove", type="flash.events.MouseEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.MOUSE_OUT
 */
[Event(name="mouseOut", type="flash.events.MouseEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.MOUSE_OVER
 */
[Event(name="mouseOver", type="flash.events.MouseEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.MOUSE_UP
 */
[Event(name="mouseUp", type="flash.events.MouseEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.MOUSE_WHEEL
 */
[Event(name="mouseWheel", type="flash.events.MouseEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.ROLL_OUT
 */
[Event(name="rollOut", type="flash.events.MouseEvent")]
/**
 * property MouseEvent.type =
 * @eventType flash.events.MouseEvent.ROLL_OVER
 */
[Event(name="rollOver", type="flash.events.MouseEvent")]
/**
 * Dispatched when the value of the object's <code>tabChildren</code> flag changes.
 * @eventType flash.events.Event.TAB_CHILDREN_CHANGE
 */
[Event(name="tabChildrenChange", type="flash.events.Event")]
/**
 * Dispatched when the object's <code>tabEnabled</code> flag changes.
 * @eventType flash.events.Event.TAB_ENABLED_CHANGE
 */
[Event(name="tabEnabledChange", type="flash.events.Event")]
/**
 * Dispatched when the value of the object's <code>tabIndex</code> property changes.
 * @eventType flash.events.Event.TAB_INDEX_CHANGE
 */
[Event(name="tabIndexChange", type="flash.events.Event")]
/**
 * property TextEvent.type =
 * @eventType flash.events.TextEvent.TEXT_INPUT
 */
[Event(name="textInput", type="flash.events.TextEvent")]

/**
 * The InteractiveObject class is the abstract base class for all display objects with which the user can interact, using the mouse, keyboard, or other user input device.
 * <p>You cannot instantiate the InteractiveObject class directly. A call to the <code>new InteractiveObject()</code> constructor throws an <code>ArgumentError</code> exception.</p>
 * <p>The InteractiveObject class itself does not include any APIs for rendering content onscreen. To create a custom subclass of the InteractiveObject class, extend one of the subclasses that do have APIs for rendering content onscreen, such as the Sprite, SimpleButton, TextField, or MovieClip classes.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/display/InteractiveObject.html#includeExamplesSummary">View the examples</a></p>
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e3c.html Core display classes
 *
 */
public class InteractiveObject extends DisplayObject {

  /**
   * Specifies whether the object receives <code>doubleClick</code> events. The default value is <code>false</code>, which means that by default an InteractiveObject instance does not receive <code>doubleClick</code> events. If the <code>doubleClickEnabled</code> property is set to <code>true</code>, the instance receives <code>doubleClick</code> events within its bounds. The <code>mouseEnabled</code> property of the InteractiveObject instance must also be set to <code>true</code> for the object to receive <code>doubleClick</code> events.
   * <p>No event is dispatched by setting this property. You must use the <code>addEventListener()</code> method to add an event listener for the <code>doubleClick</code> event.</p>
   * @see #event:doubleClick
   * @see #mouseEnabled
   * @see DisplayObjectContainer#mouseChildren
   *
   */
  public function get doubleClickEnabled():Boolean {
    return _doubleClickEnabled;
  }

  /**
   * @private
   */
  public function set doubleClickEnabled(value:Boolean):void {
    _doubleClickEnabled = value;
  }

  /**
   * Specifies whether this object displays a focus rectangle. It can take one of three values: <code>true</code>, <code>false</code>, or <code>null</code>. Values of <code>true</code> and <code>false</code> work as expected, specifying whether or not the focus rectangle appears. A value of <code>null</code> indicates that this object obeys the <code>stageFocusRect</code> property of the Stage.
   */
  public function get focusRect():Object {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set focusRect(value:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether this object receives mouse, or other user input, messages. The default value is <code>true</code>, which means that by default any InteractiveObject instance that is on the display list receives mouse events or other user input events. If <code>mouseEnabled</code> is set to <code>false</code>, the instance does not receive any mouse events (or other user input events like keybaord events). Any children of this instance on the display list are not affected. To change the <code>mouseEnabled</code> behavior for all children of an object on the display list, use <code>flash.display.DisplayObjectContainer.mouseChildren</code>.
   * <p>No event is dispatched by setting this property. You must use the <code>addEventListener()</code> method to create interactive functionality.</p>
   * @see DisplayObjectContainer#mouseChildren
   *
   */
  public function get mouseEnabled():Boolean {
    return _mouseEnabled;
  }

  /**
   * @private
   */
  public function set mouseEnabled(value:Boolean):void {
    _mouseEnabled = value; // TODO: implement!
  }

  /**
   * Specifies whether this object is in the tab order. If this object is in the tab order, the value is <code>true</code>; otherwise, the value is <code>false</code>. By default, the value is <code>false</code>, except for the following:
   * <ul>
   * <li>For a SimpleButton object, the value is <code>true</code>.</li>
   * <li>For a TextField object with <code>type = "input"</code>, the value is <code>true</code>.</li>
   * <li>For a Sprite object or MovieClip object with <code>buttonMode = true</code>, the value is <code>true</code>.</li></ul>
   */
  public function get tabEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set tabEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the tab ordering of objects in a SWF file. The <code>tabIndex</code> property is -1 by default, meaning no tab index is set for the object.
   * <p>If any currently displayed object in the SWF file contains a <code>tabIndex</code> property, automatic tab ordering is disabled, and the tab ordering is calculated from the <code>tabIndex</code> properties of objects in the SWF file. The custom tab ordering includes only objects that have <code>tabIndex</code> properties.</p>
   * <p>The <code>tabIndex</code> property can be a non-negative integer. The objects are ordered according to their <code>tabIndex</code> properties, in ascending order. An object with a <code>tabIndex</code> value of 1 precedes an object with a <code>tabIndex</code> value of 2. Do not use the same <code>tabIndex</code> value for multiple objects.</p>
   * <p>The custom tab ordering that the <code>tabIndex</code> property defines is <i>flat</i>. This means that no attention is paid to the hierarchical relationships of objects in the SWF file. All objects in the SWF file with <code>tabIndex</code> properties are placed in the tab order, and the tab order is determined by the order of the <code>tabIndex</code> values.</p>
   * <p><b>Note:</b> To set the tab order for TLFTextField instances, cast the display object child of the TLFTextField as an InteractiveObject, then set the <code>tabIndex</code> property. For example:</p>
   * <pre>     InteractiveObject(tlfInstance.getChildAt(1)).tabIndex = 3;
   </pre>To reverse the tab order from the default setting for three instances of a TLFTextField object (<code>tlfInstance1</code>, <code>tlfInstance2</code> and <code>tlfInstance3</code>), use:
   * <pre>     InteractiveObject(tlfInstance1.getChildAt(1)).tabIndex = 3;
   InteractiveObject(tlfInstance2.getChildAt(1)).tabIndex = 2;
   InteractiveObject(tlfInstance3.getChildAt(1)).tabIndex = 1;
   </pre>
   */
  public function get tabIndex():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set tabIndex(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Calling the <code>new InteractiveObject()</code> constructor throws an <code>ArgumentError</code> exception. You can, however, call constructors for the following subclasses of InteractiveObject:
   * <ul>
   * <li><code>new SimpleButton()</code></li>
   * <li><code>new TextField()</code></li>
   * <li><code>new Loader()</code></li>
   * <li><code>new Sprite()</code></li>
   * <li><code>new MovieClip()</code></li></ul>
   */
  public function InteractiveObject() {
    // TODO: implement!
  }

  // ************************** Jangaroo part **************************

  private var _doubleClickEnabled : Boolean;
  private var _mouseEnabled : Boolean;


}
}
