package flash.events {
public class Event extends Object
{

  public function Event(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
    this.type = type;
    this.bubbles = bubbles;
    this.cancelable = cancelable;
  }

  public var type : String;

  public var bubbles : Boolean;

  public var cancelable : Boolean;

  public var eventPhase : uint;

  public var target : Object;

  public var currentTarget : Object;

  public function preventDefault() : void {
    if (cancelable) {
      defaultPrevented = true;
    }
  }

  public function isDefaultPrevented() : Boolean {
    return defaultPrevented;
  }

  public function formatToString(className : String, ... rest) : String {
    var sb : Array = ["[", className, " "];
    for (var i :uint = 0; i < rest.length; ++i) {
      sb.push(rest[i],"=",this[rest[i]]," ");
    }
    sb.push("]");
    return sb.join("");
  }

  public function toString():String {
    return formatToString("Event", "type", "bubbles", "cancelable", "eventPhase");
  }

  public function stopPropagation() : void {
    propagationStopped = true;
  }

  public function isPropagationStopped() : Boolean {
    return propagationStopped;
  }

  public function stopImmediatePropagation() : void {
    immediatePropagationStopped = true;
  }

  public function isImmediatePropagationStopped() : Boolean {
    return immediatePropagationStopped;
  }

  public function clone() : Event {
    return new Event(type, bubbles, cancelable);
  }

  static public const ENTER_FRAME:String = "enterFrame";

  static public const ID3:String = "id3";
  static public const SOUND_COMPLETE:String = "soundComplete";
  static public const INIT:String = "init";
  static public const RENDER:String = "render";
  static public const TAB_ENABLED_CHANGE:String = "tabEnabledChange";

  static public const ADDED_TO_STAGE:String = "addedToStage";
  static public const TAB_CHILDREN_CHANGE:String = "tabChildrenChange";
  static public const RESIZE:String = "resize";
  static public const CHANGE:String = "change";
  static public const COMPLETE:String = "complete";

  static public const FULLSCREEN:String = "fullScreen";
  static public const REMOVED:String = "removed";
  static public const CONNECT:String = "connect";
  static public const SCROLL:String = "scroll";
  static public const OPEN:String = "open";

  static public const CLOSE:String = "close";
  static public const MOUSE_LEAVE:String = "mouseLeave";
  static public const ADDED:String = "added";
  static public const TAB_INDEX_CHANGE:String = "tabIndexChange";
  static public const REMOVED_FROM_STAGE:String = "removedFromStage";

  static public const ACTIVATE:String = "activate";
  static public const DEACTIVATE:String = "deactivate";
  static public const CANCEL:String = "cancel";
  static public const SELECT:String = "select";
  static public const UNLOAD:String = "unload";

  private var defaultPrevented : Boolean = false;
  private var propagationStopped:Boolean;
  private var immediatePropagationStopped:Boolean;
}
}