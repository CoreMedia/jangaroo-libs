package ext.config {

import joo.JavaScriptObject;

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
 *
 * <p>This class serves as a
 * typed config object for constructor of class KeyNav.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.KeyNav
 */
[ExtConfig(target="ext.KeyNav")]
public class keynav extends JavaScriptObject {

  public function keynav(config:Object = null) {

    super(config);
  }


  /**
   The method to call on the <a href="Ext.EventObject.html">Ext.EventObject</a> after this KeyNav intercepts a key. Valid values are <a href="output/Ext.EventObject.html#Ext.EventObject-stopEvent">Ext.EventObject.stopEvent</a>, <a href="output/Ext.EventObject.html#Ext.EventObject-preventDefault">Ext.EventObject.preventDefault</a> and <a href="output/Ext.EventObject.html#Ext.EventObject-stopPropagation">Ext.EventObject.stopPropagation</a> (defaults to 'stopEvent')
   */
  public native function get defaultEventAction():String;

  /**
   * @private
   */
  public native function set defaultEventAction(value:String):void;

  /**
   True to disable this KeyNav instance (defaults to false)
   */
  public native function get disabled():Boolean;

  /**
   * @private
   */
  public native function set disabled(value:Boolean):void;

  /**
   Handle the keydown event instead of keypress (defaults to false). KeyNav automatically does this for IE since IE does not propagate special keys on keypress, but setting this to true will force other browsers to also handle keydown instead of keypress.
   */
  public native function get forceKeyDown():Boolean;

  /**
   * @private
   */
  public native function set forceKeyDown(value:Boolean):void;


}
}
    