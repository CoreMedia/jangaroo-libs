/*!
 * Ext JS Library 3.0.0
 * Copyright(c) 2006-2009 Ext JS, LLC
 * licensing&#64;extjs.com
 * http://www.extjs.com/license
 */
package ext.lib {

[Native(amd="ext-as.module", global="Ext.lib.Dom")]
public class Dom {

  public static native function isAncestor(p:*, c:*):Boolean;

  public static native function getViewWidth(full:Boolean = false):Number;

  public static native function getViewHeight(full:Boolean = false):Number;

  public static native function getDocumentHeight():Number;

  public static native function getDocumentWidth():Number;

  public static native function getViewportHeight():Number;

  public static native function getViewportWidth():Number;

  public static native function getY():Number;

  public static native function getX():Number;

  public static native function getXY():Array;

  public static native function setXY(el:*, xy:Array):void;

  public static native function setX(el:*, x:Number):void;

  public static native function setY(el:*, y:Number):void;
}
}