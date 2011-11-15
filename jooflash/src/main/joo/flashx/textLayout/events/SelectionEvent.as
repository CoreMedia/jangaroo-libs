package flashx.textLayout.events {
import flash.events.Event;

import flashx.textLayout.edit.SelectionState;

/**
 * A TextFlow instance dispatches a SelectionEvent object when an EditManager or SelectionManager changes or selects a range of text. For example, this event is dispatched not only when a range of text is selected, but also when the selection changes because the user clicks elsewhere in the text flow. Moreover, this event is also dispatched when an EditManager changes the text or text formatting within a range of text.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/events/SelectionEvent.html#includeExamplesSummary">View the examples</a></p>
 */
public class SelectionEvent extends Event {
  /**
   * An object of type SelectionState that represents the selected range associated with this SelectionEvent.
   * <p>You can use this property, along with the ElementRange class, to create an ElementRange instance that represents the range of selected text. You can use the following line of code to create an instance of the ElementRange class that represents the range of selected text (the <code>ev</code> variable represents the event object, and the conditional operator is used to guard against a <code>null</code> value for the <code>selectionState</code> property):</p>
   * <listing>
   *          // Find selected element range
   *          var range:ElementRange = ev.selectionState ?
   *              ElementRange.createElementRange(ev.selectionState.textFlow,
   *              ev.selectionState.absoluteStart, ev.selectionState.absoluteEnd) : null;</listing>
   * @see flashx.textLayout.edit.ElementRange
   * @see flashx.textLayout.edit.SelectionState
   *
   */
  public function get selectionState():SelectionState {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set selectionState(value:SelectionState):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an event object that contains information about a flow operation.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of SelectionEvent: <code>SelectionEvent.SELECTION_CHANGE</code>;
   * @param bubbles Indicates whether an event is a bubbling event.This event does not bubble.
   * @param cancelable Indicates whether the behavior associated with the event can be prevented.
   * @param selectionState An object of type ElementRange that describes the range of text selected.
   *
   */
  public function SelectionEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, selectionState:SelectionState = null) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The SelectionEvent.SELECTION_CHANGE constant defines the value of the type property of the event object for a selection event.
   */
  public static const SELECTION_CHANGE:String = "selectionChange";
}
}
