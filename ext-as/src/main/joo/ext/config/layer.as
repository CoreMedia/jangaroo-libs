package ext.config {

import ext.Ext;

/**
 * An extended <a href="Ext.Element.html">Ext.Element</a> object that supports a shadow and shim, constrain to viewport and automatic maintaining of shadow/shim positions.
 * <p>This class serves as a typed config object for constructor of class Layer.</p>
 *
 * @see ext.Layer
 */
[ExtConfig(target="ext.Layer")]
public class layer {

  public function layer(config:Object = null) {

    Ext.apply(this, config);
  }


  /**
   CSS class to add to the element
   */
  public native function get cls():String;

  /**
   * @private
   */
  public native function set cls(value:String):void;

  /**
   False to disable constrain to viewport (defaults to true)
   */
  public native function get constrain():Boolean;

  /**
   * @private
   */
  public native function set constrain(value:Boolean):void;

  /**
   DomHelper object config to create element with (defaults to {tag: 'div', cls: 'x-layer'}).
   */
  public native function get dh():Object;

  /**
   * @private
   */
  public native function set dh(value:Object):void;

  /**
   True to automatically create an <a href="Ext.Shadow.html">Ext.Shadow</a>, or a string indicating the shadow's display <a href="output/Ext.Shadow.html#Ext.Shadow-mode">Ext.Shadow.mode</a>. False to disable the shadow. (defaults to false)
   */
  public native function get shadow():*;

  /**
   * @private
   */
  public native function set shadow(value:*):void;

  /**
   Number of pixels to offset the shadow (defaults to 4)
   */
  public native function get shadowOffset():Number;

  /**
   * @private
   */
  public native function set shadowOffset(value:Number):void;

  /**
   False to disable the iframe shim in browsers which need one (defaults to true)
   */
  public native function get shim():Boolean;

  /**
   * @private
   */
  public native function set shim(value:Boolean):void;

  /**
   Defaults to use css offsets to hide the Layer. Specify <tt>true</tt> to use css style <tt>'display:none;'</tt> to hide the Layer.
   */
  public native function get useDisplay():Boolean;

  /**
   * @private
   */
  public native function set useDisplay(value:Boolean):void;

  /**
   Starting z-index (defaults to 11000)
   */
  public native function get zindex():Number;

  /**
   * @private
   */
  public native function set zindex(value:Number):void;


}
}
    