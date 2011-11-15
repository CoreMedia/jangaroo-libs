package flashx.textLayout.compose {


/**
 * The FlowDamageType class is an enumeration class that defines types of damage for damage methods and events. When the text content is updated, these changes are reflected in the TextLines after an update. TextLines are marked with a flag that specifies whether or not they are valid, or up to date with all text changes. When the text is first updated, all lines are marked valid or static. After the text has been changed, and before the next update, lines will be marked with a FlowDamageType that specifies what about the line is invalid. Once the update is done, lines will again be marked as valid or static.
 */
public class FlowDamageType {
  /**
   * Value is used to set the <code>validity</code> property if the line has been invalidated by other lines moving around. For instance, a line above may have been created, so this line needs to be moved down. The text line might or might not need recreating at the next compose operation.
   * @see TextFlowLine#validity
   *
   */
  public static const GEOMETRY:String = "geometry";
  /**
   * Value is used to set the <code>validity</code> property if the text content has changed since the line was originally created. Invalid lines needs to be recreated before they are used for selection or to display the text content changes.
   * @see TextFlowLine#validity
   *
   */
  public static const INVALID:String = "invalid";
}
}
