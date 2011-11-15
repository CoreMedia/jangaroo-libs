package flashx.textLayout.events {
import flash.events.Event;

import flashx.textLayout.elements.TextFlow;

/**
 * A TextFlow instance dispatches this event after a compose operation completes. Each text container has two states: composition and display. This event notifies you when the composition phase has ended. This provides an opportunity to make any necessary and appropriate changes to the container before you display the text. For example, you can use this event to add highlighting of certain words or characters in the text flow before the text is displayed.
 * <p>The three main methods that dispatch this event are <code>compose()</code>, <code>updateToController()</code>, and <code>updateAllControllers()</code>. All three of these methods are in the StandardFlowComposer class.</p>
 * <p><b>Note:</b> If the event is dispatched by the <code>updateAllControllers()</code> method, do not call <code>updateAllControllers()</code> again in your event handler function. Such a call would be a recursive call because the <code>updateAllControllers()</code> method executes both the composition and display steps. The <code>updateAllControllers()</code> dispatches this event after composition completes, but before the display step executes. The same reasoning applies to the <code>updateToController()</code> method.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/events/CompositionCompleteEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flashx.textLayout.elements.TextFlow
 *
 */
public class CompositionCompleteEvent extends Event {
  /**
   * The number of characters composed.
   */
  public function get compositionLength():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set compositionLength(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The start location of the text range affected by the composition, expressed as an index into the text flow.
   */
  public function get compositionStart():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set compositionStart(value:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * TextFlow on which composition has been completed.
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
   * @param type event type - use the static property COMPOSITION_COMPLETE.
   * @param bubbles Indicates whether an event is a bubbling event. This event does not bubble.
   * @param cancelable Indicates whether the behavior associated with the event can be prevented. This event cannot be cancelled.
   * @param textFlow The TextFlow which was composed
   * @param compositionStart start of composition, in terms of an index into the text flow.
   * @param compositionLength length number of characters composed
   *
   */
  public function CompositionCompleteEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, textFlow:TextFlow = null, compositionStart:int = 0, compositionLength:int = 0) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>compositionComplete</code> event object
   */
  public static const COMPOSITION_COMPLETE:String = "compositionComplete";
}
}
