package js {

/**
 * Events that occur due to the user interacting with a pointing device (such as a mouse). Common events using this
 * interface include click, dblclick, mouseup, mousedown.
 */
[Native("MouseEvent")]
public class MouseEvent extends UIEvent {
  public native function get button(): uint;
  public native function get buttons(): uint;
  public native function get movementX(): Number;
  public native function get movementY(): Number;
  public native function get offsetX(): Number;
  public native function get offsetY(): Number;
  public native function get x(): Number;
  public native function get y(): Number;
  public native function getModifierState(keyArg: String): Boolean;
  public native function get shiftKey() : Boolean;

  public native function get ctrlKey() : Boolean;

  public native function get altKey() : Boolean;

  public native function initMouseEvent(eventType : String, param2 : Boolean, param3 : Boolean, view:*, detail:*,
                                        screenX : int, screenY : int, clientX : int, clientY : int,
                                        ctrlKey : Boolean, altKey : Boolean, shiftKey : Boolean, metaKey : Boolean,
                                        param14 : *, param15 : *) : void;
  /*
  These functions are already defined in js.Event, but shouldn't be there probably: (see lib.dom.d.ts)

  public native function get clientX(): Number;
  public native function get clientY(): Number;
  public native function get metaKey(): Boolean;
  public native function get pageX(): Number;
  public native function get pageY(): Number;
  public native function get relatedTarget: EventTarget;
  public native function get screenX(): Number;
  public native function get screenY(): Number;
   */
}
}
