package ext.event {
import ext.Button;
import ext.IEventObject;

/**
 * Fires when a button is clicked.
 */
public class ButtonClickEvent {

  public function ButtonClickEvent(args:Array) {
    this['source'] = args[0];
    this['event']  = args[1];
  }

  /**
   *  The button that has been clicked.
   */
  public native function get source():Button;

  /**
   * The underlying click event.
   */
  public native function get event():IEventObject;
}
}