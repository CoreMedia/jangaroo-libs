package ext.layout {


/**
 * This is the layout style of choice for creating structural layouts in a multi-column format where the width of each column can be specified as a percentage or fixed width, but the height is allowed to vary based on the content. This class is intended to be extended or created via the layout:'column' <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> config, and should generally not need to be created directly via the new keyword.
 <p>ColumnLayout does not have any direct config options (other than inherited ones), but it does support a specific config property of <b><tt>columnWidth</tt></b> that can be included in the config of any panel added to it. The layout will use the columnWidth (if present) or width of each panel during layout to determine how to size each panel. If width or columnWidth is not specified for a given panel, its width will default to the panel's width (or auto).</p><p>The width property is always evaluated as pixels, and must be a number greater than or equal to 1. The columnWidth property is always evaluated as a percentage, and must be a decimal value greater than 0 and less than 1 (e.g., .25).</p><p>The basic rules for specifying column widths are pretty simple. The logic makes two passes through the set of contained panels. During the first layout pass, all panels that either have a fixed width or none specified (auto) are skipped, but their widths are subtracted from the overall container width. During the second pass, all panels with columnWidths are assigned pixel widths in proportion to their percentages based on the total <b>remaining</b> container width. In other words, percentage width panels are designed to fill the space left over by all the fixed-width and/or auto-width panels. Because of this, while you can specify any number of columns with different percentages, the columnWidths must always add up to 1 (or 100%) when added together, otherwise your layout may not render as expected. Example usage:</p><pre><code>// All columns are percentages -- they must add up to 1
 var p = new Ext.Panel({
 title: 'Column Layout - Percentage Only',
 layout:'column',
 items: [{
 title: 'Column 1',
 columnWidth: .25
 },{
 title: 'Column 2',
 columnWidth: .6
 },{
 title: 'Column 3',
 columnWidth: .15
 }]
 });

 // Mix of width and columnWidth -- all columnWidth values must add up
 // to 1. The first column will take up exactly 120px, and the last two
 // columns will fill the remaining container width.
 var p = new Ext.Panel({
 title: 'Column Layout - Mixed',
 layout:'column',
 items: [{
 title: 'Column 1',
 width: 120
 },{
 title: 'Column 2',
 columnWidth: .8
 },{
 title: 'Column 3',
 columnWidth: .2
 }]
 });
 </code></pre>
 * @see ext.config.columnlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ColumnLayout.html#cls-Ext.layout.ColumnLayout Ext JS source
 */
public class ColumnLayout extends ContainerLayout {

  /**
   *
   *
   * @see ext.config.columnlayout
   */
  public function ColumnLayout() {
    super();
  }

}
}
    