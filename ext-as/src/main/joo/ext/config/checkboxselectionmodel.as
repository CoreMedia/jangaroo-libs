package ext.config {


/**
 * A custom selection model that renders a column of checkboxes that can be toggled to select or deselect rows.
 * <p>This class serves as a typed config object for constructor of class CheckboxSelectionModel.</p>
 *
 * @see ext.grid.CheckboxSelectionModel
 */
[ExtConfig(target="ext.grid.CheckboxSelectionModel")]
public class checkboxselectionmodel extends rowselectionmodel {

  public function checkboxselectionmodel(config:Object = null) {

    super(config);
  }


  /**
   <tt>true</tt> if rows can only be selected by clicking on the checkbox column (defaults to <tt>false</tt>).
   */
  public native function get checkOnly():Boolean;

  /**
   * @private
   */
  public native function set checkOnly(value:Boolean):void;

  /**
   Any valid text or HTML fragment to display in the header cell for the checkbox column. Defaults to:<pre><code>'&lt;div class="x-grid3-hd-checker"&gt;&amp;#160;&lt;/div&gt;'</code>
   </pre>The default CSS class of <tt>'x-grid3-hd-checker'</tt> displays a checkbox in the header and provides support for automatic check all/none behavior on header click. This string can be replaced by any valid HTML fragment, including a simple text string (e.g., <tt>'Select Rows'</tt>), but the automatic check all/none behavior will only work if the <tt>'x-grid3-hd-checker'</tt> class is supplied.
   */
  public native function get header():String;

  /**
   * @private
   */
  public native function set header(value:String):void;

  /**
   <tt>true</tt> if the checkbox column is sortable (defaults to <tt>false</tt>).
   */
  public native function get sortable():Boolean;

  /**
   * @private
   */
  public native function set sortable(value:Boolean):void;

  /**
   The default width in pixels of the checkbox column (defaults to <tt>20</tt>).
   */
  public native function get width():Number;

  /**
   * @private
   */
  public native function set width(value:Number):void;


}
}
    