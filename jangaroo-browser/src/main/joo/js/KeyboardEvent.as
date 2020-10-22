package js {

/**
 * An event created using document.createEvent("KeyboardEvent").
 */
[Native("KeyboardEvent")]
public class KeyboardEvent extends UIEvent {

  static const DOM_KEY_LOCATION_STANDARD : uint = 0x00;
  static const DOM_KEY_LOCATION_LEFT : uint = 0x01;
  static const DOM_KEY_LOCATION_RIGHT : uint = 0x02;
  static const DOM_KEY_LOCATION_NUMPAD : uint = 0x03;
  
  public function KeyboardEvent() {
  }

  public native function get shiftKey() : Boolean;

  public native function get ctrlKey() : Boolean;

  public native function get altKey() : Boolean;

  public native function get metaKey() : Boolean;

  public native function getModifierState(keyArg:String):Boolean;

  public native function get key() : String;

  public native function get code() : String;

  public native function get location() : uint;

  public native function get keyCode() : Number;

  public native function get charCode() : Number;

}
}
