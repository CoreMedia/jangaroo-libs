package ext.form {

import ext.config.selectfield;
import ext.data.Store;

/**
 * Fires when an option selection has changed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Select</code>

 *       </li>

 *       <li>
 *           <code>value:&#42;</code>

 *       </li>

 * </ul>
 */
[Event(name="change")]


/**
 * Simple Select field wrapper. Example usage: <pre><code>new Ext.form.Select({
 options: [
 {text: 'First Option',  value: 'first'},
 {text: 'Second Option', value: 'second'},
 {text: 'Third Option',  value: 'third'}
 ]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'selectfield' / the EXML element &lt;selectfield>.</p>
 * @see ext.config.selectfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Select.html#cls-Ext.form.Select Ext JS source
 */
public class Select extends Text {

  /**
   * Create a new Select.
   *
   * @param config The config object
   * @see ext.config.selectfield
   */
  public function Select(config:selectfield = null) {
    super(null);
  }

  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data value name</a> (or numeric Array index) to bind to this Select control. This resolved value is the visibly rendered value of the available selection options. (defaults to 'text')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get displayField():*;

  /**
   Specify a hiddenName if you're using the <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-standardSubmit">standardSubmit</a> option. This name will be used to post the underlying value of the select to the server.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hiddenName():String;

  /**
   An array of select options. <pre><code>   [
   {text: 'First Option',  value: 'first'},
   {text: 'Second Option', value: 'second'},
   {text: 'Third Option',  value: 'third'}
   ]
   </code></pre>Note: option object member names should correspond with defined <a href="output/Ext.form.Select.html#Ext.form.Select-valueField">valueField</a> and <a href="output/Ext.form.Select.html#Ext.form.Select-displayField">displayField</a> values. This config will be ignore if a <a href="output/Ext.form.Select.html#Ext.form.Select-store">store</a> instance is provided
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get options():Array;

  /**
   store instance used to provide selection options data.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get store():Store;

  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data value name</a> (or numeric Array index) to bind to this Select control. (defaults to 'value')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get valueField():*;

  /**
   * Updates the underlying &lt;options&gt; list with new values.
   *
   * @param options An array of options configurations to insert or append.
   * @param append <tt>true</tt> to append the new options existing values. <pre><code>selectBox.setOptions(
   [   {text: 'First Option',  value: 'first'},
   {text: 'Second Option', value: 'second'},
   {text: 'Third Option',  value: 'third'}
   ]).setValue('third');
   </code></pre>Note: option object member names should correspond with defined <a href="output/Ext.form.Select.html#Ext.form.Select-valueField">valueField</a> and <a href="output/Ext.form.Select.html#Ext.form.Select-displayField">displayField</a> values.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Select.html#method-Ext.form.Select-setOptions Ext JS source
   */
  public native function setOptions(options:Array, append:Boolean):Select;

}
}
    