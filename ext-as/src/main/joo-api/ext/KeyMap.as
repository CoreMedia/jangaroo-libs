package ext {


/**
 * Handles mapping keys to actions for an element. One key map can be used for multiple actions. The constructor accepts the same config object as defined by <a href="output/Ext.KeyMap.html#Ext.KeyMap-addBinding">addBinding</a>. If you bind a callback function to a KeyMap, anytime the KeyMap handles an expected key combination it will call the function with this signature (if the match is a multi-key combination the callback will still be called only once): (String key, Ext.EventObject e) A KeyMap can also handle a string representation of keys.<br/>Usage: <pre><code>// map one key by key code
 var map = new Ext.KeyMap("my-element", {
 key: 13, // or Ext.EventObject.ENTER
 fn: myHandler,
 scope: myObject
 });

 // map multiple keys to one action by string
 var map = new Ext.KeyMap("my-element", {
 key: "a\r\n\t",
 fn: myHandler,
 scope: myObject
 });

 // map multiple keys to multiple actions by strings and array of codes
 var map = new Ext.KeyMap("my-element", [
 {
 key: [10,13],
 fn: function(){ alert("Return was pressed"); }
 }, {
 key: "abc",
 fn: function(){ alert('a, b or c was pressed'); }
 }, {
 key: "\t",
 ctrl:true,
 shift:true,
 fn: function(){ alert('Control + shift + tab was pressed.'); }
 }
 ]);
 </code></pre><b>Note: A KeyMap starts enabled</b>
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#cls-Ext.KeyMap Ext JS source
 */
public class KeyMap {

  /**
   *
   *
   * @param el The element to bind to
   * @param config The config (see <a href="output/Ext.KeyMap.html#Ext.KeyMap-addBinding">addBinding</a>)
   * @param eventName The event to bind to (defaults to "keydown")
   */
  public function KeyMap(el:*, config:Object, eventName:String = null) {
    super();
  }

  /**
   True to stop the event from bubbling and prevent the default browser action if the key was handled by the KeyMap (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#prop-Ext.KeyMap-stopEvent Ext JS source
   */
  public native function get stopEvent():Boolean;

  /**
   * @private
   */
  public native function set stopEvent(value:Boolean):void;

  /**
   * Add a new binding to this KeyMap. The following config object properties are supported: <pre>Property    Type             Description
   ----------  ---------------  ----------------------------------------------------------------------
   key         String/Array     A single keycode or an array of keycodes to handle
   shift       Boolean          True to handle key only when shift is pressed, False to handle the key only when shift is not pressed (defaults to undefined)
   ctrl        Boolean          True to handle key only when ctrl is pressed, False to handle the key only when ctrl is not pressed (defaults to undefined)
   alt         Boolean          True to handle key only when alt is pressed, False to handle the key only when alt is not pressed (defaults to undefined)
   handler     Function         The function to call when KeyMap finds the expected key combination
   fn          Function         Alias of handler (for backwards-compatibility)
   scope       Object           The scope of the callback function
   stopEvent   Boolean          True to stop the event from bubbling and prevent the default browser action if the key was handled by the KeyMap (defaults to false)
   </pre>Usage: <pre><code>// Create a KeyMap
   var map = new Ext.KeyMap(document, {
   key: Ext.EventObject.ENTER,
   fn: handleKey,
   scope: this
   });

   //Add a new binding to the existing KeyMap later
   map.addBinding({
   key: 'abc',
   shift: true,
   fn: handleKey,
   scope: this
   });
   </code></pre>
   *
   * @param config A single KeyMap config or an array of configs
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#method-Ext.KeyMap-addBinding Ext JS source
   */
  public native function addBinding(config:*):void;

  /**
   * Disable this KeyMap
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#method-Ext.KeyMap-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enables this KeyMap
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#method-Ext.KeyMap-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Returns true if this KeyMap is enabled
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#method-Ext.KeyMap-isEnabled Ext JS source
   */
  public native function isEnabled():Boolean;

  /**
   * Shorthand for adding a single key listener
   *
   * @param key Either the numeric key code, array of key codes or an object with the following options: {key: (number or array), shift: (true/false), ctrl: (true/false), alt: (true/false)}
   * @param fn The function to call
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the browser window.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#method-Ext.KeyMap-on Ext JS source
   */
  public native function on(key:*, fn:Function, scope:Object = null):void;

  /**
   * Convenience function for setting disabled/enabled by boolean.
   *
   * @param disabled
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyMap.html#method-Ext.KeyMap-setDisabled Ext JS source
   */
  public native function setDisabled(disabled:Boolean):void;

}
}
    