package flash.text.engine {
import flash.events.EventDispatcher;
import flash.geom.Rectangle;

/**
 * The TextLineMirrorRegion class represents a portion of a text line wherein events are mirrored to another event dispatcher.
 * <p>After normal event-dispatching for a text line finishes, if the line is valid and event propagation has not been stopped, events are re dispatched to the mirror regions of the line.</p>
 * <p>Mirroring of mouse events is a special case. Because mirror regions aren't actually display objects, <code>mouseOver</code> and <code>mouseOut</code> events are simulated for them. The <code>rollOver</code> and <code>rollOut</code> events are not simulated. All naturally occuring <code>mouseOver</code>, <code>mouseOut</code>, <code>rollOver</code> and <code>rollOut</code> events (whether targetted at the text line or at children of the text line) are ignored - they are not mirrored.</p>
 * <p>You cannot create a TextLineMirrorRegion object directly from ActionScript code. If you call <code>new TextLineMirrorRegion()</code>, an exception is thrown. A TextLineMirrorRegion is created and associated with a text line when that text line is created from a ContentElement object with an event mirror set.</p>
 * <p>The TextLineMirrorRegion class is final; it cannot be subclassed.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/engine/TextLineMirrorRegion.html#includeExamplesSummary">View the examples</a></p>
 * @see ContentElement#eventMirror
 * @see TextBlock#createTextLine()
 * @see TextLine#mirrorRegions
 *
 */
public final class TextLineMirrorRegion {
  /**
   * The bounds of the mirror region, relative to the text line.
   */
  public function get bounds():Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>ContentElement</code> object from which the mirror region was derived.
   * @throws flash.errors.IllegalOperationError The TextLine to which this element belongs is not valid.
   *
   */
  public function get element():ContentElement {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The <code>EventDispatcher</code> object to which events affecting the mirror region are mirrored. This includes mouse events that specifically occur in the mirror region, and all other events that target the text line.
   */
  public function get mirror():EventDispatcher {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The next TextLineMirrorRegion in the set derived from the text element, or <code>null</code> if the current region is the last mirror region in the set. May be on the same line or on another text line.
   */
  public function get nextRegion():TextLineMirrorRegion {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The previous TextLineMirrorRegion in the set derived from the text element, or <code>null</code> if the current region is the first mirror region in the set. May be on the same line or on another text line.
   */
  public function get previousRegion():TextLineMirrorRegion {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The TextLine containing this mirror region.
   */
  public function get textLine():TextLine {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
