package flashx.textLayout.events {
import flash.events.Event;

import flashx.textLayout.container.ContainerController;
import flashx.textLayout.elements.TextFlow;

/**
 * A TextFlow instance dispatches this event after any of its containers completes an update. Each text container has two states: composition and display. This event notifies you when the display phase has ended. This provides an opportunity to make any necessary changes to the container when it is ready to be displayed, but hasn't yet been painted to the screen.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/events/UpdateCompleteEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.elements.TextFlow
 *
 */
public class UpdateCompleteEvent extends Event {
  /**
   * The controller of the container being updated
   */
  public function get controller():ContainerController {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set controller(value:ContainerController):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextFlow which has been updated.
   */
  public function get textFlow():TextFlow {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set textFlow(value:TextFlow):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor
   * @param type event type - use the static property UPDATE_COMPLETE.
   * @param bubbles Indicates whether an event is a bubbling event. This event does not bubble.
   * @param cancelable Indicates whether the behavior associated with the event can be prevented. This event cannot be cancelled.
   * @param textFlow The ContainerController whose container was updated
   * @param controller The TextFlow which was updated
   *
   */
  public function UpdateCompleteEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, textFlow:TextFlow = null, controller:ContainerController = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of an <code>UpdateCompleteEvent</code> object
   */
  public static const UPDATE_COMPLETE:String = "updateComplete";
}
}
