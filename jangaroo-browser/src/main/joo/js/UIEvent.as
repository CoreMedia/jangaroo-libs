package js {

/**
 * Simple user interface events.
 */
[Native("UIEvent")]
public class UIEvent extends Event {
  public native function get detail(): uint;
  public native function get view(): Window;
  /** @deprecated */
  public native function get which(): uint;
}
}
