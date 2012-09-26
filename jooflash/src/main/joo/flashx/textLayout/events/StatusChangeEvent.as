package flashx.textLayout.events {
import flash.events.ErrorEvent;
import flash.events.Event;

import flashx.textLayout.elements.FlowElement;

/**
 * A TextFlow instance dispatches this event when the status of a FlowElement changes. This event can be used to detect when an inline graphic element has completed loading. You can use your event handler to recompose the text flow based on the presence of the newly loaded inline graphic element.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/events/StatusChangeEvent.html#includeExamplesSummary">View the examples</a></p>
 */
public class StatusChangeEvent extends Event {
  /**
   * The FlowElement instance that has experienced a change in status.
   * @see flashx.textLayout.elements.FlowElement
   *
   */
  public function get element():FlowElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set element(value:FlowElement):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The ErrorEvent object that was dispatched as a result of the status change.
   * @see flash.events.ErrorEvent
   *
   */
  public function get errorEvent():ErrorEvent {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set errorEvent(value:ErrorEvent):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The FlowElement's new status. The possible values of this property are defined by the InlineGraphicElementStatus class. There are five static constants available in the InlineGraphicElementStatus class:
   * <ul>
   * <li>ERROR : String = "error". An error occurred during loading of a referenced graphic.</li>
   * <li>LOADING : String = "loading". Load has been initiated (but not completed) on a graphic element that is a URL.</li>
   * <li>LOAD_PENDING : String = "loadPending". Graphic element is an URL that has not been loaded.</li>
   * <li>READY : String = "ready". Graphic is completely loaded and properly sized.</li>
   * <li>SIZE_PENDING : String = "sizePending". Graphic element with auto or percentage width/height has completed loading but has not been recomposed.</li></ul>
   * @see flashx.textLayout.elements.InlineGraphicElementStatus
   *
   */
  public function get status():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set status(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates an event object that contains information about a status change.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of StatusChangeEvent: <code>StatusChangeEvent.INLINE_GRAPHIC_STATUS_CHANGE</code>;
   * @param bubbles Indicates whether an event is a bubbling event.This event does not bubble.
   * @param cancelable Indicates whether the behavior associated with the event can be prevented. This event cannot be cancelled.
   * @param element The FlowElement instance that has experienced a change in status.
   * @param status The FlowElement instance's new status.
   * @param errorEvent The ErrorEvent object, if any, associated with the status.
   *
   */
  public function StatusChangeEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, element:FlowElement = null, status:String = null, errorEvent:ErrorEvent = null) {
    super(type, bubbles, cancelable);
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>inlineGraphicStatusChanged</code> event object.
   */
  public static const INLINE_GRAPHIC_STATUS_CHANGE:String = "inlineGraphicStatusChange";
}
}
