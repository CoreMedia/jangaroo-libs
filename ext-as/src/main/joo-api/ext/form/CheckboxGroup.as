package ext.form {


/**
 * Fires when the state of a child checkbox changes.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.CheckboxGroup</code>

 *       </li>

 *       <li>
 *           <code>checked:Array</code>
 An array containing the checked boxes.
 *       </li>

 * </ul>
 */
[Event(name="change")]


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
 * <p>This component is created by the xtype 'checkboxgroup' / the EXML element &lt;checkboxgroup>.</p>
 * @see ext.config.checkboxgroup
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckboxGroup.html#cls-Ext.form.CheckboxGroup Ext JS source
 */
public class CheckboxGroup extends Field {

  /**
   * Creates a new CheckboxGroup
   *
   * @param config Configuration options
   * @see ext.config.checkboxgroup
   */
  public function CheckboxGroup(config:Object) {
    super(null);
  }

  /**
   False to validate that at least one item in the group is checked (defaults to true). If no items are selected at validation time, {&#64;link
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowBlank():Boolean;

  /**
   Error text to display if the <a href="output/Ext.form.CheckboxGroup.html#Ext.form.CheckboxGroup-allowBlank">allowBlank</a> validation fails (defaults to "You must select at least one item in this group")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get blankText():String;

  /**
   Specifies the number of columns to use when displaying grouped checkbox/radio controls using automatic layout. This config can take several types of values: <ul><li><b>'auto'</b> : <p class="sub-desc">The controls will be rendered one per column on one row and the width of each column will be evenly distributed based on the width of the overall field container. This is the default.</p></li><li><b>Number</b> : <p class="sub-desc">If you specific a number (e.g., 3) that number of columns will be created and the contained controls will be automatically distributed based on the value of <a href="output/Ext.form.CheckboxGroup.html#Ext.form.CheckboxGroup-vertical">vertical</a>.</p></li><li><b>Array</b> : Object<p class="sub-desc">You can also specify an array of column widths, mixing integer (fixed width) and float (percentage width) values as needed (e.g., [100, .25, .75]). Any integer values will be rendered first, then any float values will be calculated as a percentage of the remaining space. Float values do not have to add up to 1 (100%) although if you want the controls to take up the entire field container you should do so.</p></li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get columns():*;

  /**
   An Array of <a href="Ext.form.Checkbox.html">Checkbox</a>es or Checkbox config objects to arrange in the group.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get items():Array;

  /**
   True to distribute contained controls across columns, completely filling each column top to bottom before starting on the next column. The number of controls in each column will be automatically calculated to keep columns as even as possible. The default value is false, so that controls will be added to columns one at a time, completely filling each row left to right before starting on the next row.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get vertical():Boolean;

  /**
   *
   *
   * @param fn The function to call
   * @param scope Optional scope object
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckboxGroup.html#method-Ext.form.CheckboxGroup-eachItem Ext JS source
   */
  public native function eachItem(fn:Function, scope:Object):void;

  /**
   * Runs CheckboxGroup's validations and returns an array of any errors. The only error by default is if allowBlank is set to true and no items are checked.
   *
   * @param value The value to validate. The processed raw value will be used if nothing is passed
   * @return Array of all validation errors
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckboxGroup.html#method-Ext.form.CheckboxGroup-getErrors Ext JS source
   */
  override public native function getErrors(value:* = null):Array;

  /**
   * Gets an array of the selected <a href="Ext.form.Checkbox.html">Ext.form.Checkbox</a> in the group.
   *
   * @return An array of the selected checkboxes.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckboxGroup.html#method-Ext.form.CheckboxGroup-getValue Ext JS source
   */
  override public native function getValue():*;

  /**
   *
   *
   * @param id Can take multiple forms. Can be optionally: <ul><li>An ID string to be used with a second argument</li><li>An array of the form ['some', 'list', 'of', 'ids', 'to', 'mark', 'checked']</li><li>An array in the form [true, true, false, true, false] etc, where each item relates to the check status of the checkbox at the same index</li><li>An object containing ids of the checkboxes as keys and check values as properties</li></ul>
   * @param value The value to set the field to if the first argument was a string
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckboxGroup.html#method-Ext.form.CheckboxGroup-onSetValue Ext JS source
   */
  public native function onSetValue(id:*, value:String):void;

  /**
   * <a href="output/Ext.form.Checkbox.html#Ext.form.Checkbox-setValue">Set the value(s)</a> of an item or items in the group. Examples illustrating how this method may be called: <pre><code>// call with name and value
   myCheckboxGroup.setValue('cb-col-1', true);
   // call with an array of boolean values
   myCheckboxGroup.setValue([true, false, false]);
   // call with an object literal specifying item:value pairs
   myCheckboxGroup.setValue({
   'cb-col-2': false,
   'cb-col-3': true
   });
   // use comma separated string to set items with name to true (checked)
   myCheckboxGroup.setValue('cb-col-1,cb-col-3');
   </code></pre>See <a href="output/Ext.form.Checkbox.html#Ext.form.Checkbox-setValue">Ext.form.Checkbox.setValue</a> for additional information.
   *
   * @param value The value to set
   * @param flag a boolean flag used by some subclasses
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CheckboxGroup.html#method-Ext.form.CheckboxGroup-setValue Ext JS source
   */
  override public native function setValue(value:*, flag:Boolean = false):Field;

}
}
    