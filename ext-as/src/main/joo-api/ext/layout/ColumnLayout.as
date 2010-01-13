package ext.layout {

/**
 * <p>This is the layout style of choice for creating structural layouts in a multi-column format where the width of
 * each column can be specified as a percentage or fixed width, but the height is allowed to vary based on the content.
 * This class is intended to be extended or created via the layout:'column' <b class='link'>ext.Container#layout</b> config,
 * and should generally not need to be created directly via the new keyword.</p>
 * <p>ColumnLayout does not have any direct config options (other than inherited ones), but it does support a
 * specific config property of <b><code>columnWidth</code></b> that can be included in the config of any panel added to it.  The
 * layout will use the columnWidth (if present) or width of each panel during layout to determine how to size each panel.
 * If width or columnWidth is not specified for a given panel, its width will default to the panel's width (or auto).</p>
 * <p>The width property is always evaluated as pixels, and must be a number greater than or equal to 1.
 * The columnWidth property is always evaluated as a percentage, and must be a decimal value greater than 0 and
 * less than 1 (e.g., .25).</p>
 * <p>The basic rules for specifying column widths are pretty simple.  The logic makes two passes through the
 * set of contained panels.  During the first layout pass, all panels that either have a fixed width or none
 * specified (auto) are skipped, but their widths are subtracted from the overall container width.  During the second
 * pass, all panels with columnWidths are assigned pixel widths in proportion to their percentages based on
 * the total <b>remaining</b> container width.  In other words, percentage width panels are designed to fill the space
 * left over by all the fixed-width and/or auto-width panels.  Because of this, while you can specify any number of columns
 * with different percentages, the columnWidths must always add up to 1 (or 100%) when added together, otherwise your
 * layout may not render as expected.  Example usage:</p>
 * <pre><code>
&#47;/ All columns are percentages -- they must add up to 1
var p = new ext.Panel({
    title&#58; 'Column Layout - Percentage Only',
    layout&#58;'column',
    items&#58; [{
        title&#58; 'Column 1',
        columnWidth&#58; .25 
    },{
        title&#58; 'Column 2',
        columnWidth&#58; .6
    },{
        title&#58; 'Column 3',
        columnWidth&#58; .15
    }]
});

&#47;/ Mix of width and columnWidth -- all columnWidth values must add up
&#47;/ to 1. The first column will take up exactly 120px, and the last two
&#47;/ columns will fill the remaining container width.
var p = new ext.Panel({
    title&#58; 'Column Layout - Mixed',
    layout&#58;'column',
    items&#58; [{
        title&#58; 'Column 1',
        width&#58; 120
    },{
        title&#58; 'Column 2',
        columnWidth&#58; .8
    },{
        title&#58; 'Column 3',
        columnWidth&#58; .2
    }]
});
</code></pre>
 */
public class ColumnLayout extends ContainerLayout {
  public var extraCls;
  public var scrollOffset ;
    override protected native function isValidParent(c, target) : void;
    override protected native function onLayout(ct, target) : void;
}}
