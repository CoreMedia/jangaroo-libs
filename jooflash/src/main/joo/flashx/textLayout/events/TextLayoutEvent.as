package flashx.textLayout.events {
import flash.events.Event;

/**
 * A TextLayoutEvent instance represents an event, such as the <code>TextLayoutEvent.SCROLL</code> event, that does not require custom properties.
 * <p>A scroll event is represented by a TextLayoutEvent instance with its <code>type</code> property set to <code>TextLayoutEvent.SCROLL</code>. A class specifically for scroll events is not necessary because there are no custom properties for a scroll event, as there are for the other events that have specific event classes. If a new text layout event is needed, and the event does not require custom properties, the new event will also be represented by a TextLayoutEvent object, but with its <code>type</code> property set to a new static constant.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flashx/textLayout/events/TextLayoutEvent.html#includeExamplesSummary">View the examples</a></p>
 */
public class TextLayoutEvent extends Event {
  /**
   * The TextLayoutEvent class represents the event object passed to the event listener for many Text Layout events.
   * @param type <code>type:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   * @param bubbles <code>bubbles:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   * @param cancelable <code>cancelable:<a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/Boolean.html">Boolean</a></code> (default = <code>false</code>)
   *
   */
  public function TextLayoutEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>TextLayoutEvent.SCROLL</code> constant defines the value of the <code>type</code> property of the event object for a <code>scroll</code> event.
   */
  public static const SCROLL:String = "scroll";
}
}
