package js{

[Native("Event")]
public class Event {
  public native function get type() : String;

  public native function preventDefault() : void;

  public native function stopPropagation() : void;

  public native function get target() : Element;

}
}
