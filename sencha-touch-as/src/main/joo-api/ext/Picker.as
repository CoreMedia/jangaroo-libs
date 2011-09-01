package ext {

import ext.config.picker;

/**
 * Fired when the cancel button is tapped and the values are reverted back to what they were
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Picker</code>
 This Picker
 *       </li>

 * </ul>
 */
[Event(name="cancel")]

/**
 * Fired when the picked value has changed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Picker</code>
 This Picker
 *       </li>

 *       <li>
 *           <code>The:Object</code>
 values of this picker's slots, in {name:'value'} format
 *       </li>

 * </ul>
 */
[Event(name="change")]

/**
 * Fired when a slot has been picked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Picker</code>
 This Picker
 *       </li>

 *       <li>
 *           <code>The:Object</code>
 values of this picker's slots, in {name:'value'} format
 *       </li>

 *       <li>
 *           <code>slot:ext.picker.Slot</code>
 An instance of Ext.Picker.Slot that has been picked
 *       </li>

 * </ul>
 */
[Event(name="pick")]


/**
 * A general picker class. Slots are used to organize multiple scrollable slots into a single picker. <a href="output/Ext.Picker.html#Ext.Picker-slots">slots</a> is the only necessary property
 <h2>Example usage:</h2><pre><code>var picker = new Ext.Picker({
 slots: [
 {
 name : 'limit_speed',
 title: 'Speed',
 data : [
 {text: '50 KB/s', value: 50},
 {text: '100 KB/s', value: 100},
 {text: '200 KB/s', value: 200},
 {text: '300 KB/s', value: 300}
 ]
 }
 ]
 });
 picker.show();
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'picker' / the EXML element &lt;picker>.</p>
 * @see ext.config.picker
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#cls-Ext.Picker Ext JS source
 */
public class Picker extends Sheet {

  /**
   * Create a new List
   *
   * @param config The config object
   * @see ext.config.picker
   */
  public function Picker(config:picker) {
    super(null);
  }

  /**
   CSS class to be applied to individual list items when they have been chosen.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get activeCls():String;

  /**
   Can be either:<ul><li>A {String} text to be used on the Done button</li><li>An {Object} as config for <a href="Ext.Button.html">Ext.Button</a></li><li>false or null to hide it</li></ul>Defaults to 'Done'.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get doneButton():*;

  /**
   An array of slot configurations. <ul><li>name - {String} - Name of the slot</li><li>align - {String} - Alignment of the slot. left, right, or center</li><li>items - {Array} - An array of text/value pairs in the format {text: 'myKey', value: 'myValue'}</li><li>title - {String} - Title of the slot. This is used in conjunction with useTitles: true.</li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get slots():Array;

  /**
   Generate a title header for each individual slot and use the title configuration of the slot. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get useTitles():Boolean;

  /**
   * Returns the values of each of the pickers slots
   *
   * @return The values of the pickers slots
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker-getValue Ext JS source
   */
  public native function getValue():Object;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker-onCancelButtonTap Ext JS source
   */
  public native function onCancelButtonTap():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker-onDoneButtonTap Ext JS source
   */
  public native function onDoneButtonTap():void;

  /**
   *
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker-onSlotPick Ext JS source
   */
  public native function onSlotPick():void;

  /**
   * Sets the values of the pickers slots
   *
   * @param values The values in a {name:'value'} format
   * @param animated True to animate setting the values
   * @return this This picker
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Picker.html#method-Ext.Picker-setValue Ext JS source
   */
  public native function setValue(values:Object, animated:Boolean):Picker;

}
}
    