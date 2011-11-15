package flash.events {


/**
 * The SoftKeyboardTrigger class defines the possible values for the <code>triggerType</code> property of the SoftKeyboardEvent class. These values indicate what type of action triggered a SoftKeyboard activation event.
 */
public class SoftKeyboardTrigger {
  /**
   * A function call triggered the event.
   */
  public static const CONTENT_TRIGGERED:String = "contentTriggered";
  /**
   * A user action triggered the event. Typical user actions that can trigger this event include explicitly closing the keyboard, or pressing the Back key.
   */
  public static const USER_TRIGGERED:String = "userTriggered";
}
}
