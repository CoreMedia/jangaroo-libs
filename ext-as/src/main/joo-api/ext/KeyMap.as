package ext {
/**
 * Handles mapping keys to actions for an element. One key map can be used for multiple actions.
 * The constructor accepts the same config object as defined by <b class='link' title='#addBinding'>addBinding</b>.
 * If you bind a callback function to a KeyMap, anytime the KeyMap handles an expected key
 * combination it will call the function with this signature (if the match is a multi-key
 * combination the callback will still be called only once): (String key, ext.EventObjectClass e)
 * A KeyMap can also handle a string representation of keys.<br />
 * Usage:
 <pre><code>
&#47;/ map one key by key code
var map = new ext.KeyMap("my-element", {
    key&#58; 13, // or ext.EventObjectClass.ENTER
    fn&#58; myHandler,
    scope&#58; myObject
});

&#47;/ map multiple keys to one action by string
var map = new ext.KeyMap("my-element", {
    key&#58; "a\r\n\t",
    fn&#58; myHandler,
    scope&#58; myObject
});

&#47;/ map multiple keys to multiple actions by strings and array of codes
var map = new ext.KeyMap("my-element", [
    {
        key&#58; [10,13],
        fn&#58; function(){ alert("Return was pressed"); }
    }, {
        key&#58; "abc",
        fn&#58; function(){ alert('a, b or c was pressed'); }
    }, {
        key&#58; "\t",
        ctrl&#58;true,
        shift&#58;true,
        fn&#58; function(){ alert('Control + shift + tab was pressed.'); }
    }
]);
</code></pre>
 * <b>Note: A KeyMap starts enabled</b>
*/
public class KeyMap {
/**
 * @constructor
 * @param el The element to bind to
 * @param config The config (see <b class='link' title='#addBinding'>addBinding</b>)
 * @param eventName The event to bind to (defaults to "keydown")
 */
public function KeyMap(el : *, config : Object, eventName : String = undefined) {
  super(el, config, eventName);
}
    /**
     * True to stop the event from bubbling and prevent the default browser action if the
     * key was handled by the KeyMap (defaults to false)
     */
    public var stopEvent  : Boolean;
    /**
     * Add a new binding to this KeyMap. The following config object properties are supported:
     * <pre>
Property    Type             Description
----------  ---------------  ----------------------------------------------------------------------
key         String/Array     A single keycode or an array of keycodes to handle
shift       Boolean          True to handle key only when shift is pressed, False to handle the key only when shift is not pressed (defaults to undefined)
ctrl        Boolean          True to handle key only when ctrl is pressed, False to handle the key only when ctrl is not pressed (defaults to undefined)
alt         Boolean          True to handle key only when alt is pressed, False to handle the key only when alt is not pressed (defaults to undefined)
handler     Function         The function to call when KeyMap finds the expected key combination
fn          Function         Alias of handler (for backwards-compatibility)
scope       Object           The scope of the callback function
stopEvent   Boolean          True to stop the event from bubbling and prevent the default browser action if the key was handled by the KeyMap (defaults to false)
</pre>
     *
     * Usage:
     * <pre><code>
&#47;/ Create a KeyMap
var map = new ext.KeyMap(document, {
    key&#58; ext.EventObjectClass.ENTER,
    fn&#58; handleKey,
    scope&#58; this
});

&#47;/Add a new binding to the existing KeyMap later
map.addBinding({
    key&#58; 'abc',
    shift&#58; true,
    fn&#58; handleKey,
    scope&#58; this
});
</code></pre>
     * @param config A single KeyMap config or an array of configs
     */
	public native function addBinding(config : *) : void;
    protected native function checkModifiers(config, e) : void;
    /**
     * Shorthand for adding a single key listener
     * @param key Either the numeric key code, array of key codes or an object with the
     * following options:
     * {key: (number or array), shift: (true/false), ctrl: (true/false), alt: (true/false)}
     * @param fn The function to call
     * @param scope The scope of the function
     */
    public native function on(key : *, fn : Function, scope : Object = undefined) : void;
    protected native function handleKeyDown(e) : void;
	/**
	 * Returns true if this KeyMap is enabled
	 * @return 
	 */
	public native function isEnabled() : Boolean;
	/**
	 * Enables this KeyMap
	 */
	public native function enable() : void;
	/**
	 * Disable this KeyMap
	 */
	public native function disable() : void;
    /**
     * Convenience function for setting disabled/enabled by boolean.
     * @param disabled
     */
    public native function setDisabled(disabled : Boolean) : void;
}}
