package ext.config {

import ext.form.Field;

/**
 * A base editor field that handles displaying/hiding on demand and has some built-in sizing and event handling logic.
 * <p>This class serves as a typed config object for constructor of class Editor.</p>
 *
 * @see ext.Editor
 */
[ExtConfig(target="ext.Editor")]
public class editor extends component {

  public function editor(config:Object = null) {

    super(config);
  }


  /**
   The position to align to (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details, defaults to "c-c?").
   */
  public native function get alignment():String;

  /**
   * @private
   */
  public native function set alignment(value:String):void;

  /**
   True to <a href="output/Ext.Editor.html#Ext.Editor-completeEdit">complete the editing process</a> if in edit mode when the field is blurred. Defaults to <tt>true</tt>.
   */
  public native function get allowBlur():Boolean;

  /**
   * @private
   */
  public native function set allowBlur(value:Boolean):void;

  /**
   True for the editor to automatically adopt the size of the underlying field, "width" to adopt the width only, or "height" to adopt the height only, "none" to always use the field dimensions. (defaults to false)
   */
  public native function get autoSize():*;

  /**
   * @private
   */
  public native function set autoSize(value:*):void;

  /**
   True to cancel the edit when the escape key is pressed. Defaults to <tt>true</tt>.
   */
  public native function get cancelOnEsc():Boolean;

  /**
   * @private
   */
  public native function set cancelOnEsc(value:Boolean):void;

  /**
   True to complete the edit when the enter key is pressed. Defaults to <tt>true</tt>.
   */
  public native function get completeOnEnter():Boolean;

  /**
   * @private
   */
  public native function set completeOnEnter(value:Boolean):void;

  /**
   True to constrain the editor to the viewport
   */
  public native function get constrain():Boolean;

  /**
   * @private
   */
  public native function set constrain(value:Boolean):void;

  /**
   The Field object (or descendant) or config object for field
   */
  public native function get field():Field;

  /**
   * @private
   */
  public native function set field(value:Field):void;

  /**
   False to keep the bound element visible while the editor is displayed (defaults to true)
   */
  public native function get hideEl():Boolean;

  /**
   * @private
   */
  public native function set hideEl(value:Boolean):void;

  /**
   True to skip the edit completion process (no save, no events fired) if the user completes an edit and the value has not changed (defaults to false). Applies only to string values - edits for other data types will never be ignored.
   */
  public native function get ignoreNoChange():Boolean;

  /**
   * @private
   */
  public native function set ignoreNoChange(value:Boolean):void;

  /**
   The offsets to use when aligning (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details. Defaults to <tt>[0, 0]</tt>.
   */
  public native function get offsets():Array;

  /**
   * @private
   */
  public native function set offsets(value:Array):void;

  /**
   True to automatically revert the field value and cancel the edit when the user completes an edit and the field validation fails (defaults to true)
   */
  public native function get revertInvalid():Boolean;

  /**
   * @private
   */
  public native function set revertInvalid(value:Boolean):void;

  /**
   "sides" for sides/bottom only, "frame" for 4-way shadow, and "drop" for bottom-right shadow (defaults to "frame")
   */
  public native function get shadow():*;

  /**
   * @private
   */
  public native function set shadow(value:*):void;

  /**
   Handle the keydown/keypress events so they don't propagate (defaults to true)
   */
  public native function get swallowKeys():Boolean;

  /**
   * @private
   */
  public native function set swallowKeys(value:Boolean):void;

  /**
   True to update the innerHTML of the bound element when the update completes (defaults to false)
   */
  public native function get updateEl():Boolean;

  /**
   * @private
   */
  public native function set updateEl(value:Boolean):void;

  /**
   The data value of the underlying field (defaults to "")
   */
  public native function get value():*;

  /**
   * @private
   */
  public native function set value(value:*):void;


}
}
    