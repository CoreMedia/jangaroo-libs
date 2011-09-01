package ext.util {

import ext.form.Number;

/**
 * Represents a rectangular region and provides a number of utility methods to compare regions.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#cls-Ext.util.Region Ext JS source
 */
public class Region {

  /**
   *
   *
   */
  public function Region() {
    super();
  }

  /**
   * Modifies the current region to be adjusted by offsets.
   *
   * @param top top offset
   * @param right right offset
   * @param bottom bottom offset
   * @param left left offset
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-adjust Ext JS source
   */
  public native function adjust(top:ext.form.Number, right:ext.form.Number, bottom:ext.form.Number, left:ext.form.Number):void;

  /**
   * Modifies the current region to be constrained to the targetRegion.
   *
   * @param targetRegion
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-constrainTo Ext JS source
   */
  public native function constrainTo(targetRegion:Region):void;

  /**
   *
   *
   * @param top Top
   * @param right Right
   * @param bottom Bottom
   * @param left Left
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-constructor Ext JS source
   */
  public native function constructor(top:ext.form.Number, right:ext.form.Number, bottom:ext.form.Number, left:ext.form.Number):void;

  /**
   * Checks if this region completely contains the region that is passed in.
   *
   * @param region
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-contains Ext JS source
   */
  public native function contains(region:Region):void;

  /**
   * Copy a new instance
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-copy Ext JS source
   */
  public native function copy():Region;

  /**
   * Check whether this region is equivalent to the given region
   *
   * @param region The region to compare with
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-equals Ext JS source
   */
  public native function equals(region:Region):Boolean;

  /**
   *
   *
   * @param o An object with top, right, bottom, left properties
   * @return region The region constructed based on the passed object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-from Ext JS source
   */
  public static native function from(o:Object):Region;

  /**
   * Get the offset amount of a point outside the region
   *
   * @param axis optional
   * @param p the point
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-getOutOfBoundOffset Ext JS source
   */
  public native function getOutOfBoundOffset(axis:String, p:Point):ext.util.Offset;

  /**
   * Get the offset amount on the x-axis
   *
   * @param p the offset
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-getOutOfBoundOffsetX Ext JS source
   */
  public native function getOutOfBoundOffsetX(p:ext.form.Number):ext.form.Number;

  /**
   * Get the offset amount on the y-axis
   *
   * @param p the offset
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-getOutOfBoundOffsetY Ext JS source
   */
  public native function getOutOfBoundOffsetY(p:ext.form.Number):ext.form.Number;

  /**
   *
   *
   * @param el A string, DomElement or Ext.Element representing an element on the page.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-getRegion Ext JS source
   */
  public static native function getRegion(el:*):void;

  /**
   * Checks if this region intersects the region passed in.
   *
   * @param region
   * @return Returns the intersected region or false if there is no intersection.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-intersect Ext JS source
   */
  public native function intersect(region:Region):*;

  /**
   * Check whether the point / offset is out of bound
   *
   * @param axis optional
   * @param p the point / offset
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-isOutOfBound Ext JS source
   */
  public native function isOutOfBound(axis:String, p:*):Boolean;

  /**
   * Check whether the offset is out of bound in the x-axis
   *
   * @param p the offset
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-isOutOfBoundX Ext JS source
   */
  public native function isOutOfBoundX(p:ext.form.Number):Boolean;

  /**
   * Check whether the offset is out of bound in the y-axis
   *
   * @param p the offset
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-isOutOfBoundY Ext JS source
   */
  public native function isOutOfBoundY(p:ext.form.Number):Boolean;

  /**
   * Round all the properties of this region
   *
   * @return this This Region
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-round Ext JS source
   */
  public native function round():Region;

  /**
   * Dump this to an eye-friendly string, great for debugging
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-toString Ext JS source
   */
  public native function toString():String;

  /**
   * Translate this region by the given offset amount
   *
   * @param offset
   * @return this This Region
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-translateBy Ext JS source
   */
  public native function translateBy(offset:*):Region;

  /**
   * Returns the smallest region that contains the current AND targetRegion.
   *
   * @param region
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Region.html#method-Ext.util.Region-union Ext JS source
   */
  public native function union(region:Region):void;

}
}
    