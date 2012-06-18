package ext.form {
import ext.IEventObject;
import ext.config.trigger;

/**
 * Provides a convenient wrapper for TextFields that adds a clickable trigger button (looks like a combobox by default). The trigger has no default action, so you must assign a function to implement the trigger click handler by overriding <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-onTriggerClick">onTriggerClick</a>. You can create a TriggerField directly, as it renders exactly like a combobox for which you can provide a custom implementation. For example: <pre><code>var trigger = new Ext.form.TriggerField();
 trigger.onTriggerClick = myTriggerFn;
 trigger.applyToMarkup('my-field');
 </code></pre>However, in general you will most likely want to use TriggerField as the base class for a reusable component. <a href="Ext.form.DateField.html">Ext.form.DateField</a> and <a href="Ext.form.ComboBox.html">Ext.form.ComboBox</a> are perfect examples of this.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'trigger' / the EXML element &lt;trigger>.</p>
 * @see ext.config.trigger
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TriggerField Sencha Docs Ext JS 3.4
 */
[Native]
public class TriggerField extends TextField {

  /**
   * Create a new TriggerField.
   *
   * @param config Configuration options (valid {&#64;Ext.form.TextField} config options will also be applied to the base TextField)
   * @see ext.config.trigger
   */
  public function TriggerField(config:trigger) {
    super(null);
  }

  /**
   <tt>false</tt> to prevent the user from typing text directly into the field, the field will only respond to a click on the trigger to set the value. (defaults to <tt>true</tt>).
   */
  public native function get editable():Boolean;

  /**
   <tt>true</tt> to hide the trigger element and display only the base text field (defaults to <tt>false</tt>)
   */
  public native function get hideTrigger():Boolean;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> by default and <tt>triggerClass</tt> will be <b>appended</b> if specified.
   */
  public native function get triggerClass():String;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> config object specifying the structure of the trigger element for this Field. (Optional).
   <p>Specify this when you need a customized element to act as the trigger button for a TriggerField.</p><p>Note that when using this option, it is the developer's responsibility to ensure correct sizing, positioning and appearance of the trigger. Defaults to:</p><pre><code>{tag: "img", src: Ext.BLANK_IMAGE_URL, cls: "x-form-trigger " + this.triggerClass}</code></pre>
   */
  public native function get triggerConfig():*;

  /**
   The class added to the to the wrap of the trigger element. Defaults to <tt>x-trigger-wrap-focus</tt>.
   */
  public native function get wrapFocusClass():String;

  /**
   * The function that should handle the trigger's click event. This method does nothing by default until overridden by an implementing function. See Ext.form.ComboBox and Ext.form.DateField for sample implementations.
   *
   * @param e
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TriggerField-method-onTriggerClick Sencha Docs Ext JS 3.4
   */
  public native function onTriggerClick(e:IEventObject):void;

  /**
   * Allow or prevent the user from directly editing the field text. If false is passed, the user will only be able to modify the field using the trigger. Will also add a click event to the text field which will call the trigger. This method is the runtime equivalent of setting the <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-editable">editable</a> config option at config time.
   *
   * @param value True to allow the user to directly edit the field text.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TriggerField-method-setEditable Sencha Docs Ext JS 3.4
   */
  public native function setEditable(value:Boolean):void;

  /**
   * Changes the hidden status of the trigger.
   *
   * @param hideTrigger True to hide the trigger, false to show it.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TriggerField-method-setHideTrigger Sencha Docs Ext JS 3.4
   */
  public native function setHideTrigger(hideTrigger:Boolean):void;

  /**
   * Setting this to true will supersede settings <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-editable">editable</a> and <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-hideTrigger">hideTrigger</a>. Setting this to false will defer back to <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-editable">editable</a> and <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-hideTrigger">hideTrigger</a>. This method is the runtime equivalent of setting the <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-readOnly">readOnly</a> config option at config time.
   *
   * @param readOnly Whether the field should be read only.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TriggerField-method-setReadOnly Sencha Docs Ext JS 3.4
   */
  override public native function setReadOnly(readOnly:Boolean):void;

}
}
    