package ext.layout {
import ext.config.absolutelayout;

/**
 * This is a layout that inherits the anchoring of <b><a href="Ext.layout.AnchorLayout.html">Ext.layout.AnchorLayout</a></b> and adds the ability for x/y positioning using the standard x and y component config options.
 <p>This class is intended to be extended or created via the <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></tt> configuration property. See <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a></b></tt> for additional details.</p><p>Example usage:</p><pre><code>var form = new Ext.form.FormPanel({
 title: 'Absolute Layout',
 layout:'absolute',
 layoutConfig: {
 // layout-specific configs go here
 extraCls: 'x-abs-layout-item',
 },
 baseCls: 'x-plain',
 url:'save-form.php',
 defaultType: 'textfield',
 items: [{
 x: 0,
 y: 5,
 xtype:'label',
 text: 'Send To:'
 },{
 x: 60,
 y: 0,
 name: 'to',
 anchor:'100%'  // anchor width by percentage
 },{
 x: 0,
 y: 35,
 xtype:'label',
 text: 'Subject:'
 },{
 x: 60,
 y: 30,
 name: 'subject',
 anchor: '100%'  // anchor width by percentage
 },{
 x:0,
 y: 60,
 xtype: 'textarea',
 name: 'msg',
 anchor: '100% 100%'  // anchor width and height
 }]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.absolutelayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.AbsoluteLayout Sencha Docs Ext JS 3.4
 */
public class AbsoluteLayout extends AnchorLayout {

  /**
   *
   *
   * @see ext.config.absolutelayout
   */
  public function AbsoluteLayout(config:absolutelayout = null) {
    super(config);
  }

}
}
    