package ext.util {

import ext.form.Number;

import js.Event;

/**
 * Represents a 2D point with x and y properties, useful for comparison and instantiation from an event: <pre><code>var point = Ext.util.Point.fromEvent(e);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#cls-Ext.util.Point Ext JS source
 */
[Native]
public class Point {

  /**
   *
   *
   */
  public function Point() {
    super();
  }

  /**
   * Copy a new instance of this point
   *
   * @return the new point
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-copy Ext JS source
   */
  public native function copy():Point;

  /**
   * Copy the x and y values of another point / object to this point itself
   *
   * @param p object with properties <code>x</code> and <code>y</code>
   * @return this This point
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-copyFrom Ext JS source
   */
  public native function copyFrom(p:Object):Point;

  /**
   * Compare this point and another point
   *
   * @param The point to compare with, either an instance of Ext.util.Point or an object with x and y properties
   * @return Returns whether they are equivalent
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-equals Ext JS source
   */
  public native function equals(The:*):Boolean;

  /**
   * Returns a new instance of Ext.util.Point base on the pageX / pageY values of the given event
   *
   * @param e The event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-fromEvent Ext JS source
   */
  public static native function fromEvent(e:Event):void;

  /**
   * Whether the given point is not away from this point within the given threshold amount
   *
   * @param The point to check with, either an instance of Ext.util.Point or an object with x and y properties
   * @param threshold Can be either an object with x and y properties or a number
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-isWithin Ext JS source
   */
  public native function isWithin(The:*, threshold:*):Boolean;

  /**
   * Compare this point with another point when the x and y values of both points are rounded. E.g: [100.3,199.8] will equals to [100, 200]
   *
   * @param The point to compare with, either an instance of Ext.util.Point or an object with x and y properties
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-roundedEquals Ext JS source
   */
  public native function roundedEquals(The:*):Boolean;

  /**
   * Returns a human-eye-friendly string that represents this point, useful for debugging
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-toString Ext JS source
   */
  public native function toString():String;

  /**
   * Translate this point by the given amounts
   *
   * @param x Amount to translate in the x-axis
   * @param y Amount to translate in the y-axis
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Point.html#method-Ext.util.Point-translate Ext JS source
   */
  public native function translate(x:ext.form.Number, y:ext.form.Number):Boolean;

}
}
    