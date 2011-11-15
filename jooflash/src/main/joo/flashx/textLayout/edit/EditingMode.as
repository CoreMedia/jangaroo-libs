package flashx.textLayout.edit {


/**
 * The EditingMode class defines constants used with EditManager class to represent the read, select, and edit permissions of a document.
 * @see EditManager
 *
 */
public final class EditingMode {
  /**
   * The document is read-only.
   * <p>Neither selection nor editing is allowed.</p>
   */
  public static const READ_ONLY:String = "readOnly";
  /**
   * The text in the document can be selected and copied, but not edited.
   */
  public static const READ_SELECT:String = "readSelect";
  /**
   * The document can be edited.
   */
  public static const READ_WRITE:String = "readWrite";
}
}
