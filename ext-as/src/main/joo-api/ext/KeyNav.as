package ext {
/**
 * <p>Provides a convenient wrapper for normalized keyboard navigation.  KeyNav allows you to bind
 * navigation keys to function calls that will get called when the keys are pressed, providing an easy
 * way to implement custom navigation schemes for any UI component.</p>
 * <p>The following are all of the possible keys that can be implemented: enter, left, right, up, down, tab, esc,
 * pageUp, pageDown, del, home, end.  Usage:</p>
 <pre><code>
var nav = new ext.KeyNav("my-element", {
    "left" : function(e){
        this.moveLeft(e.ctrlKey);
    },
    "right" : function(e){
        this.moveRight(e.ctrlKey);
    },
    "enter" : function(e){
        this.save();
    },
    scope : this
});
</code></pre>
*/
public class KeyNav {
/**
 * @constructor
 * @param el The element to bind to
 * @param config The config
 */
public function KeyNav(el : *, config : Object) {
  super(el, config);
}
    /**
     * @cfg {Boolean} disabled
     * True to disable this KeyNav instance (defaults to false)
     */
    public var disabled  : Boolean;
    /**
     * @cfg {String} defaultEventAction
     * The method to call on the <b class='link'>ext.EventObjectClass</b> after this KeyNav intercepts a key.  Valid values are
     * <b class='link'>ext.EventObjectClass#stopEvent</b>, <b class='link'>ext.EventObjectClass#preventDefault</b> and
     * <b class='link'>ext.EventObjectClass#stopPropagation</b> (defaults to 'stopEvent')
     */
    public var defaultEventAction : String;
    /**
     * @cfg {Boolean} forceKeyDown
     * Handle the keydown event instead of keypress (defaults to false).  KeyNav automatically does this for IE since
     * IE does not propagate special keys on keypress, but setting this to true will force other browsers to also
     * handle keydown instead of keypress.
     */
    public var forceKeyDown  : Boolean;
    protected native function prepareEvent(e) : void;
    protected native function relay(e) : void;
    protected native function doRelay(e, h, hname) : void;
    public var enter ;
    public var left ;
    public var right ;
    public var up ;
    public var down ;
    public var tab ;
    public var esc ;
    public var pageUp ;
    public var pageDown ;
    public var del ;
    public var home ;
    public var end ;
    public var keyToHandler ;
	/**
	 * Enable this KeyNav
	 */
	public native function enable() : void;
	/**
	 * Disable this KeyNav
	 */
	public native function disable() : void;
    /**
     * Convenience function for setting disabled/enabled by boolean.
     * @param disabled
     */
    public native function setDisabled(disabled : Boolean) : void;
    protected native function isKeydown() : void;
}}
