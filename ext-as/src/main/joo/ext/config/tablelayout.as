package ext.config {


/**
 * This layout allows you to easily render content into an HTML table. The total number of columns can be specified, and rowspan and colspan can be used to create complex layouts within the table. This class is intended to be extended or created via the layout:'table' <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> config, and should generally not need to be created directly via the new keyword.
 <p>Note that when creating a layout via config, the layout-specific config properties must be passed in via the <a href="output/Ext.Container.html#Ext.Container-layoutConfig">Ext.Container.layoutConfig</a> object which will then be applied internally to the layout. In the case of TableLayout, the only valid layout config property is <a href="output/Ext.layout.TableLayout.html#Ext.layout.TableLayout-columns">columns</a>. However, the items added to a TableLayout can supply the following table-specific config properties:</p><ul><li><b>rowspan</b> Applied to the table cell containing the item.</li><li><b>colspan</b> Applied to the table cell containing the item.</li><li><b>cellId</b> An id applied to the table cell containing the item.</li><li><b>cellCls</b> A CSS class name added to the table cell containing the item.</li></ul><p>The basic concept of building up a TableLayout is conceptually very similar to building up a standard HTML table. You simply add each panel (or "cell") that you want to include along with any span attributes specified as the special config properties of rowspan and colspan which work exactly like their HTML counterparts. Rather than explicitly creating and nesting rows and columns as you would in HTML, you simply specify the total column count in the layoutConfig and start adding panels in their natural order from left to right, top to bottom. The layout will automatically figure out, based on the column count, rowspans and colspans, how to position each panel within the table. Just like with HTML tables, your rowspans and colspans must add up correctly in your overall layout or you'll end up with missing and/or extra cells! Example usage:</p><pre><code>// This code will generate a layout table that is 3 columns by 2 rows
 // with some spanning included.  The basic layout will be:
 // +--------+-----------------+
 // |   A    |   B             |
 // |        |--------+--------|
 // |        |   C    |   D    |
 // +--------+--------+--------+
 var table = new Ext.Panel({
 title: 'Table Layout',
 layout:'table',
 defaults: {
 // applied to each contained panel
 bodyStyle:'padding:20px'
 },
 layoutConfig: {
 // The total column count must be specified here
 columns: 3
 },
 items: [{
 html: '&lt;p&gt;Cell A content&lt;/p&gt;',
 rowspan: 2
 },{
 html: '&lt;p&gt;Cell B content&lt;/p&gt;',
 colspan: 2
 },{
 html: '&lt;p&gt;Cell C content&lt;/p&gt;',
 cellCls: 'highlight'
 },{
 html: '&lt;p&gt;Cell D content&lt;/p&gt;'
 }]
 });
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class TableLayout.</p>
 *
 * @see ext.layout.TableLayout
 */
[ExtConfig(target="ext.layout.TableLayout")]
public class tablelayout extends containerlayout {

  public function tablelayout(config:Object = null) {

    super(config);
  }


  /**
   The total number of columns to create in the table for this layout. If not specified, all Components added to this layout will be rendered into a single row using one column per Component.
   */
  public native function get columns():Number;

  /**
   * @private
   */
  public native function set columns(value:Number):void;

  /**
   An object containing properties which are added to the <a href="Ext.DomHelper.html">DomHelper</a> specification used to create the layout's <tt>&lt;table&gt;</tt> element. Example:
   <pre><code>{
   xtype: 'panel',
   layout: 'table',
   layoutConfig: {
   tableAttrs: {
   style: {
   width: '100%'
   }
   },
   columns: 3
   }
   }</code></pre>
   */
  public native function get tableAttrs():Object;

  /**
   * @private
   */
  public native function set tableAttrs(value:Object):void;


}
}
    