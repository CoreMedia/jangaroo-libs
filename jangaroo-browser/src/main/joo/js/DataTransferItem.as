package js {

/**
 * One drag data item. During a drag operation, each drag event has a dataTransfer property which contains a list of
 * drag data items. Each item in the list is a DataTransferItem object.
 */
[Native("DataTransferItem")]
public class DataTransferItem {
  /**
   * Returns the drag data item kind, one of: "string", "file".
   */
  public native function get kind(): String;

  //noinspection ReservedWordAsName
  /**
   * Returns the drag data item type string.
   */
  public native function get type(): String;

  /**
   * Returns a File object, if the drag data item kind is File.
   */
  public native function getAsFile(): File;

  /**
   * Invokes the callback with the string data as the argument, if the drag data item kind is text.
   */
  public native function getAsString(callback: Function): void;
}
}
