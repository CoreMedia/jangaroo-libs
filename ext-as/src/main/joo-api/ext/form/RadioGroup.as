package ext.form {
/**
 * A grouping container for <b class='link'>ext.form.Radio</b> controls.
*/
public class RadioGroup extends CheckboxGroup {
/**
 * @constructor
 * Creates a new RadioGroup
 * @param config Configuration options
 * @xtype radiogroup
 */
public function RadioGroup(config : Object) {
  super(config);
}
    /**
     * @cfg {Boolean} allowBlank True to allow every item in the group to be blank (defaults to true).
     * If allowBlank = false and no items are selected at validation time, <b class='link' title='#blankText'>blankText</b> will
     * be used as the error text.
     */
    //public var allowBlank  : Boolean;
    /**
     * @cfg {String} blankText Error text to display if the <b class='link' title='#allowBlank'>allowBlank</b> validation fails
     * (defaults to 'You must select one item in this group')
     */
    //public var blankText  : String;
    //protected var defaultType ;
    //protected var groupCls ;
    /**
     * Gets the selected <b class='link'>ext.form.Radio</b> in the group, if it exists.
     * @return The selected radio (ext.form.Radio).
     */
    override public native function getValue() : *;
    /**
     * Sets the checked radio in the group.
     * @param id The radio to check.
     * @param value The value to set the radio.
     * @return this
     */
    public native function setRadioValue(id : *, value : Boolean) : RadioGroup;
    override protected native function fireChecked() : void;
    protected native function bufferChecked() : void;
    override protected native function onDestroy() : void;
}}
