package ext.form {
import ext.Element;

/**
 * Single checkbox field.  Can be used as a direct replacement for traditional checkbox fields.
*/
public class Checkbox extends Field {
/**
 * @constructor
 * Creates a new Checkbox
 * @param config Configuration options
 * @xtype checkbox
 */
public function Checkbox(config : Object) {
  super(config);
}
    /**
     * @cfg {String} focusClass The CSS class to use when the checkbox receives focus (defaults to undefined)
     */
    //public var focusClass  : String;
    /**
     * @cfg {String} fieldClass The default CSS class for the checkbox (defaults to 'x-form-field')
     */
    //public var fieldClass  : String;
    /**
     * @cfg {Boolean} checked <tt>true</tt> if the checkbox should render initially checked (defaults to <tt>false</tt>)
     */
    public var checked  : Boolean;
    /**
     * @cfg {String/Object} autoCreate A DomHelper element spec, or true for a default element spec (defaults to
     * {tag: 'input', type: 'checkbox', autocomplete: 'off'})
     */
    //public var defaultAutoCreate  : *;
    /**
     * @cfg {String} boxLabel The text that appears beside the checkbox
     */
    /**
     * @cfg {String} inputValue The value that should go into the generated input element's value attribute
     */
    /**
     * @cfg {Function} handler A function called when the <b class='link'>#checked</b> value changes (can be used instead of 
     * handling the check event). The handler is passed the following parameters:
     * <div class="mdetail-params"><ul>
     * <li><b>checkbox</b> : ext.form.Checkbox<div class="sub-desc">The Checkbox being toggled.</div></li>
     * <li><b>checked</b> : Boolean<div class="sub-desc">The new checked state of the checkbox.</div></li>
     * </ul></div>
     */
    /**
     * @cfg {Object} scope An object to use as the scope ('this' reference) of the <b class='link'>#handler</b> function
     * (defaults to this Checkbox).
     */
    //protected var actionMode  : Object;
    override protected native function initComponent() : void;
    override public native function onResize(adjWidth, adjHeight, rawWidth, rawHeight) : void;
    override protected native function initEvents() : void;
    override public native function getResizeEl() : void;
    override public native function getPositionEl() : void;
    /**
     * @hide
     * Overridden and disabled. The editor element does not support standard valid/invalid marking.
     * @method
     */
    override public native function markInvalid(msg : String = undefined) : void;
    /**
     * @hide
     * Overridden and disabled. The editor element does not support standard valid/invalid marking.
     * @method
     */
    override public native function clearInvalid() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function onDestroy() : void;
    override protected native function initValue() : void;
    /**
     * Returns the checked state of the checkbox.
     * @return True if checked, else false
     */
    override public native function getValue() : *;
    protected native function onClick() : void;
    /**
     * Sets the checked state of the checkbox, fires the 'check' event, and calls a
     * <code><b class='link'>#handler</b></code> (if configured).
     * @param checked The following values will check the checkbox:
     * <code>true, 'true', '1', or 'on'</code>. Any other value will uncheck the checkbox.
     * @return this
     */
    override public native function setValue(checked : *) : Field;
}}
