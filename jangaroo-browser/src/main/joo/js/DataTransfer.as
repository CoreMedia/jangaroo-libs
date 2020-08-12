package js {

/**
 * Used to hold the data that is being dragged during a drag and drop operation. It may hold one or more data items,
 * each of one or more data types. For more information about drag and drop, see HTML Drag and Drop API.
 */
[Native("DataTransfer")]
public class DataTransfer {
  /**
   * Returns the kind of operation that is currently selected. If the kind of operation isn't one of those that is allowed by the effectAllowed attribute, then the operation will fail.
   *
   * Can be set, to change the selected operation.
   *
   * The possible values are "none", "copy", "link", and "move".
   */
  public native function get dropEffect(): String;

  /**
   * @private
   */
  public native function set dropEffect(dropEffect: String): void;

  /**
   * Returns the kinds of operations that are to be allowed.
   *
   * Can be set (during the dragstart event), to change the allowed operations.
   *
   * The possible values are "none", "copy", "copyLink", "copyMove", "link", "linkMove", "move", "all", and "uninitialized",
   */
  public native function get effectAllowed(): String;

  /**
   * @private
   */
  public native function set effectAllowed(effectAllowed: String): void;

  /**
   * Returns a FileList of the files being dragged, if any.
   */
  public native function get files(): FileList;

  /**
   * Returns a DataTransferItemList object, with the drag data.
   */
  public native function get items(): DataTransferItemList;

  /**
   * Returns a frozen array listing the formats that were set in the dragstart event. In addition, if any files are being dragged, then one of the types will be the string "Files".
   */
  public native function get types(): Array;

  /**
   * Removes the data of the specified formats. Removes all data if the argument is omitted.
   */
  public native function clearData(format: String = undefined): void;

  /**
   * Returns the specified data. If there is no such data, returns the empty string.
   */
  public native function getData(format: String): String;

  /**
   * Adds the specified data.
   */
  public native function setData(format: String, data: String): void;

  /**
   * Uses the given element to update the drag feedback, replacing any previously specified feedback.
   */
  public native function setDragImage(image: Element, x: Number, y: Number): void;
}
}
