/*!
 * Ext JS Library 3.0.0
 * Copyright(c) 2006-2009 Ext JS, LLC
 * licensing&#64;extjs.com
 * http://www.extjs.com/license
 */
package ext.lib {

import ext.Element;

[Native]
public class Region {
  public var top:Number, right:Number, bottom:Number, left:Number;

  public native function Region(top:Number, right:Number, bottom:Number, left:Number);

  public native function contains(region:Region):Boolean;

  public native function getArea():Number;

  public native function intersect(region:Region):Region;

  public native function union(region:Region):Region;

  public native function constrainTo(r:Region):Region;

  public native function adjust(top:Number, right:Number, bottom:Number, left:Number):Region;

  public native function getRegion(el:Element):Region;
}
}