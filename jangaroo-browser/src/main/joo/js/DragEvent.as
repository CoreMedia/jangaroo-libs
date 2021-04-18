package js {

/**
 * A DOM event that represents a drag and drop interaction. The user initiates a drag by placing a pointer device
 * (such as a mouse) on the touch surface and then dragging the pointer to a new location (such as another DOM element).
 * Applications are free to interpret a drag and drop interaction in an application-specific way.
 */
[Native("DragEvent")]
public class DragEvent extends MouseEvent {
  public function DragEvent(typeArg:String, eventInit:Object = null) {
    super(typeArg, eventInit);
  }
  /**
   * Returns the DataTransfer object for the event.
   */
  public native function get dataTransfer(): DataTransfer;
}
}
