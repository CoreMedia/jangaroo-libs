package js {

/**
 * A list of DataTransferItem objects representing items being dragged. During a drag operation, each DragEvent has a
 * dataTransfer property and that property is a DataTransferItemList.
 */
[Native("DataTransferItemList")]
public class DataTransferItemList {
  /**
   * Returns the number of items in the drag data store.
   */
  public native function get length(): uint;

  //noinspection ReservedWordAsName
  /**
   * Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be
   * provided also.
   *
   * @param data can be a String or <code>File</code>
   * @param type If the data is plain text then a type string has to be provided also.
   *
   * @see File
   */
  public native function add(data: *, type: String = undefined): DataTransferItem;

  /**
   * Removes all the entries in the drag data store.
   */
  public native function clear(): void;

  public native function item(index: uint): DataTransferItem;

  /**
   * Removes the indexth entry in the drag data store.
   */
  public native function remove(index: uint): void;
}
}
