package ext.layout {

import ext.config.boxlayout;


/**
 * Base Class for HBoxLayout and VBoxLayout Classes. Generally it should not need to be used directly.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.boxlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#cls-Ext.layout.BoxLayout Ext JS source
 */
public class BoxLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.boxlayout
   */
  public function BoxLayout(config:boxlayout = null) {
    super(config);
  }

  /**
   Specifies the direction in which child components are laid out. Defaults to <tt>'normal'</tt>, which means they are laid out in the order they are added. You can use the <tt>'reverse'</tt> option to have them laid out in reverse.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get direction():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/BoxLayout.html#method-Ext.layout.BoxLayout-onLayout Ext JS source
   */
  public native function onLayout():void;

}
}
    