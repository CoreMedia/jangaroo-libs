package ext.util {
/**

 A wrapper class which can be applied to any element. Fires a "click" event while the
 mouse is pressed. The interval between firings may be specified in the config but
 defaults to 20 milliseconds.

 Optionally, a CSS class may be applied to the element during the time it is pressed.

*/
public class ClickRepeater extends Observable {
/**
 @cfg {Mixed} el The element to act as a button.
 @cfg {Number} delay The initial delay before the repeating event begins firing.
 Similar to an autorepeat key delay.
 @cfg {Number} interval The interval between firings of the "click" event. Default 20 ms.
 @cfg {String} pressClass A CSS class name to be applied to the element while pressed.
 @cfg {Boolean} accelerate True if autorepeating should start slowly and accelerate.
           "interval" and "delay" are ignored.
 @cfg {Boolean} preventDefault True to prevent the default click event
 @cfg {Boolean} stopDefault True to stop the default click event

 @history
    2007-02-02 jvs Original code contributed by Nige "Animal" White
    2007-02-02 jvs Renamed to ClickRepeater
    2007-02-03 jvs Modifications for FF Mac and Safari

 @constructor
 @param el The element to listen on
 @param config
 */
public function ClickRepeater(el : *, config : Object) {
  super();
  el = config;
}
    public var interval  : Boolean;
    public var delay;
    public var preventDefault ;
    public var stopDefault ;
    public var timer ;
    /**
     * Enables the repeater and allows events to fire.
     */
    public native function enable() : void;
    /**
     * Disables the repeater and stops events from firing.
     */
    public native function disable( force) : void;
    /**
     * Convenience function for setting disabled/enabled by boolean.
     * @param disabled
     */
    public native function setDisabled(disabled : Boolean) : void;
    public native function eventOptions(e) : void;
    protected native function destroy() : void;
    protected native function handleMouseDown() : void;
    protected native function click() : void;
    public var easeOutExpo ;
    protected native function handleMouseOut() : void;
    protected native function handleMouseReturn() : void;
    protected native function handleMouseUp() : void;
}}
