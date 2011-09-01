package ext.form {

import ext.config.textfield;

/**
 * Fires whenever the return key or go is pressed. FormPanel listeners for this event, and submits itself whenever it fires. Also note that this event bubbles up to parent containers.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Text</code>
 This field
 *       </li>

 *       <li>
 *           <code>e:&#42;</code>
 The key event object
 *       </li>

 * </ul>
 */
[Event(name="action")]

/**
 * Fires when this field loses input focus.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Text</code>
 This field
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="blur")]

/**
 * Fires just before the field blurs if the field value has changed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Text</code>
 This field
 *       </li>

 *       <li>
 *           <code>newValue:&#42;</code>
 The new value
 *       </li>

 *       <li>
 *           <code>oldValue:&#42;</code>
 The original value
 *       </li>

 * </ul>
 */
[Event(name="change")]

/**
 * Fires when this field receives input focus.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Text</code>
 This field
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="focus")]

/**
 * Fires when a key is released on the input element.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.form.Text</code>
 This field
 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="keyup")]


/**
 * Simple text input field. See <a href="Ext.form.FormPanel.html">FormPanel</a> for example usage.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'textfield' / the EXML element &lt;textfield>.</p>
 * @see ext.config.textfield
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Text.html#cls-Ext.form.Text Ext JS source
 */
public class Text extends Field {

  /**
   * Create a new Text.
   *
   * @param config The config object
   * @see ext.config.textfield
   */
  public function Text(config:textfield = null) {
    super(null);
  }

  /**
   The value that the Field had at the time it was last focused. This is the value that is passed to the <a href="output/Ext.form.Text.html#Ext.form.Text-change">change</a> event which is fired if the value has been changed when the Field is blurred.
   <p><b>This will be undefined until the Field has been visited.</b> Compare <a href="output/Ext.form.Text.html#Ext.form.Text-originalValue">originalValue</a>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Text.html#prop-Ext.form.Text-startValue Ext JS source
   */
  public native function get startValue():*;

  /**
   * @private
   */
  public native function set startValue(value:*):void;

  /**
   <tt>True</tt> if the field currently has focus.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Text.html#prop-Ext.form.Text-{Boolean} Ext JS source
   */
  public native function getIsFocused():Boolean;

  /**
   * @private
   */
  public native function setIsFocused(value:Boolean):void;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoCapitalize():Boolean;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoComplete():Boolean;

  /**

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoCorrect():Boolean;

  /**
   The CSS class to use when the field receives focus (defaults to 'x-field-focus')
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get focusCls():String;

  /**
   The maximum number of permitted input characters (defaults to 0).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get maxLength():int;

  /**
   A string value displayed in the input (if supported) when the control is empty.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get placeHolder():String;

  /**
   * Attempts to forcefully blur input focus for the field.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Text.html#method-Ext.form.Text-blur Ext JS source
   */
  public native function blur():Text;

  /**
   * Attempts to set the field as the active input focus.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Text.html#method-Ext.form.Text-focus Ext JS source
   */
  public native function focus():Text;

}
}
    