package ext {

import ext.config.editor;
import ext.form.Field;

/**
 * Fires after a change has been made to the field, but before the change is reflected in the underlying field. Saving the change to the field can be canceled by returning false from the handler of this event. Note that if the value has not changed and ignoreNoChange = true, the editing will still end but this event will not fire since no edit actually occurred.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Editor</code>

 *       </li>

 *       <li>
 *           <code>value:&#42;</code>
 The current field value
 *       </li>

 *       <li>
 *           <code>startValue:&#42;</code>
 The original field value
 *       </li>

 * </ul>
 */
[Event(name="beforecomplete")]

/**
 * Fires when editing is initiated, but before the value changes. Editing can be canceled by returning false from the handler of this event.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Editor</code>

 *       </li>

 *       <li>
 *           <code>boundEl:ext.Element</code>
 The underlying element bound to this editor
 *       </li>

 *       <li>
 *           <code>value:&#42;</code>
 The field value being set
 *       </li>

 * </ul>
 */
[Event(name="beforestartedit")]

/**
 * Fires after editing has been canceled and the editor's value has been reset.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Editor</code>

 *       </li>

 *       <li>
 *           <code>value:&#42;</code>
 The user-entered field value that was discarded
 *       </li>

 *       <li>
 *           <code>startValue:&#42;</code>
 The original field value that was set back into the editor after cancel
 *       </li>

 * </ul>
 */
[Event(name="canceledit")]

/**
 * Fires after editing is complete and any changed value has been written to the underlying field.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Editor</code>

 *       </li>

 *       <li>
 *           <code>value:&#42;</code>
 The current field value
 *       </li>

 *       <li>
 *           <code>startValue:&#42;</code>
 The original field value
 *       </li>

 * </ul>
 */
[Event(name="complete")]

/**
 * Fires when any key related to navigation (arrows, tab, enter, esc, etc.) is pressed. You can check <a href="output/Ext.EventObject.html#Ext.EventObject-getKey">Ext.EventObject.getKey</a> to determine which key was pressed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Field</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="specialkey")]

/**
 * Fires when this editor is displayed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>boundEl:ext.Element</code>
 The underlying element bound to this editor
 *       </li>

 *       <li>
 *           <code>value:&#42;</code>
 The starting field value
 *       </li>

 * </ul>
 */
[Event(name="startedit")]


/**
 * A base editor field that handles displaying/hiding on demand and has some built-in sizing and event handling logic.
 * <p>This component is created by the xtype 'editor' / the EXML element &lt;editor>.</p>
 * @see ext.config.editor
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#cls-Ext.Editor Ext JS source
 */
public class Editor extends Component {

  /**
   * Create a new Editor
   *
   * @param config The config object
   * @see ext.config.editor
   */
  public function Editor(config:editor) {
    super(null);
  }

  /**
   The Field this Editor uses for editing.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#prop-Ext.Editor-field Ext JS source
   */
  public native function get field():Field;

  /**
   * @private
   */
  public native function set field(value:Field):void;

  /**
   The position to align to (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details, defaults to "c-c?").
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get alignment():String;

  /**
   True to <a href="output/Ext.Editor.html#Ext.Editor-completeEdit">complete the editing process</a> if in edit mode when the field is blurred. Defaults to <tt>true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get allowBlur():Boolean;

  /**
   True for the editor to automatically adopt the size of the underlying field, "width" to adopt the width only, or "height" to adopt the height only, "none" to always use the field dimensions. (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoSize():*;

  /**
   True to cancel the edit when the escape key is pressed. Defaults to <tt>true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cancelOnEsc():Boolean;

  /**
   True to complete the edit when the enter key is pressed. Defaults to <tt>true</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get completeOnEnter():Boolean;

  /**
   True to constrain the editor to the viewport
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get constrain():Boolean;

  /**
   False to keep the bound element visible while the editor is displayed (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hideEl():Boolean;

  /**
   True to skip the edit completion process (no save, no events fired) if the user completes an edit and the value has not changed (defaults to false). Applies only to string values - edits for other data types will never be ignored.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get ignoreNoChange():Boolean;

  /**
   The offsets to use when aligning (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details. Defaults to <tt>[0, 0]</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get offsets():Array;

  /**
   True to automatically revert the field value and cancel the edit when the user completes an edit and the field validation fails (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get revertInvalid():Boolean;

  /**
   "sides" for sides/bottom only, "frame" for 4-way shadow, and "drop" for bottom-right shadow (defaults to "frame")
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get shadow():*;

  /**
   Handle the keydown/keypress events so they don't propagate (defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get swallowKeys():Boolean;

  /**
   True to update the innerHTML of the bound element when the update completes (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get updateEl():Boolean;

  /**
   * Cancels the editing process and hides the editor without persisting any changes. The field value will be reverted to the original starting value.
   *
   * @param remainVisible Override the default behavior and keep the editor visible after cancel (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#method-Ext.Editor-cancelEdit Ext JS source
   */
  public native function cancelEdit(remainVisible:Boolean):void;

  /**
   * Ends the editing process, persists the changed value to the underlying field, and hides the editor.
   *
   * @param remainVisible Override the default behavior and keep the editor visible after edit (defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#method-Ext.Editor-completeEdit Ext JS source
   */
  public native function completeEdit(remainVisible:Boolean):void;

  /**
   * Gets the data value of the editor
   *
   * @return The data value
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#method-Ext.Editor-getValue Ext JS source
   */
  public native function getValue():*;

  /**
   * Realigns the editor to the bound field based on the current alignment config value.
   *
   * @param autoSize True to size the field to the dimensions of the bound element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#method-Ext.Editor-realign Ext JS source
   */
  public native function realign(autoSize:Boolean = false):void;

  /**
   * Sets the height and width of this editor.
   *
   * @param width The new width
   * @param height The new height
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#method-Ext.Editor-setSize Ext JS source
   */
  public native function setSize(width:Number, height:Number):void;

  /**
   * Sets the data value of the editor
   *
   * @param value Any valid value supported by the underlying field
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#method-Ext.Editor-setValue Ext JS source
   */
  public native function setValue(value:*):void;

  /**
   * Starts the editing process and shows the editor.
   *
   * @param el The element to edit
   * @param value A value to initialize the editor with. If a value is not provided, it defaults to the innerHTML of el.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Editor.html#method-Ext.Editor-startEdit Ext JS source
   */
  public native function startEdit(el:*, value:String = null):void;

}
}
    