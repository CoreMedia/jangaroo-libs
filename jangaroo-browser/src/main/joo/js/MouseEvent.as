package js {

[Native("MouseEvent")]
public class MouseEvent extends Event {
  public native function get shiftKey() : Boolean;

  public native function get ctrlKey() : Boolean;

  public native function get altKey() : Boolean;

  public native function initMouseEvent(eventType : String, param2 : Boolean, param3 : Boolean, view:*, detail:*,
                                        screenX : int, screenY : int, clientX : int, clientY : int,
                                        ctrlKey : Boolean, altKey : Boolean, shiftKey : Boolean, metaKey : Boolean,
                                        param14 : *, param15 : *) : void;
}
}
