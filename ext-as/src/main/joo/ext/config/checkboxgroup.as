package ext.config {


/**
 * A grouping container for <a href="Ext.form.Checkbox.html">Ext.form.Checkbox</a> controls.
 <p>Sample usage:</p><pre><code>var myCheckboxGroup = new Ext.form.CheckboxGroup({
 id:'myGroup',
 xtype: 'checkboxgroup',
 fieldLabel: 'Single Column',
 itemCls: 'x-check-group-alt',
 // Put all controls in a single column with width 100%
 columns: 1,
 items: [
 {boxLabel: 'Item 1', name: 'cb-col-1'},
 {boxLabel: 'Item 2', name: 'cb-col-2', checked: true},
 {boxLabel: 'Item 3', name: 'cb-col-3'}
 ]
 });
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class CheckboxGroup.</p>
 *
 * @see ext.form.CheckboxGroup
 */
[ExtConfig(target="ext.form.CheckboxGroup")]
public class checkboxgroup extends field {

  public function checkboxgroup(config:Object = null) {

    super(config);
  }


  /**
   False to validate that at least one item in the group is checked (defaults to true). If no items are selected at validation time, {&#64;link
   */
  public native function get allowBlank():Boolean;

  /**
   * @private
   */
  public native function set allowBlank(value:Boolean):void;

  /**
   Error text to display if the <a href="output/Ext.form.CheckboxGroup.html#Ext.form.CheckboxGroup-allowBlank">allowBlank</a> validation fails (defaults to "You must select at least one item in this group")
   */
  public native function get blankText():String;

  /**
   * @private
   */
  public native function set blankText(value:String):void;

  /**
   Specifies the number of columns to use when displaying grouped checkbox/radio controls using automatic layout. This config can take several types of values: <ul><li><b>'auto'</b> : <p class="sub-desc">The controls will be rendered one per column on one row and the width of each column will be evenly distributed based on the width of the overall field container. This is the default.</p></li><li><b>Number</b> : <p class="sub-desc">If you specific a number (e.g., 3) that number of columns will be created and the contained controls will be automatically distributed based on the value of <a href="output/Ext.form.CheckboxGroup.html#Ext.form.CheckboxGroup-vertical">vertical</a>.</p></li><li><b>Array</b> : Object<p class="sub-desc">You can also specify an array of column widths, mixing integer (fixed width) and float (percentage width) values as needed (e.g., [100, .25, .75]). Any integer values will be rendered first, then any float values will be calculated as a percentage of the remaining space. Float values do not have to add up to 1 (100%) although if you want the controls to take up the entire field container you should do so.</p></li></ul>
   */
  public native function get columns():*;

  /**
   * @private
   */
  public native function set columns(value:*):void;

  /**
   An Array of <a href="Ext.form.Checkbox.html">Checkbox</a>es or Checkbox config objects to arrange in the group.
   */
  public native function get items():Array;

  /**
   * @private
   */
  public native function set items(value:Array):void;

  /**
   True to distribute contained controls across columns, completely filling each column top to bottom before starting on the next column. The number of controls in each column will be automatically calculated to keep columns as even as possible. The default value is false, so that controls will be added to columns one at a time, completely filling each row left to right before starting on the next row.
   */
  public native function get vertical():Boolean;

  /**
   * @private
   */
  public native function set vertical(value:Boolean):void;


}
}
    