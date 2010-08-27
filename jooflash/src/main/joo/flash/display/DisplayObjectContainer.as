package flash.display {

/**
 * The DisplayObjectContainer class is the base class for all objects that can serve as display object containers on
 * the display list. The display list manages all objects displayed in Flash Player. Use the DisplayObjectContainer
 * class to arrange the display objects in the display list. Each DisplayObjectContainer object has its own child list
 * for organizing the z-order of the objects. The z-order is the front-to-back order that determines which object is
 * drawn in front, which is behind, and so on.
 * <p>The DisplayObjectContainer class is an abstract base class for all objects that can contain child objects.
 * It cannot be instantiated directly; calling the new DisplayObjectContainer() constructor throws an ArgumentError
 * exception.
 * <p>For more information, see the "Display Programming" chapter of the Programming ActionScript 3.0 book.
 * @see flash.display.DisplayObject
 */
public class DisplayObjectContainer extends InteractiveObject {

  /**
   * Calling the new DisplayObjectContainer() constructor throws an ArgumentError exception. You can, however, call
   * constructors for the following subclasses of DisplayObjectContainer:
   * <ul>
   *   <li>new Loader()
   *   <li>new Sprite()
   *   <li>new MovieClip()
   * </ul>
   */
  public function DisplayObjectContainer() {
    this.children = [];
    super();
  }

  /**
   * Returns the number of children of this object.
   * <p><b>Example</b></p>
   * <p>The following example sets up two Sprite objects named container1 and container2. A Sprite is a type of display
   * object container. The example calls the addChild() method to set up the display hierarchy: container1 is a child
   * of container2, and two other display objects, circle1 and circle2, are children of container1. The calls to the
   * trace() method show the number of children of each object. Note that grandchildren are not included in the
   * numChildren count:
   * <pre>
import flash.display.Sprite;

var container1:Sprite = new Sprite();
var container2:Sprite = new Sprite();

var circle1:Sprite = new Sprite();
circle1.graphics.beginFill(0xFFCC00);
circle1.graphics.drawCircle(40, 40, 40);

var circle2:Sprite = new Sprite();
circle2.graphics.beginFill(0x00CCFF);
circle2.graphics.drawCircle(80, 40, 40);

container2.addChild(container1);
container1.addChild(circle1);
container1.addChild(circle2);

trace(container1.numChildren); // 2
trace(container2.numChildren); // 1
trace(circle1.numChildren); // 0
trace(circle2.numChildren); // 0
</pre>
   * @return the number of children of this object.
   */
  public function get numChildren() : int {
    return this.children.length;
  }

  /**
   * Adds a child DisplayObject instance to this DisplayObjectContainer instance. The child is added to the front (top)
   * of all other children in this DisplayObjectContainer instance. (To add a child to a specific index position, use
   * the addChildAt() method.)
   * <p>If you add a child object that already has a different display object container as a parent, the object is
   * removed from the child list of the other display object container.
   * @event added {Event} Dispatched when a display object is added to the display list.
   * @throws ArgumentError if the child is the same as the parent. Also throws if the caller is a child
   *   (or grandchild etc.) of the child being added.
   * <p><b>Example</b></p>
   * <p>The following example sets up two Sprite objects named container1 and container2. A Sprite is a type of display
   * object container. The example calls the addChild() method to set up the display hierarchy: container1 is a child
   * of container2, and two other display objects, circle1 and circle2, are children of container1. The calls to the
   * trace() method show the number of children of each object. Note that grandchildren are not included in the
   * numChildren count:
   * <pre>
import flash.display.Sprite;

var container1:Sprite = new Sprite();
var container2:Sprite = new Sprite();

var circle1:Sprite = new Sprite();
circle1.graphics.beginFill(0xFFCC00);
circle1.graphics.drawCircle(40, 40, 40);

var circle2:Sprite = new Sprite();
circle2.graphics.beginFill(0x00CCFF);
circle2.graphics.drawCircle(80, 40, 40);

container2.addChild(container1);
container1.addChild(circle1);
container1.addChild(circle2);

trace(container1.numChildren); // 2
trace(container2.numChildren); // 1
trace(circle1.numChildren); // 0
trace(circle2.numChildren); // 0
</pre>
   * @param child The DisplayObject instance to add as a child of this DisplayObjectContainer instance.
   * @return The DisplayObject instance that you pass in the child parameter.
   * @see #addChildAt()
   */
  public function addChild(child : DisplayObject) : DisplayObject {
    return this.addChildAt(child, this.children.length);
  }

  /**
   * Adds a child DisplayObject instance to this DisplayObjectContainer instance. The child is added at the index
   * position specified. An index of 0 represents the back (bottom) of the display list for this DisplayObjectContainer
   * object.
   * <p>For example, the following example shows three display objects, labeled a, b, and c, at index positions 0, 2,
   * and 1, respectively.
   * <p>If you add a child object that already has a different display object container as a parent, the object is
   * removed from the child list of the other display object container.
   * @event added {Event} Dispatched when a display object is added to the display list.
   * @throws RangeError if the index position does not exist in the child list.
   * @throws ArgumentError if the child is the same as the parent. Also throws if the caller is a child (or
   *   grandchild etc.) of the child being added.
   * <p><b>Example</b></p>
   * The following example creates a container display object container and adds a display objects circle1 to its
   * display list. Then, by calling container.addChildAt(circle2, 0), it adds the circle2 object to index position zero
   * (the back), and moves the circle1 object to index position 1:
   * <pre>
import flash.display.Sprite;

var container:Sprite = new Sprite();

var circle1:Sprite = new Sprite();
var circle2:Sprite = new Sprite();

container.addChild(circle1);
container.addChildAt(circle2, 0);

trace(container.getChildAt(0) == circle2); // true
trace(container.getChildAt(1) == circle1); // true
</pre>
   * @param child The DisplayObject instance to add as a child of this DisplayObjectContainer instance.
   * @param index The index position to which the child is added. If you specify a currently occupied index position,
   *   the child object that exists at that position and all higher positions are moved up one position in the child
   *   list.
   * @return The DisplayObject instance that you pass in the child parameter.
   * @see #addChild()
   */
  public function addChildAt(child : DisplayObject, index : int) : DisplayObject {
    var refChild : DisplayObject = this.children[index] as DisplayObject;
    this.children.splice(index, 0, child);
    child.parent = this;
    if (refChild) {
      this.getElement().insertBefore(child.getElement(), refChild.getElement());
    } else {
      this.getElement().appendChild(child.getElement());
    }
    return child;
  }

  /**
   * Returns the child display object instance that exists at the specified index.
   * @throws RangeError if the index does not exist in the child list.
   * @throws SecurityError This child display object belongs to a sandbox to which you do not have access.
   *   You can avoid this situation by having the child movie call Security.allowDomain().
   * <p><b>Example</b></p>
   * <p>The following example creates a display object container named container and then adds a three display objects
   * to the child list of the container object. The calls to the getChildAt() method then reveal the positions of the
   * child objects:
   * <pre>
import flash.display.Sprite;

var container:Sprite = new Sprite();

var sprite1:Sprite = new Sprite();
var sprite2:Sprite = new Sprite();
var sprite3:Sprite = new Sprite();

container.addChild(sprite1);
container.addChild(sprite2);
container.addChildAt(sprite3, 0);

trace(container.getChildAt(0) == sprite3); // true
trace(container.getChildAt(1) == sprite1); // true
trace(container.getChildAt(2) == sprite2); // true
</pre>
   * @param index The index position of the child object.
   * @return The child display object at the specified index position.
   * @see #getChildByName()
   */
  public function getChildAt(index : int) : DisplayObject {
    return this.children[index] as DisplayObject;
  }

  override protected function updateSize():void {
    super.updateSize();
    children.forEach(function(child:DisplayObject):void {
      child.updateSize();
    });
  }

  private var children : Array/*<DisplayObject>*/;
}
}