package ext.config {

import ext.form.Number;

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
 * <p>This class represents the xtype 'picker' and serves as a
 * typed config object for constructor of class Picker.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Picker
 */
[ExtConfig(target="ext.Picker", xtype="picker")]
public class picker extends sheet {

  public function picker(config:Object = null) {

    super(config);
  }


  /**
   CSS class to be applied to individual list items when they have been chosen.
   */
  public native function get activeCls():String;

  /**
   * @private
   */
  public native function set activeCls(value:String):void;

  /**
   The main component class
   */
  override public native function get componentCls():String;

  /**
   * @private
   */
  override public native function set componentCls(value:String):void;

  /**
   Can be either:<ul><li>A {String} text to be used on the Done button</li><li>An {Object} as config for <a href="Ext.Button.html">Ext.Button</a></li><li>false or null to hide it</li></ul>Defaults to 'Done'.
   */
  public native function get doneButton():*;

  /**
   * @private
   */
  public native function set doneButton(value:*):void;

  /**
   The height of the picker. Defaults to 220
   */
  override public native function get height():ext.form.Number;

  /**
   * @private
   */
  override public native function set height(value:ext.form.Number):void;

  /**
   An array of slot configurations. <ul><li>name - {String} - Name of the slot</li><li>align - {String} - Alignment of the slot. left, right, or center</li><li>items - {Array} - An array of text/value pairs in the format {text: 'myKey', value: 'myValue'}</li><li>title - {String} - Title of the slot. This is used in conjunction with useTitles: true.</li></ul>
   */
  public native function get slots():Array;

  /**
   * @private
   */
  public native function set slots(value:Array):void;

  /**
   Generate a title header for each individual slot and use the title configuration of the slot. Defaults to false.
   */
  public native function get useTitles():Boolean;

  /**
   * @private
   */
  public native function set useTitles(value:Boolean):void;


}
}
    