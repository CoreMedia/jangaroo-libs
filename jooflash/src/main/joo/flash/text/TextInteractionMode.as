package flash.text {


/**
 * A class that defines the Interactive mode of a text field object.
 */
public final class TextInteractionMode {
  /**
   * The text field's default interaction mode is NORMAL and it varies across platform. On Desktop, the normal mode implies that the text field is in scrollable + selection mode. On Mobile platforms like Android, normal mode implies that the text field can only be scrolled but the text can not be selected.
   */
  public static const NORMAL:String = "normal";
  /**
   * On mobile platforms like Android, the text field starts in normal mode(which implies scroll and non-selectable mode). The user can switch to selection mode through the in-built context menu of the text field object.
   */
  public static const SELECTION:String = "selection";
}
}
