package flash.events
{
import flash.display.DisplayObject;
import flash.display.InteractiveObject;
  import flash.events.Event;

  /// Flash&#xAE; Player dispatches MouseEvent objects into the event flow whenever mouse events occur.
  public class MouseEvent extends Event {

    /// Defines the value of the type property of a click event object.
    public static const CLICK : String = "click";
    /// Defines the value of the type property of a doubleClick event object.
    public static const DOUBLE_CLICK : String = "doubleClick";
    /// Defines the value of the type property of a mouseDown event object.
    public static const MOUSE_DOWN : String = "mouseDown";
    /// Defines the value of the type property of a mouseMove event object.
    public static const MOUSE_MOVE : String = "mouseMove";
    /// Defines the value of the type property of a mouseOut event object.
    public static const MOUSE_OUT : String = "mouseOut";
    /// Defines the value of the type property of a mouseOver event object.
    public static const MOUSE_OVER : String = "mouseOver";
    /// Defines the value of the type property of a mouseUp event object.
    public static const MOUSE_UP : String = "mouseUp";
    /// Defines the value of the type property of a mouseWheel event object.
    public static const MOUSE_WHEEL : String = "mouseWheel";
    /// Defines the value of the type property of a rollOut event object.
    public static const ROLL_OUT : String = "rollOut";
    /// Defines the value of the type property of a rollOver event object.
    public static const ROLL_OVER : String = "rollOver";

    /// Indicates whether the Alt key is active (true) or inactive (false).
    public var altKey : Boolean;

    /// Indicates whether the primary mouse button is pressed (true) or not (false).
    public var buttonDown : Boolean;

    /// Indicates whether the Control key is active (true) or inactive (false).
    public var ctrlKey : Boolean;

    /// Indicates how many lines should be scrolled for each unit the user rotates the mouse wheel.
    public var delta : int;

    /// The horizontal coordinate at which the event occurred relative to the containing sprite.
    public var localX : Number;

    /// The vertical coordinate at which the event occurred relative to the containing sprite.
    public var localY : Number;

    /// A reference to a display list object that is related to the event.
    public var relatedObject : InteractiveObject;

    /// Indicates whether the Shift key is active (true) or inactive (false).
    public var shiftKey : Boolean;

    /// The horizontal coordinate at which the event occurred in global Stage coordinates.
    public function get stageX() : Number {
      return (this.target as DisplayObject).x + this.localX
    }

    /// The vertical coordinate at which the event occurred in global Stage coordinates.
    public function get stageY() : Number {
      return (this.target as DisplayObject).y + this.localY;
    }

    /// Creates a copy of the MouseEvent object and sets the value of each property to match that of the original.
    public override function clone() : Event {
      return new MouseEvent(type, bubbles, cancelable, localX, localY, relatedObject, ctrlKey, altKey, shiftKey, buttonDown, delta);
    }

    /// Constructor for MouseEvent objects.
    public function MouseEvent(type:String = null, bubbles:Boolean = true, cancelable:Boolean = false,
                               localX:Number = NaN, localY:Number = NaN, relatedObject:InteractiveObject = null,
                               ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false,
                               buttonDown:Boolean = false, delta:int = 0) {
      super(type, bubbles, cancelable);
      this.localX = localX;
      this.localY = localY;
      this.relatedObject = relatedObject;
      this.ctrlKey = ctrlKey;
      this.altKey = altKey;
      this.shiftKey = shiftKey;
      this.buttonDown = buttonDown;
      this.delta = delta;
    }

    /// Returns a string that contains all the properties of the MouseEvent object.
    public override function toString () : String {
      return formatToString("Event", "type", "bubbles", "cancelable", "eventPhase",
              "localX", "localY", "relatedObject", "ctrlKey", "altKey", "shiftKey", "buttonDown", "delta");
    }

    /// Instructs Flash Player to render after processing of this event completes, if the display list has been modified.
    public function updateAfterEvent () : void {
      // TODO
    }
  }
}
