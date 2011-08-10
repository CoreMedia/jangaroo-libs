package ext {

import ext.config.keynav;

/**
 * Provides a convenient wrapper for normalized keyboard navigation. KeyNav allows you to bind navigation keys to function calls that will get called when the keys are pressed, providing an easy way to implement custom navigation schemes for any UI component.
 <p>The following are all of the possible keys that can be implemented: enter, left, right, up, down, tab, esc, pageUp, pageDown, del, home, end. Usage:</p><pre><code>var nav = new Ext.KeyNav("my-element", {
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
 * @see ext.config.keynav
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyNav.html#cls-Ext.KeyNav Ext JS source
 */
public class KeyNav {

  /**
   *
   *
   * @param el The element to bind to
   * @param config The config
   * @see ext.config.keynav
   */
  public function KeyNav(el:*, config:keynav) {
    super();
  }

  /**
   The method to call on the <a href="Ext.EventObject.html">Ext.EventObject</a> after this KeyNav intercepts a key. Valid values are <a href="output/Ext.EventObject.html#Ext.EventObject-stopEvent">Ext.EventObject.stopEvent</a>, <a href="output/Ext.EventObject.html#Ext.EventObject-preventDefault">Ext.EventObject.preventDefault</a> and <a href="output/Ext.EventObject.html#Ext.EventObject-stopPropagation">Ext.EventObject.stopPropagation</a> (defaults to 'stopEvent')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultEventAction():String;

  /**
   True to disable this KeyNav instance (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   Handle the keydown event instead of keypress (defaults to false). KeyNav automatically does this for IE since IE does not propagate special keys on keypress, but setting this to true will force other browsers to also handle keydown instead of keypress.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get forceKeyDown():Boolean;

  /**
   * Destroy this KeyNav (this is the same as calling disable).
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyNav.html#method-Ext.KeyNav-destroy Ext JS source
   */
  public native function destroy():void;

  /**
   * Disable this KeyNav
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyNav.html#method-Ext.KeyNav-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Enable this KeyNav
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyNav.html#method-Ext.KeyNav-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Convenience function for setting disabled/enabled by boolean.
   *
   * @param disabled
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/KeyNav.html#method-Ext.KeyNav-setDisabled Ext JS source
   */
  public native function setDisabled(disabled:Boolean):void;

}
}
    