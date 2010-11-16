package ext.grid {
import ext.Editor;
import ext.form.Field;

/**
 * <p>This class encapsulates column configuration data to be used in the initialization of a
 * <b class='link' title='Ext.grid.ColumnModel'>ColumnModel</b>.</p>
 * <p>While subclasses are provided to render data in different ways, this class renders a passed
 * data field unchanged and is usually used for textual columns.</p>
 */
public class Column {
  public static var AUTO_ID : int = 0;
/**
     * @cfg {Boolean} editable Optional. Defaults to <code>true</code>, enabling the configured
     * <code><b class='link' title='#editor'>editor</b></code>.  Set to <code>false</code> to initially disable editing on this column.
     * The initial configuration may be dynamically altered using
     * <b class='link'>Ext.grid.ColumnModel</b>.<b class='link' title='Ext.grid.ColumnModel#setEditable'>setEditable()</b>.
     */
    /**
     * @cfg {String} id Optional. A name which identifies this column (defaults to the column's initial
     * ordinal position.) The <code>id</code> is used to create a CSS <b>class</b> name which is applied to all
     * table cells (including headers) in that column (in this context the <code>id</code> does not need to be
     * unique). The class name takes the form of <pre>x-grid3-td-<b>id</b></pre>
     * Header cells will also receive this class name, but will also have the class <pre>x-grid3-hd</pre>
     * So, to target header cells, use CSS selectors such as:<pre>.x-grid3-hd-row .x-grid3-td-<b>id</b></pre>
     * The <b class='link'>Ext.grid.GridPanel#autoExpandColumn</b> grid config option references the column via this
     * unique identifier.
     */
    /**
     * @cfg {String} header Optional. The header text to be used as innerHTML
     * (html tags are accepted) to display in the Grid view.  <b>Note</b>: to
     * have a clickable header with no text displayed use <code>'&#160;'</code>.
     */
    /**
     * @cfg {Boolean} groupable Optional. If the grid is being rendered by an <b class='link'>Ext.grid.GroupingView</b>, this option
     * may be used to disable the header menu item to group by the column selected. Defaults to <code>true</code>,
     * which enables the header menu group option.  Set to <code>false</code> to disable (but still show) the
     * group option in the header menu for the column. See also <code><b class='link' title='#groupName'>groupName</b></code>.
     */
    /**
     * @cfg {String} groupName Optional. If the grid is being rendered by an <b class='link'>Ext.grid.GroupingView</b>, this option
     * may be used to specify the text with which to prefix the group field value in the group header line.
     * See also <b class='link' title='#groupRenderer'>groupRenderer</b> and
     * <b class='link'>Ext.grid.GroupingView</b>.<b class='link' title='Ext.grid.GroupingView#showGroupName'>showGroupName</b>.
     */
    /**
     * @cfg {Function} groupRenderer <p>Optional. If the grid is being rendered by an <b class='link'>Ext.grid.GroupingView</b>, this option
     * may be used to specify the function used to format the grouping field value for display in the group
     * <b class='link' title='#groupName'>header</b>.  If a <code><b>groupRenderer</b></code> is not specified, the configured
     * <code><b class='link' title='#renderer'>renderer</b></b></code> will be called; if a <code><b><b class='link' title='#renderer'>renderer</b></code> is also not specified
     * the new value of the group field will be used.</p>
     * <p>The called function (either the <code><b>groupRenderer</b></code> or <code><b class='link' title='#renderer'>renderer</b></code>) will be
     * passed the following parameters:
     * <div class="mdetail-params"><ul>
     * <li><b>v</b> : Object<p class="sub-desc">The new value of the group field.</p></li>
     * <li><b>unused</b> : undefined<p class="sub-desc">Unused parameter.</p></li>
     * <li><b>r</b> : ext.data.Record<p class="sub-desc">The Record providing the data
     * for the row which caused group change.</p></li>
     * <li><b>rowIndex</b> : Number<p class="sub-desc">The row index of the Record which caused group change.</p></li>
     * <li><b>colIndex</b> : Number<p class="sub-desc">The column index of the group field.</p></li>
     * <li><b>ds</b> : ext.data.Store<p class="sub-desc">The Store which is providing the data Model.</p></li>
     * </ul></div></p>
     * <p>The function should return a string value.</p>
     */
    /**
     * @cfg {String} emptyGroupText Optional. If the grid is being rendered by an <b class='link'>Ext.grid.GroupingView</b>, this option
     * may be used to specify the text to display when there is an empty group value. Defaults to the
     * <b class='link'>Ext.grid.GroupingView</b>.<b class='link' title='Ext.grid.GroupingView#emptyGroupText'>emptyGroupText</b>.
     */
    /**
     * @cfg {String} dataIndex <p><b>Required</b>. The name of the field in the
     * grid's <b class='link'>ext.data.Store</b>'s <b class='link'>ext.data.Record</b> definition from
     * which to draw the column's value.</p>
     */
    /**
     * @cfg {Number} width
     * Optional. The initial width in pixels of the column.
     * The width of each column can also be affected if any of the following are configured:
     * <div class="mdetail-params"><ul>
     * <li><b class='link'>Ext.grid.GridPanel</b>.<code><b class='link' title='Ext.grid.GridPanel#autoExpandColumn'>autoExpandColumn</b></code></li>
     * <li><b class='link'>Ext.grid.GridView</b>.<code><b class='link' title='Ext.grid.GridView#forceFit'>forceFit</b></code>
     * <div class="sub-desc">
     * <p>By specifying <code>forceFit:true</code>, <b class='link' title='#fixed non-fixed'>width</b> columns will be
     * re-proportioned (based on the relative initial widths) to fill the width of the grid so
     * that no horizontal scrollbar is shown.</p>
     * </div></li>
     * <li><b class='link'>Ext.grid.GridView</b>.<code><b class='link' title='Ext.grid.GridView#autoFill'>autoFill</b></code></li>
     * <li><b class='link'>Ext.grid.GridPanel</b>.<code><b class='link' title='Ext.grid.GridPanel#minColumnWidth'>minColumnWidth</b></code></li>
     * <br><p><b>Note</b>: when the width of each column is determined, a space on the right side
     * is reserved for the vertical scrollbar.  The
     * <b class='link'>Ext.grid.GridView</b>.<code><b class='link' title='Ext.grid.GridView#scrollOffset'>scrollOffset</b></code>
     * can be modified to reduce or eliminate the reserved offset.</p>
     */
    /**
     * @cfg {Boolean} sortable Optional. <code>true</code> if sorting is to be allowed on this column.
     * Defaults to the value of the <b class='link' title='#defaultSortable'>defaultSortable</b> property.
     * Whether local/remote sorting is used is specified in <b class='link'>ext.data.Store#remoteSort</b>.
     */
    /**
     * @cfg {Boolean} fixed Optional. <code>true</code> if the column width cannot be changed.  Defaults to <code>false</code>.
     */
    /**
     * @cfg {Boolean} resizable Optional. <code>false</code> to disable column resizing. Defaults to <code>true</code>.
     */
    /**
     * @cfg {Boolean} menuDisabled Optional. <code>true</code> to disable the column menu. Defaults to <code>false</code>.
     */
    /**
     * @cfg {Boolean} hidden Optional. <code>true</code> to hide the column. Defaults to <code>false</code>.
     */
    /**
     * @cfg {String} tooltip Optional. A text string to use as the column header's tooltip.  If Quicktips
     * are enabled, this value will be used as the text of the quick tip, otherwise it will be set as the
     * header's HTML title attribute. Defaults to ''.
     */
    /**
     * @cfg {Mixed} renderer
     * <p>For an alternative to specifying a renderer see <code><b class='link' title='#xtype'>xtype</b></code></p>
     * <p>Optional. A renderer is an 'interceptor' method which can be used transform data (value,
     * appearance, etc.) before it is rendered). This may be specified in either of three ways:
     * <div class="mdetail-params"><ul>
     * <li>A renderer function used to return HTML markup for a cell given the cell's data value.</li>
     * <li>A string which references a property name of the <b class='link'>Ext.util.Format</b> class which
     * provides a renderer function.</li>
     * <li>An object specifying both the renderer function, and its execution scope (<code><b>this</b></code>
     * reference) e.g.:<pre style="margin-left:1.2em"><code>
{
    fn: this.gridRenderer,
    scope: this
}
</code></pre></li></ul></div>
     * If not specified, the default renderer uses the raw data value.</p>
     * <p>For information about the renderer function (passed parameters, etc.), see
     * <b class='link'>Ext.grid.ColumnModel#setRenderer</b>. An example of specifying renderer function inline:</p><pre><code>
var companyColumn = {
   header: 'Company Name',
   dataIndex: 'company',
   renderer: function(value, metaData, record, rowIndex, colIndex, store) {
      // provide the logic depending on business rules
      // name of your own choosing to manipulate the cell depending upon
      // the data in the underlying Record object.
      if (value == 'whatever') {
          //metaData.css : String : A CSS class name to add to the TD element of the cell.
          //metaData.attr : String : An html attribute definition string to apply to
          //                         the data container element within the table
          //                         cell (e.g. 'style="color:red;"').
          metaData.css = 'name-of-css-class-you-will-define';
      }
      return value;
   }
}
     * </code></pre>
     * See also <b class='link' title='#scope'>scope</b>.
     */
    /**
     * @cfg {String} xtype Optional. A String which references a predefined <b class='link'>Ext.grid.Column</b> subclass
     * type which is preconfigured with an appropriate <code><b class='link' title='#renderer'>renderer</b></code> to be easily
     * configured into a ColumnModel. The predefined <b class='link'>Ext.grid.Column</b> subclass types are:
     * <div class="mdetail-params"><ul>
     * <li><b><code>gridcolumn</code></b> : <b class='link'>Ext.grid.Column</b> (<b>Default</b>)<p class="sub-desc"></p></li>
     * <li><b><code>booleancolumn</code></b> : <b class='link'>Ext.grid.BooleanColumn</b><p class="sub-desc"></p></li>
     * <li><b><code>numbercolumn</code></b> : <b class='link'>Ext.grid.NumberColumn</b><p class="sub-desc"></p></li>
     * <li><b><code>datecolumn</code></b> : <b class='link'>Ext.grid.DateColumn</b><p class="sub-desc"></p></li>
     * <li><b><code>templatecolumn</code></b> : <b class='link'>Ext.grid.TemplateColumn</b><p class="sub-desc"></p></li>
     * </ul></div>
     * <p>Configuration properties for the specified <code>xtype</code> may be specified with
     * the Column configuration properties, for example:</p>
     * <pre><code>
var grid = new Ext.grid.GridPanel({
    ...
    columns: [{
        header: 'Last Updated',
        dataIndex: 'lastChange',
        width: 85,
        sortable: true,
        //renderer: Ext.util.Format.dateRenderer('m/d/Y'),
        xtype: 'datecolumn', // use xtype instead of renderer
        format: 'M/d/Y' // configuration property for <b class='link'>Ext.grid.DateColumn</b>
    }, {
        ...
    }]
});
     * </code></pre>
     */
    /**
     * @cfg {Object} scope Optional. The scope (<code><b>this</b></code> reference) in which to execute the
     * renderer.  Defaults to the Column configuration object.
     */
    /**
     * @cfg {String} align Optional. Set the CSS text-align property of the column.  Defaults to undefined.
     */
    /**
     * @cfg {String} css Optional. An inline style definition string which is applied to all table cells in the column
     * (excluding headers). Defaults to undefined.
     */
    /**
     * @cfg {Boolean} hideable Optional. Specify as <code>false</code> to prevent the user from hiding this column
     * (defaults to true).  To disallow column hiding globally for all columns in the grid, use
     * <b class='link'>Ext.grid.GridPanel#enableColumnHide</b> instead.
     */
    /**
     * @cfg {ext.form.Field} editor Optional. The <b class='link'>ext.form.Field</b> to use when editing values in this column
     * if editing is supported by the grid. See <code><b class='link' title='#editable'>editable</b></code> also.
     */
    public var isColumn  : Field;
    /**
     * Optional. A function which returns displayable data when passed the following parameters:
     * <div class="mdetail-params"><ul>
     * <li><b>value</b> : Object<p class="sub-desc">The data value for the cell.</p></li>
     * <li><b>metadata</b> : Object<p class="sub-desc">An object in which you may set the following attributes:<ul>
     * <li><b>css</b> : String<p class="sub-desc">A CSS class name to add to the cell's TD element.</p></li>
     * <li><b>attr</b> : String<p class="sub-desc">An HTML attribute definition string to apply to the data container
     * element <i>within</i> the table cell (e.g. 'style="color:red;"').</p></li></ul></p></li>
     * <li><b>record</b> : Ext.data.record<p class="sub-desc">The <b class='link'>ext.data.Record</b> from which the data was
     * extracted.</p></li>
     * <li><b>rowIndex</b> : Number<p class="sub-desc">Row index</p></li>
     * <li><b>colIndex</b> : Number<p class="sub-desc">Column index</p></li>
     * <li><b>store</b> : ext.data.Store<p class="sub-desc">The <b class='link'>ext.data.Store</b> object from which the Record
     * was extracted.</p></li>
     * </ul></div>
     * @property renderer
     */
    public native function renderer(value) : void;
    protected native function getEditor(rowIndex : int) : void;
    /**
     * Returns the <b class='link' title='ext.Editor'>editor</b> defined for this column that was created to wrap the <b class='link' title='ext.form.Field'>Field</b>
     * used to edit the cell.
     * @param rowIndex The row index
     * @return 
     */
    public native function getCellEditor(rowIndex : Number) : Editor;
}}
