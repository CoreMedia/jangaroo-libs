package ext.grid {
/**
 * A custom selection model that renders a column of checkboxes that can be toggled to select or deselect rows.
*/
public class CheckboxSelectionModel extends RowSelectionModel {
/**
 * @constructor
 * @param config The configuration options
 */
public function CheckboxSelectionModel(config : Object) {
  super(config);
}
    /**
     * @cfg {Boolean} checkOnly <tt>true</tt> if rows can only be selected by clicking on the
     * checkbox column (defaults to <tt>false</tt>).
     */
    /**
     * @cfg {String} header Any valid text or HTML fragment to display in the header cell for the
     * checkbox column.  Defaults to:<pre><code>
     * '&lt;div class="x-grid3-hd-checker">&#38;#160;&lt;/div>'</tt>
     * </code></pre>
     * The default CSS class of <tt>'x-grid3-hd-checker'</tt> displays a checkbox in the header
     * and provides support for automatic check all/none behavior on header click. This string
     * can be replaced by any valid HTML fragment, including a simple text string (e.g.,
     * <tt>'Select Rows'</tt>), but the automatic check all/none behavior will only work if the
     * <tt>'x-grid3-hd-checker'</tt> class is supplied.
     */
    public var header : String;
    /**
     * @cfg {Number} width The default width in pixels of the checkbox column (defaults to <tt>20</tt>).
     */
    public var width : Number;
    /**
     * @cfg {Boolean} sortable <tt>true</tt> if the checkbox column is sortable (defaults to
     * <tt>false</tt>).
     */
    public var sortable : Boolean;
    protected var menuDisabled;
    public var fixed;
    public var dataIndex;
    public var id;
    public native function constructor() : void;
    override protected native function initEvents() : void;
    protected native function onMouseDown(e, t) : void;
    protected native function onHdMouseDown(e, t) : void;
    protected native function renderer(v, p, record) : void;
}}
