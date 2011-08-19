package ext {
import ext.config.layer;

/**
 * An extended <a href="Ext.Element.html">Ext.Element</a> object that supports a shadow and shim, constrain to viewport and automatic maintaining of shadow/shim positions.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.layer
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layer.html#cls-Ext.Layer Ext JS source
 */
public class Layer extends Element {

  /**
   *
   *
   * @param config An object with config options.
   * @param existingEl Uses an existing DOM element. If the element is not found it creates it.
   * @see ext.config.layer
   */
  public function Layer(config:layer, existingEl:* = null) {
    super(null, false);
  }

  /**
   CSS class to add to the element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cls():String;

  /**
   False to disable constrain to viewport (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrain():Boolean;

  /**
   DomHelper object config to create element with (defaults to {tag: 'div', cls: 'x-layer'}).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get dh():Object;

  /**
   True to automatically create an <a href="Ext.Shadow.html">Ext.Shadow</a>, or a string indicating the shadow's display <a href="output/Ext.Shadow.html#Ext.Shadow-mode">Ext.Shadow.mode</a>. False to disable the shadow. (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shadow():*;

  /**
   Number of pixels to offset the shadow (defaults to 4)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shadowOffset():Number;

  /**
   False to disable the iframe shim in browsers which need one (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shim():Boolean;

  /**
   Defaults to use css offsets to hide the Layer. Specify <tt>true</tt> to use css style <tt>'display:none;'</tt> to hide the Layer.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useDisplay():Boolean;

  /**
   Starting z-index (defaults to 11000)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get zindex():Number;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layer.html#method-Ext.Layer-disableShadow Ext JS source
   */
  public native function disableShadow():void;

  /**
   *
   *
   * @param show
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layer.html#method-Ext.Layer-enableShadow Ext JS source
   */
  public native function enableShadow(show:Boolean = false):void;

  /**
   * Sets the z-index of this layer and adjusts any shadow and shim z-indexes. The layer z-index is automatically incremented by two more than the value passed in so that it always shows above any shadow or shim (the shadow element, if any, will be assigned z-index + 1, and the shim element, if any, will be assigned the unmodified z-index).
   *
   * @param zindex The new z-index to set
   * @return The Layer
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Layer.html#method-Ext.Layer-setZIndex Ext JS source
   */
  public native function setZIndex(zindex:Number):Layer;

}
}
    