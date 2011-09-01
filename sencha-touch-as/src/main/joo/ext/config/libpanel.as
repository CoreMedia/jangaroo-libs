
package ext.config {

import ext.form.Number;


/**
 * Shared Panel class
 *
 * <p>This class represents the xtype 'libpanel' and serves as a
 * typed config object for constructor of class Panel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.lib.Panel
 */
[ExtConfig(target="ext.lib.Panel", xtype="libpanel")]
public class libpanel extends ext.config.container {

  public function libpanel(config:Object = null) {

    super(config);
  }

  
  
  /**
The base CSS class to apply to this panel's element (defaults to <code>'x-panel'</code>).
   */      
  override public native function get baseCls():String;

  /**
   * @private
   */
   override public native function set baseCls(value:String):void;
      
  /**
A shortcut for setting a border style on the body element. The value can either be a number to be applied to all sides, or a normal css string describing borders. Defaults to <tt>undefined</tt>.
   */      
  public native function get bodyBorder():*;

  /**
   * @private
   */
   public native function set bodyBorder(value:*):void;
      
  /**
A shortcut for setting a margin style on the body element. The value can either be a number to be applied to all sides, or a normal css string describing margins. Defaults to <tt>undefined</tt>.
   */      
  public native function get bodyMargin():*;

  /**
   * @private
   */
   public native function set bodyMargin(value:*):void;
      
  /**
A shortcut for setting a padding style on the body element. The value can either be a number to be applied to all sides, or a normal css string describing padding. Defaults to <tt>undefined</tt>.
   */      
  public native function get bodyPadding():*;

  /**
   * @private
   */
   public native function set bodyPadding(value:*):void;
      
  /**
A component or series of components to be added as docked items to this panel. The docked items can be docked to either the top, right, left or bottom of a panel. This is typically used for things like toolbars or tab bars: <pre><code>var panel = new Ext.Panel({
    fullscreen: true,
    dockedItems: [{
        xtype: 'toolbar',
        dock: 'top',
        items: [{
            text: 'Docked to the bottom'
        }]
    }]
});</code></pre>
   */      
  public native function get dockedItems():*;

  /**
   * @private
   */
   public native function set dockedItems(value:*):void;
      

}
}
    