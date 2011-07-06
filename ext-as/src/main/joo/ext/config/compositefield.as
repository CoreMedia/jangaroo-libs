package ext.config {


/**
 * Composite field allowing a number of form Fields to be rendered on the same row. The fields are rendered using an hbox layout internally, so all of the normal HBox layout config items are available. Example usage: <pre>{
 xtype: 'compositefield',
 labelWidth: 120
 items: [
 {
 xtype     : 'textfield',
 fieldLabel: 'Title',
 width     : 20
 },
 {
 xtype     : 'textfield',
 fieldLabel: 'First',
 flex      : 1
 },
 {
 xtype     : 'textfield',
 fieldLabel: 'Last',
 flex      : 1
 }
 ]
 }
 </pre>In the example above the composite's fieldLabel will be set to 'Title, First, Last' as it groups the fieldLabels of each of its children. This can be overridden by setting a fieldLabel on the compositefield itself: <pre>{
 xtype: 'compositefield',
 fieldLabel: 'Custom label',
 items: [...]
 }
 </pre>Any Ext.form.&#42; component can be placed inside a composite field.
 * <p>This class serves as a typed config object for constructor of class CompositeField.</p>
 *
 * @see ext.form.CompositeField
 */
[ExtConfig(target="ext.form.CompositeField")]
public class compositefield extends field {

  public function compositefield(config:Object = null) {

    super(config);
  }


  /**
   Any default properties to assign to the child fields.
   */
  public native function get defaults():Object;

  /**
   * @private
   */
  public native function set defaults(value:Object):void;

  /**
   The string to use when joining segments of the built label together (defaults to ', ')
   */
  public native function get labelConnector():String;

  /**
   * @private
   */
  public native function set labelConnector(value:String):void;


}
}
    