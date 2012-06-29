package ext.form {
import ext.config.radiogroup;

/**
 * Fires when the state of a child radio changes.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.RadioGroup</code>

 *       </li>

 *       <li>
 *           <code>checked:ext.form.Radio</code>
 The checked radio
 *       </li>

 * </ul>
 */
[Event(name="change")]


/**
 * A grouping container for <a href="Ext.form.Radio.html">Ext.form.Radio</a> controls.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'radiogroup' / the EXML element &lt;radiogroup>.</p>
 * @see ext.config.radiogroup
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.RadioGroup Sencha Docs Ext JS 3.4
 */
[Native]
public class RadioGroup extends CheckboxGroup {

  /**
   * Creates a new RadioGroup
   *
   * @param config Configuration options
   * @see ext.config.radiogroup
   */
  public function RadioGroup(config:radiogroup) {
    super(null);
  }

  /**
   * Gets the selected <a href="Ext.form.Radio.html">Ext.form.Radio</a> in the group, if it exists.
   *
   * @return The selected radio.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.RadioGroup-method-getValue Sencha Docs Ext JS 3.4
   */
  override public native function getValue():*;

  /**
   * Sets the checked radio in the group.
   *
   * @param id Can take multiple forms. Can be optionally: <ul><li>An ID string to be used with a second argument</li><li>An array of the form ['some', 'list', 'of', 'ids', 'to', 'mark', 'checked']</li><li>An array in the form [true, true, false, true, false] etc, where each item relates to the check status of the checkbox at the same index</li><li>An object containing ids of the checkboxes as keys and check values as properties</li></ul>
   * @param value The value to set the field to if the first argument was a string
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.RadioGroup-method-onSetValue Sencha Docs Ext JS 3.4
   */
  override public native function onSetValue(id:*, value:String):void;

}
}
    