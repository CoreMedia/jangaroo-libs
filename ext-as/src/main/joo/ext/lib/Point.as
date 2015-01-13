/*!
 * Ext JS Library 3.0.0
 * Copyright(c) 2006-2009 Ext JS, LLC
 * licensing&#64;extjs.com
 * http://www.extjs.com/license
 */
package ext.lib {

[Native(amd="ext-as.module", "lib.Point")]
public class Point extends Region {

  public function Point(x:*, y:Number = undefined) {
    super(y, x, y, x);
  }

  public var x:Number, y:Number;
}
}