package ext {

/**
 * A base editor field that handles displaying/hiding on demand and has some built-in sizing and event handling logic.
*/
public class Editor extends Component {
/**
 * @constructor
 * Create a new Editor
 * @param config The config object
 * @xtype editor
 */
public function Editor(config : Object) {
  super(config);
}
    /**
    * @cfg {ext.form.Field} field
    * The Field object (or descendant) or config object for field
    */
    /**
     * @cfg {Boolean} allowBlur
     * True to <b class='link' title='#completeEdit complete the editing'>process</b> if in edit mode when the
     * field is blurred. Defaults to <code>false</code>.
     */
    /**
     * @cfg {Boolean/String} autoSize
     * True for the editor to automatically adopt the size of the element being edited, "width" to adopt the width only,
     * or "height" to adopt the height only (defaults to false)
     */
    /**
     * @cfg {Boolean} revertInvalid
     * True to automatically revert the field value and cancel the edit when the user completes an edit and the field
     * validation fails (defaults to true)
     */
    /**
     * @cfg {Boolean} ignoreNoChange
     * True to skip the edit completion process (no save, no events fired) if the user completes an edit and
     * the value has not changed (defaults to false).  Applies only to string values - edits for other data types
     * will never be ignored.
     */
    /**
     * @cfg {Boolean} hideEl
     * False to keep the bound element visible while the editor is displayed (defaults to true)
     */
    /**
     * @cfg {Mixed} value
     * The data value of the underlying field (defaults to "")
     */
    public var value  : *;
    /**
     * @cfg {String} alignment
     * The position to align to (see <b class='link'>ext.Element#alignTo</b> for more details, defaults to "c-c?").
     */
    public var alignment : String;
    /**
     * @cfg {Boolean/String} shadow "sides" for sides/bottom only, "frame" for 4-way shadow, and "drop"
     * for bottom-right shadow (defaults to "frame")
     */
    public var shadow  : *;
    /**
     * @cfg {Boolean} constrain True to constrain the editor to the viewport
     */
    public var constrain  : Boolean;
    /**
     * @cfg {Boolean} swallowKeys Handle the keydown/keypress events so they don't propagate (defaults to true)
     */
    public var swallowKeys  : Boolean;
    /**
     * @cfg {Boolean} completeOnEnter True to complete the edit when the enter key is pressed (defaults to false)
     */
    public var completeOnEnter  : Boolean;
    /**
     * @cfg {Boolean} cancelOnEsc True to cancel the edit when the escape key is pressed (defaults to false)
     */
    public var cancelOnEsc  : Boolean;
    /**
     * @cfg {Boolean} updateEl True to update the innerHTML of the bound element when the update completes (defaults to false)
     */
    public var updateEl  : Boolean;
    override protected native function initComponent() : void;
    override protected native function onRender(container : Element, position : Element) : void;
    protected native function onSpecialKey(field, e) : void;
    /**
     * Starts the editing process and shows the editor.
     * @param el The element to edit
     * @param value A value to initialize the editor with. If a value is not provided, it defaults
      * to the innerHTML of el.
     */
    public native function startEdit(el : *, value : String = undefined) : void;
    protected native function doAutoSize() : void;
    /**
     * Sets the height and width of this editor.
     * @param width The new width
     * @param height The new height
     */
    public native function setSize(width : Number, height : Number) : void;
    /**
     * Realigns the editor to the bound field based on the current alignment config value.
     */
    public native function realign() : void;
    /**
     * Ends the editing process, persists the changed value to the underlying field, and hides the editor.
     * @param remainVisible Override the default behavior and keep the editor visible after edit (defaults to false)
     */
    public native function completeEdit(remainVisible : Boolean) : void;
    override protected native function onShow() : void;
    public native function deferredFocus() : void;
    /**
     * Cancels the editing process and hides the editor without persisting any changes.  The field value will be
     * reverted to the original starting value.
     * @param remainVisible Override the default behavior and keep the editor visible after
     * cancel (defaults to false)
     */
    public native function cancelEdit(remainVisible : Boolean) : void;
    protected native function hideEdit(remainVisible) : void;
    protected native function onBlur() : void;
    override protected native function onHide() : void;
    /**
     * Sets the data value of the editor
     * @param value Any valid value supported by the underlying field
     */
    public native function setValue(value : *) : void;
    /**
     * Gets the data value of the editor
     * @return The data value
     */
    public native function getValue() : *;
    override protected native function beforeDestroy() : void;
}}
