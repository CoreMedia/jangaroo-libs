package ext.config {


/**
 * A general picker slot class. Slots are used to organize multiple scrollable slots into a single picker See also: <a href="Ext.Picker.html">Ext.Picker</a>

 *
 * <p>This class represents the xtype 'pickerslot' and serves as a
 * typed config object for constructor of class Slot.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.picker.Slot
 */
[ExtConfig(target="ext.picker.Slot", xtype="pickerslot")]
public class pickerslot extends dataview {

  public function pickerslot(config:Object = null) {

    super(config);
  }


  /**
   The alignment of this slot. Defaults to 'center'
   */
  public native function get align():String;

  /**
   * @private
   */
  public native function set align(value:String):void;

  /**
   The main component class
   */
  override public native function get componentCls():String;

  /**
   * @private
   */
  override public native function set componentCls(value:String):void;

  /**
   The display field in the store. Defaults to 'text'.
   */
  public native function get displayField():String;

  /**
   * @private
   */
  public native function set displayField(value:String):void;

  /**
   The name of this slot. This config option is required.
   */
  public native function get name():String;

  /**
   * @private
   */
  public native function set name(value:String):void;

  /**
   The renderTpl of the slot.
   */
  override public native function get renderTpl():*;

  /**
   * @private
   */
  override public native function set renderTpl(value:*):void;

  /**
   The value field in the store. Defaults to 'value'.
   */
  public native function get valueField():String;

  /**
   * @private
   */
  public native function set valueField(value:String):void;


}
}
    