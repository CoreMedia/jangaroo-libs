package ext.config {

import ext.data.Store;

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
 * <p>This class represents the xtype 'selectfield' and serves as a
 * typed config object for constructor of class Select.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Select
 */
[ExtConfig(target="ext.form.Select", xtype="selectfield")]
public class selectfield extends textfield {

  public function selectfield(config:Object = null) {

    super(config);
  }


  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data value name</a> (or numeric Array index) to bind to this Select control. This resolved value is the visibly rendered value of the available selection options. (defaults to 'text')
   */
  public native function get displayField():*;

  /**
   * @private
   */
  public native function set displayField(value:*):void;

  /**
   Specify a hiddenName if you're using the <a href="output/Ext.form.FormPanel.html#Ext.form.FormPanel-standardSubmit">standardSubmit</a> option. This name will be used to post the underlying value of the select to the server.
   */
  public native function get hiddenName():String;

  /**
   * @private
   */
  public native function set hiddenName(value:String):void;

  /**
   An array of select options. <pre><code>   [
   {text: 'First Option',  value: 'first'},
   {text: 'Second Option', value: 'second'},
   {text: 'Third Option',  value: 'third'}
   ]
   </code></pre>Note: option object member names should correspond with defined <a href="output/Ext.form.Select.html#Ext.form.Select-valueField">valueField</a> and <a href="output/Ext.form.Select.html#Ext.form.Select-displayField">displayField</a> values. This config will be ignore if a <a href="output/Ext.form.Select.html#Ext.form.Select-store">store</a> instance is provided
   */
  public native function get options():Array;

  /**
   * @private
   */
  public native function set options(value:Array):void;

  /**
   store instance used to provide selection options data.
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;

  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data value name</a> (or numeric Array index) to bind to this Select control. (defaults to 'value')
   */
  public native function get valueField():*;

  /**
   * @private
   */
  public native function set valueField(value:*):void;


}
}
    