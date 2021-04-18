package js{

[Native("Event")]
public class Event {

  public function Event(typeArg:String, eventInit: Object = null) {}

  public native function get type() : String;

  public native function preventDefault() : void;

  public native function stopPropagation() : void;

  public native function get target() : Element;

}
}
