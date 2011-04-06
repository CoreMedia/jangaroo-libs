package ext.form {
import ext.Element;
import ext.EventObjectClass;

/**
 * Provides a convenient wrapper for TextFields that adds a clickable trigger button (looks like a combobox by default).
 * The trigger has no default action, so you must assign a function to implement the trigger click handler by
 * overriding <b class='link' title='#onTriggerClick'>onTriggerClick</b>. You can create a TriggerField directly, as it renders exactly like a combobox
 * for which you can provide a custom implementation.  For example:
 * <pre><code>
var trigger = new ext.form.TriggerField();
trigger.onTriggerClick = myTriggerFn;
trigger.applyToMarkup('my-field');
</code></pre>
 *
 * However, in general you will most likely want to use TriggerField as the base class for a reusable component.
 * <b class='link'>ext.form.DateField</b> and <b class='link'>ext.form.ComboBox</b> are perfect examples of this.
 * 
*/
public class TriggerField extends TextField {
/**
 * @constructor
 * Create a new TriggerField.
 * @param config Configuration options (valid {&#64;ext.form.TextField} config options will also be applied
 * to the base TextField)
 * @xtype trigger
 */
public function TriggerField(config : Object) {
  super(config);
}
    /**
     * @cfg {String} triggerClass
     * An additional CSS class used to style the trigger button.  The trigger will always get the
     * class <code>'x-form-trigger'</code> by default and <code>triggerClass</code> will be <b>appended</b> if specified.
     */
    /**
     * @cfg {Mixed} triggerConfig
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> config object specifying the structure of the
     * trigger element for this Field. (Optional).</p>
     * <p>Specify this when you need a customized element to act as the trigger button for a TriggerField.</p>
     * <p>Note that when using this option, it is the developer's responsibility to ensure correct sizing, positioning
     * and appearance of the trigger.  Defaults to:</p>
     * <pre><code>{tag: "img", src: ext.BLANK_IMAGE_URL, cls: "x-form-trigger " + this.triggerClass}</code></pre>
     */
    /**
     * @cfg {String/Object} autoCreate <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element spec, or true for a default
     * element spec. Used to create the <b class='link' title='ext.Component#getEl'>Element</b> which will encapsulate this Component.
     * See <code><b class='link' title='ext.Component#autoEl'>autoEl</b></code> for details.  Defaults to:</p>
     * <pre><code>{tag: "input", type: "text", size: "16", autocomplete: "off"}</code></pre>
     */
    //public var defaultAutoCreate  : *;
    /**
     * @cfg {Boolean} hideTrigger <code>true</code> to hide the trigger element and display only the base
     * text field (defaults to <code>false</code>)
     */
    public var hideTrigger : Boolean;
    /**
     * @cfg {Boolean} editable <code>false</code> to prevent the user from typing text directly into the field,
     * the field will only respond to a click on the trigger to set the value. (defaults to <code>true</code>)
     */
    public var editable : Boolean;
    /**
     * @cfg {String} wrapFocusClass The class added to the to the wrap of the trigger element. Defaults to
     * <code>x-trigger-wrap-focus</code>.
     */
    public var wrapFocusClass : String;
    /**
     * @hide 
     * @method autoSize
     */
    //public var autoSize;
    protected var monitorTab;
    //protected var deferHeight ;
    protected var mimicing:Boolean;
    //public var actionMode;
    //override protected native function onResize(w, h) : void;
    //protected var adjustSize ;
    override public native function getResizeEl() : Element;
    override public native function getPositionEl() : Element;
    override protected native function alignErrorIcon() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function afterRender() : void;
    protected native function initTrigger() : void;
    override protected native function onDestroy() : void;
    override protected native function onFocus() : void;
    protected native function checkTab(e : EventObjectClass) : void;
    override protected native function onBlur() : void;
    protected native function mimicBlur(e : EventObjectClass) : void;
    protected native function triggerBlur() : void;
    override protected native function beforeBlur():void;
    /**
     * Allow or prevent the user from directly editing the field text.  If false is passed,
     * the user will only be able to modify the field using the trigger.  This method
     * is the runtime equivalent of setting the 'editable' config option at config time.
     * @param value True to allow the user to directly edit the field text
     */
    public native function setEditable(value : Boolean) : void;
    protected native function validateBlur(e : EventObjectClass) : void;
    /**
     * The function that should handle the trigger's click event.  This method does nothing by default
     * until overridden by an implementing function.  See ext.form.ComboBox and ext.form.DateField for
     * sample implementations.
     * @method
     * @param e
     */
    public native function onTriggerClick(e : EventObjectClass) : void;
    /**
     * @cfg {Boolean} grow @hide
     */
    /**
     * @cfg {Number} growMin @hide
     */
    /**
     * @cfg {Number} growMax @hide
     */
}}
