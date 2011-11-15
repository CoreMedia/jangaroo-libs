package flash.ui {
import flash.display.BitmapData;
import flash.geom.Point;

/**
 * The MouseCursorData class provides accessors for the data that defines the appearance of a native mouse cursor, its current hot spot, and its display frame rate. A native mouse cursor has several advantages over a mouse implemented as a Sprite, including:
 * <ul>
 * <li>Native cursors are not limited to the bounds of the Stage.</li>
 * <li>Native cursors do not require the runtime to continually dispatch mouse move events.</li>
 * <li>Native cursors can display a cursor while the runtime is computing data.</li></ul>
 * @see Mouse#cursor
 *
 */
public final class MouseCursorData {
  /**
   * Sets or gets the mouse icon bitmap.
   */
  public function get data():Vector.<BitmapData> {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set data(value:Vector.<BitmapData>):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets or gets the mouse frame rate. This frame rate may differ from the current SWF frame rate.
   */
  public function get frameRate():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set frameRate(value:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets or gets the point, or hot spot, that represents the current mouse selection.
   */
  public function get hotSpot():Point {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set hotSpot(value:Point):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor function for a MouseCursorData object. The MouseCursorData constructor function does not take any parameters. Use the <code>Mouse.registerCursor()</code> method to set the cursor name.
   * @see Mouse#registerCursor()
   *
   */
  public function MouseCursorData() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
