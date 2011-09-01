package ext.config {


/**
 * SegmentedButton is a container for a group of <a href="Ext.Button.html">Ext.Button</a>s. Generally a SegmentedButton would be a child of a <a href="Ext.Toolbar.html">Ext.Toolbar</a> and would be used to switch between different views.
 <h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.SegmentedButton.html#Ext.SegmentedButton-allowMultiple">allowMultiple</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.SegmentedButton/screenshot.png" alt=""/></p><h2>Example usage:</h2><pre><code>var segmentedButton = new Ext.SegmentedButton({
 allowMultiple: true,
 items: [
 {
 text: 'Option 1'
 },
 {
 text   : 'Option 2',
 pressed: true,
 handler: tappedFn
 },
 {
 text: 'Option 3'
 }
 ],
 listeners: {
 toggle: function(container, button, pressed){
 console.log("User toggled the '" + button.text + "' button: " + (pressed ? 'on' : 'off'));
 }
 }
 });</code></pre>
 *
 * <p>This class represents the xtype 'buttons' and serves as a
 * typed config object for constructor of class SegmentedButton.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.SegmentedButton
 */
[ExtConfig(target="ext.SegmentedButton", xtype="buttons")]
public class buttons extends container {

  public function buttons(config:Object = null) {

    super(config);
  }


  /**
   Allow to depress a pressed button. (defaults to true when allowMultiple is true)
   */
  public native function get allowDepress():Boolean;

  /**
   * @private
   */
  public native function set allowDepress(value:Boolean):void;

  /**
   Allow multiple pressed buttons (defaults to false).
   */
  public native function get allowMultiple():Boolean;

  /**
   * @private
   */
  public native function set allowMultiple(value:Boolean):void;


}
}
    