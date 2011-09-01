package ext.picker {

import ext.DataView;
import ext.config.pickerslot;

/**
 * A general picker slot class. Slots are used to organize multiple scrollable slots into a single picker See also: <a href="Ext.Picker.html">Ext.Picker</a>

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'pickerslot' / the EXML element &lt;pickerslot>.</p>
 * @see ext.config.pickerslot
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#cls-Ext.Picker.Slot Ext JS source
 */
public class Slot extends DataView {

  /**
   * Create a new Picker Slot
   *
   * @param config The config object
   * @see ext.config.pickerslot
   */
  public function Slot(config:pickerslot) {
    super(null);
  }

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#prop-Ext.Picker.Slot-selectedIndex Ext JS source
   */
  public native function get selectedIndex():Object;

  /**
   * @private
   */
  public native function set selectedIndex(value:Object):void;

  /**
   The alignment of this slot. Defaults to 'center'
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get align():String;

  /**
   The display field in the store. Defaults to 'text'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get displayField():String;

  /**
   The name of this slot. This config option is required.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get name():String;

  /**
   The value field in the store. Defaults to 'value'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get valueField():String;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-afterComponentLayout Ext JS source
   */
  public native function afterComponentLayout():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-getElConfig Ext JS source
   */
  public native function getElConfig():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-getSelectedNode Ext JS source
   */
  public native function getSelectedNode():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-getValue Ext JS source
   */
  public native function getValue():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-initComponent Ext JS source
   */
  public native function initComponent():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-initEvents Ext JS source
   */
  public native function initEvents():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-onItemTap Ext JS source
   */
  public native function onItemTap():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-onScrollEnd Ext JS source
   */
  public native function onScrollEnd():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-scrollToNode Ext JS source
   */
  public native function scrollToNode():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-setSelectedNode Ext JS source
   */
  public native function setSelectedNode():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-setValue Ext JS source
   */
  public native function setValue():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker.Slot-setupBar Ext JS source
   */
  public native function setupBar():void;

}
}
    