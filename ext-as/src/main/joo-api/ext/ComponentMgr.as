package ext {


/**
 * Provides a registry of all Components (instances of <a href="Ext.Component.html">Ext.Component</a> or any subclass thereof) on a page so that they can be easily accessed by <a href="Ext.Component.html">component</a> <a href="output/Ext.Component.html#Ext.Component-id">id</a> (see <a href="output/Ext.ComponentMgr.html#Ext.ComponentMgr-get">get</a>, or the convenience method <a href="output/Ext.html#Ext-getCmp">Ext.getCmp</a>).
 <p>This object also provides a registry of available Component <i>classes</i> indexed by a mnemonic code known as the Component's <a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a>. The <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> provides a way to avoid instantiating child Components when creating a full, nested config object for a complete Ext page.</p><p>A child Component may be specified simply as a <i>config object</i> as long as the correct <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtype</a></code> is specified so that if and when the Component needs rendering, the correct type can be looked up for lazy instantiation.</p><p>For a list of all available <code><a href="output/Ext.Component.html#Ext.Component-xtype">xtypes</a></code>, see <a href="Ext.Component.html">Ext.Component</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *
 * @see ext.IComponentMgr
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ComponentMgr Sencha Docs Ext JS 3.4
 */
public const ComponentMgr:IComponentMgr;

}
