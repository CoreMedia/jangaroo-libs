package ext.config {


/**
 * Provides a convenient wrapper for TextFields that adds a clickable trigger button (looks like a combobox by default). The trigger has no default action, so you must assign a function to implement the trigger click handler by overriding <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-onTriggerClick">onTriggerClick</a>. You can create a TriggerField directly, as it renders exactly like a combobox for which you can provide a custom implementation. For example: <pre><code>var trigger = new Ext.form.TriggerField();
 trigger.onTriggerClick = myTriggerFn;
 trigger.applyToMarkup('my-field');
 </code></pre>However, in general you will most likely want to use TriggerField as the base class for a reusable component. <a href="Ext.form.DateField.html">Ext.form.DateField</a> and <a href="Ext.form.ComboBox.html">Ext.form.ComboBox</a> are perfect examples of this.
 * <p>This class serves as a typed config object for constructor of class TriggerField.</p>
 *
 * @see ext.form.TriggerField
 */
[ExtConfig(target="ext.form.TriggerField")]
public class trigger extends textfield {

  public function trigger(config:Object = null) {

    super(config);
  }


  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element spec, or true for a default element spec. Used to create the <a href="output/Ext.Component.html#Ext.Component-getEl">Element</a> which will encapsulate this Component. See <tt><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></tt> for details. Defaults to:
   <pre><code>{tag: "input", type: "text", size: "16", autocomplete: "off"}</code></pre>
   */
  override public native function get autoCreate():*;

  /**
   * @private
   */
  override public native function set autoCreate(value:*):void;

  /**
   <tt>false</tt> to prevent the user from typing text directly into the field, the field will only respond to a click on the trigger to set the value. (defaults to <tt>true</tt>).
   */
  public native function get editable():Boolean;

  /**
   * @private
   */
  public native function set editable(value:Boolean):void;

  /**
   <tt>true</tt> to hide the trigger element and display only the base text field (defaults to <tt>false</tt>)
   */
  public native function get hideTrigger():Boolean;

  /**
   * @private
   */
  public native function set hideTrigger(value:Boolean):void;

  /**
   <tt>true</tt> to prevent the user from changing the field, and hides the trigger. Superceeds the editable and hideTrigger options if the value is true. (defaults to <tt>false</tt>)
   */
  override public native function get readOnly():Boolean;

  /**
   * @private
   */
  override public native function set readOnly(value:Boolean):void;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> by default and <tt>triggerClass</tt> will be <b>appended</b> if specified.
   */
  public native function get triggerClass():String;

  /**
   * @private
   */
  public native function set triggerClass(value:String):void;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> config object specifying the structure of the trigger element for this Field. (Optional).
   <p>Specify this when you need a customized element to act as the trigger button for a TriggerField.</p><p>Note that when using this option, it is the developer's responsibility to ensure correct sizing, positioning and appearance of the trigger. Defaults to:</p><pre><code>{tag: "img", src: Ext.BLANK_IMAGE_URL, cls: "x-form-trigger " + this.triggerClass}</code></pre>
   */
  public native function get triggerConfig():*;

  /**
   * @private
   */
  public native function set triggerConfig(value:*):void;

  /**
   The class added to the to the wrap of the trigger element. Defaults to <tt>x-trigger-wrap-focus</tt>.
   */
  public native function get wrapFocusClass():String;

  /**
   * @private
   */
  public native function set wrapFocusClass(value:String):void;


}
}
    