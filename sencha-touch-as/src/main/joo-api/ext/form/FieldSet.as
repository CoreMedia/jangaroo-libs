package ext.form {

import ext.Container;
import ext.config.fieldset;

/**
 * Simple FieldSet, can contain fields as items. FieldSets do not add any behavior, other than an optional title, and are just used to group similar fields together. Example usage (within a form):
 <pre><code>new Ext.form.FormPanel({
 items: [
 {
 xtype: 'fieldset',
 title: 'About Me',
 items: [
 {
 xtype: 'textfield',
 name : 'firstName',
 label: 'First Name'
 },
 {
 xtype: 'textfield',
 name : 'lastName',
 label: 'Last Name'
 }
 ]
 }
 ]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'fieldset' / the EXML element &lt;fieldset>.</p>
 * @see ext.config.fieldset
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FieldSet.html#cls-Ext.form.FieldSet Ext JS source
 */
[Native]
public class FieldSet extends Container {

  /**
   * Create a new FieldSet.
   *
   * @param config The config object
   * @see ext.config.fieldset
   */
  public function FieldSet(config:fieldset = null) {
    super(null);
  }

  /**
   Optional fieldset instructions, rendered just below the grouped fields
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get instructions():String;

  /**
   Optional fieldset title, rendered just above the grouped fields
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get title():String;

  /**
   * Sets the instructions of the current fieldset.
   *
   * @param instructions The new instructions
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FieldSet.html#method-Ext.form.FieldSet-setInstructions Ext JS source
   */
  public native function setInstructions(instructions:String):FieldSet;

  /**
   * Sets the title of the current fieldset.
   *
   * @param title The new title
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/FieldSet.html#method-Ext.form.FieldSet-setTitle Ext JS source
   */
  public native function setTitle(title:String):FieldSet;

}
}
    