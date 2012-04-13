package ext.grid {
import ext.Element;
import ext.Template;

import js.HTMLElement;

/**
 * Specialised GridView for rendering Pivot Grid components. Config can be passed to the PivotGridView via the PivotGrid constructor's viewConfig option: <pre><code>new Ext.grid.PivotGrid({
 viewConfig: {
 title: 'My Pivot Grid',
 getCellCls: function(value) {
 return value &gt; 10 'red' : 'green';
 }
 }
 });
 </code></pre><p>Currently <a href="output/Ext.grid.PivotGridView.html#Ext.grid.PivotGridView-title">title</a> and <a href="output/Ext.grid.PivotGridView.html#Ext.grid.PivotGridView-getCellCls">getCellCls</a> are the only configuration options accepted by PivotGridView. All other interaction is performed via the <a href="Ext.grid.PivotGrid.html">PivotGrid</a> class.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.pivotgridview
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView Sencha Docs Ext JS 3.4
 */
public class PivotGridView extends GridView {

  /**
   *
   *
   * @see ext.config.pivotgridview
   */
  public function PivotGridView() {
    super(null);
  }

  /**
   The CSS class added to all group header cells. Defaults to 'grid-hd-group-cell'
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-property-colHeaderCellCls Sencha Docs Ext JS 3.4
   */
  public native function get colHeaderCellCls():String;

  /**
   * @private
   */
  public native function set colHeaderCellCls(value:String):void;

  /**
   The element that contains the optional title (top left section of the pivot grid)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-property-headerTitleEl Sencha Docs Ext JS 3.4
   */
  public native function get headerTitleEl():Element;

  /**
   * @private
   */
  public native function set headerTitleEl(value:Element):void;

  /**
   The master template to use when rendering the GridView. Has a default template
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-property-masterTpl Sencha Docs Ext JS 3.4
   */
  override public native function get masterTpl():Template;

  /**
   * @private
   */
  override public native function set masterTpl(value:Template):void;

  /**
   The element containing all row headers
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-property-rowHeadersEl Sencha Docs Ext JS 3.4
   */
  public native function get rowHeadersEl():Element;

  /**
   * @private
   */
  public native function set rowHeadersEl(value:Element):void;

  /**
   Optional title to be placed in the top left corner of the PivotGrid. Defaults to an empty string.
   */
  public native function get title():String;

  /**
   *
   *
   * @param preventRefresh True to prevent resizing of each row to the new column sizes (defaults to false)
   * @param onlyExpand NOT USED, will be removed in 4.0
   * @param omitColumn The index of a column to leave at its current width. Defaults to undefined
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-fitColumns Sencha Docs Ext JS 3.4
   */
  override public native function fitColumns(preventRefresh:Boolean, onlyExpand:*, omitColumn:Number):Boolean;

  /**
   * Inherit docs
   *
   * @param el
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-getCellIndex Sencha Docs Ext JS 3.4
   */
  public native function getCellIndex(el:HTMLElement):void;

  /**
   * Returns the headers to be rendered at the top of the grid. Should be a 2-dimensional array, where each item specifies the number of columns it groups (column in this case refers to normal grid columns). In the example below we have 5 city groups, which are each part of a continent supergroup. The colspan for each city group refers to the number of normal grid columns that group spans, so in this case the grid would be expected to have a total of 12 columns: <pre><code>[
   {
   items: [
   {header: 'England',   colspan: 5},
   {header: 'USA',       colspan: 3}
   ]
   },
   {
   items: [
   {header: 'London',    colspan: 2},
   {header: 'Cambridge', colspan: 3},
   {header: 'Palo Alto', colspan: 3}
   ]
   }
   ]
   </code></pre>In the example above we have cities nested under countries. The nesting could be deeper if desired - e.g. Continent -&gt; Country -&gt; State -&gt; City, or any other structure. The only constraint is that the same depth must be used throughout the structure.
   *
   * @return A tree structure containing the headers to be rendered. Must include the colspan property at each level, which should be the sum of all child nodes beneath this node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-getColumnHeaders Sencha Docs Ext JS 3.4
   */
  public native function getColumnHeaders():Array;

  /**
   *
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-getGridInnerWidth Sencha Docs Ext JS 3.4
   */
  override public native function getGridInnerWidth():Number;

  /**
   * Returns the headers to be rendered on the left of the grid. Should be a 2-dimensional array, where each item specifies the number of rows it groups. In the example below we have 5 city groups, which are each part of a continent supergroup. The rowspan for each city group refers to the number of normal grid columns that group spans, so in this case the grid would be expected to have a total of 12 rows: <pre><code>[
   {
   width: 90,
   items: [
   {header: 'England',   rowspan: 5},
   {header: 'USA',       rowspan: 3}
   ]
   },
   {
   width: 50,
   items: [
   {header: 'London',    rowspan: 2},
   {header: 'Cambridge', rowspan: 3},
   {header: 'Palo Alto', rowspan: 3}
   ]
   }
   ]
   </code></pre>In the example above we have cities nested under countries. The nesting could be deeper if desired - e.g. Continent -&gt; Country -&gt; State -&gt; City, or any other structure. The only constaint is that the same depth must be used throughout the structure.
   *
   * @return A tree structure containing the headers to be rendered. Must include the colspan property at each level, which should be the sum of all child nodes beneath this node. Each group may specify the width it should be rendered with.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-getRowHeaders Sencha Docs Ext JS 3.4
   */
  public native function getRowHeaders():Array;

  /**
   *
   *
   * @return The total height
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-getTotalColumnHeaderHeight Sencha Docs Ext JS 3.4
   */
  public native function getTotalColumnHeaderHeight():Number;

  /**
   * Returns the total width of all row headers as specified by <a href="output/Ext.grid.PivotGridView.html#Ext.grid.PivotGridView-getRowHeaders">getRowHeaders</a>
   *
   * @return The total width
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-getTotalRowHeaderWidth Sencha Docs Ext JS 3.4
   */
  public native function getTotalRowHeaderWidth():Number;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-initElements Sencha Docs Ext JS 3.4
   */
  override public native function initElements():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-initTemplates Sencha Docs Ext JS 3.4
   */
  override public native function initTemplates():void;

  /**
   *
   *
   * @param cellIndex The header cell index
   * @param el The cell element currently being hovered over
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-isMenuDisabled Sencha Docs Ext JS 3.4
   */
  override public native function isMenuDisabled(cellIndex:Number, el:Element):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-onLayout Sencha Docs Ext JS 3.4
   */
  public native function onLayout():void;

  /**
   * Refreshs the grid UI
   *
   * @param headersToo True to also refresh the headers
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-refresh Sencha Docs Ext JS 3.4
   */
  override public native function refresh(headersToo:Boolean = false):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-renderGroupColumnHeaders Sencha Docs Ext JS 3.4
   */
  public native function renderGroupColumnHeaders():void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-renderGroupRowHeaders Sencha Docs Ext JS 3.4
   */
  public native function renderGroupRowHeaders():void;

  /**
   *
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-renderHeaders Sencha Docs Ext JS 3.4
   */
  override public native function renderHeaders():String;

  /**
   *
   *
   * @param startRow Index of the first row to render
   * @param endRow Index of the last row to render
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-renderRows Sencha Docs Ext JS 3.4
   */
  override public native function renderRows(startRow:Number, endRow:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-renderUI Sencha Docs Ext JS 3.4
   */
  override public native function renderUI():void;

  /**
   *
   *
   * @param width The new width
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-resizeAllRows Sencha Docs Ext JS 3.4
   */
  public native function resizeAllRows(width:Number):void;

  /**
   *
   *
   * @param width The new width
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-resizeColumnHeaders Sencha Docs Ext JS 3.4
   */
  public native function resizeColumnHeaders(width:Number):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-resizeRowHeaders Sencha Docs Ext JS 3.4
   */
  public native function resizeRowHeaders():void;

  /**
   * Sets the title text in the top left segment of the PivotGridView
   *
   * @param title The title
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-setTitle Sencha Docs Ext JS 3.4
   */
  public native function setTitle(title:String):void;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.PivotGridView-method-updateHeaders Sencha Docs Ext JS 3.4
   */
  override public native function updateHeaders():void;

}
}
    