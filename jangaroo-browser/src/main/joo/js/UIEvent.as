package js {

/**
 * Simple user interface events.
 */
[Native("UIEvent")]
public class UIEvent extends Event {
  public native function get detail(): Number;
  public native function get view(): Window;
  /** @deprecated */
  public native function get which(): Number;
}
}
