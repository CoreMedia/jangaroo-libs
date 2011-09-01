package ext.config {


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
 * <p>This class represents the xtype 'fieldset' and serves as a
 * typed config object for constructor of class FieldSet.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.FieldSet
 */
[ExtConfig(target="ext.form.FieldSet", xtype="fieldset")]
public class fieldset extends container {

  public function fieldset(config:Object = null) {

    super(config);
  }


  /**
   Optional fieldset instructions, rendered just below the grouped fields
   */
  public native function get instructions():String;

  /**
   * @private
   */
  public native function set instructions(value:String):void;

  /**
   Optional fieldset title, rendered just above the grouped fields
   */
  public native function get title():String;

  /**
   * @private
   */
  public native function set title(value:String):void;


}
}
    