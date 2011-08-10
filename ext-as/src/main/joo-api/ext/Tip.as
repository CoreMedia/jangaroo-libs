package ext {

import ext.config.tip;

/**
 * nullThis is the base class for <a href="Ext.QuickTip.html">Ext.QuickTip</a> and <a href="Ext.Tooltip.html">Ext.Tooltip</a> that provides the basic layout and positioning that all tip-based classes require. This class can be used directly for simple, statically-positioned tips that are displayed programmatically, or it can be extended to provide custom tip implementations.
 * <p>This component is created by the xtype 'tip' / the EXML element &lt;tip>.</p>
 * @see ext.config.tip
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Tip.html#cls-Ext.Tip Ext JS source
 */
public class Tip extends Panel {

  /**
   * Create a new Tip
   *
   * @param config The configuration options
   * @see ext.config.tip
   */
  public function Tip(config:tip) {
    super(null);
  }

  /**
   <b>Experimental</b>. The default <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position value for this tip relative to its element of origin (defaults to "tl-bl?").
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultAlign():String;

  /**
   The maximum width of the tip in pixels (defaults to 300). The maximum supported value is 500.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxWidth():Number;

  /**
   The minimum width of the tip in pixels (defaults to 40).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get minWidth():Number;

  /**
   * Shows this tip at the specified XY position. Example usage: <pre><code>// Show the tip at x:50 and y:100
   tip.showAt([50,100]);
   </code></pre>
   *
   * @param xy An array containing the x and y coordinates
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Tip.html#method-Ext.Tip-showAt Ext JS source
   */
  public native function showAt(xy:Array):void;

  /**
   * <b>Experimental</b>. Shows this tip at a position relative to another element using a standard <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position value. Example usage: <pre><code>// Show the tip at the default position ('tl-br?')
   tip.showBy('my-el');

   // Show the tip's top-left corner anchored to the element's top-right corner
   tip.showBy('my-el', 'tl-tr');
   </code></pre>
   *
   * @param el An HTMLElement, Ext.Element or string id of the target element to align to
   * @param position A valid <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> anchor position (defaults to 'tl-br?' or <a href="output/Ext.Tip.html#Ext.Tip-defaultAlign">defaultAlign</a> if specified).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Tip.html#method-Ext.Tip-showBy Ext JS source
   */
  public native function showBy(el:*, position:String = null):void;

}
}
    