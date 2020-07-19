package js {

/**
 * Events that occur due to the user interacting with a pointing device (such as a mouse). Common events using this
 * interface include click, dblclick, mouseup, mousedown.
 */
[Native("MouseEvent")]
public class MouseEvent extends UIEvent {
  public native function get button(): Number;
  public native function get buttons(): Number;
  public native function get movementX(): Number;
  public native function get movementY(): Number;
  public native function get offsetX(): Number;
  public native function get offsetY(): Number;
  public native function get x(): Number;
  public native function get y(): Number;
  public native function getModifierState(keyArg: String): Boolean;
  /*
  These functions are already defined in js.Event, but shouldn't be there probably: (see lib.dom.d.ts)

  public native function get altKey(): Boolean;
  public native function get clientX(): Number;
  public native function get clientY(): Number;
  public native function get ctrlKey(): Boolean;
  public native function get metaKey(): Boolean;
  public native function get pageX(): Number;
  public native function get pageY(): Number;
  public native function get relatedTarget: EventTarget;
  public native function get screenX(): Number;
  public native function get screenY(): Number;
  public native function get shiftKey(): Boolean;
  public native function initMouseEvent(typeArg: String, canBubbleArg: Boolean, cancelableArg: Boolean, viewArg: Window, detailArg: Number, screenXArg: Number, screenYArg: Number, clientXArg: Number, clientYArg: Number, ctrlKeyArg: Boolean, altKeyArg: Boolean, shiftKeyArg: Boolean, metaKeyArg: Boolean, buttonArg: Number, relatedTargetArg: EventTarget): void;
   */
}
}
