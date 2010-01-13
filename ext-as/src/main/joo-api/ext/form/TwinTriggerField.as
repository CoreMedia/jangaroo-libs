package ext.form {
/**
 * TwinTriggerField is not a public class to be used directly.  It is meant as an abstract base class
 * to be extended by an implementing class.  For an example of implementing this class, see the custom
 * SearchField implementation here:
 * <a href="http://extjs.com/deploy/ext/examples/form/custom.html">http://extjs.com/deploy/ext/examples/form/custom.html</a>
 */
    public class TwinTriggerField extends TriggerField {
  public function TwinTriggerField(config:Object = null) {
    super(config);
  }
/**
     * @cfg {Mixed} triggerConfig
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> config object specifying the structure of the trigger elements
     * for this Field. (Optional).</p>
     * <p>Specify this when you need a customized element to contain the two trigger elements for this Field.
     * Each trigger element must be marked by the CSS class <code>x-form-trigger</code> (also see
     * <code><b class='link' title='#trigger1Class'>trigger1Class</b></code> and <code><b class='link' title='#trigger2Class'>trigger2Class</b></code>).</p>
     * <p>Note that when using this option, it is the developer's responsibility to ensure correct sizing,
     * positioning and appearance of the triggers.</p>
     */
    /**
     * @cfg {String} trigger1Class
     * An additional CSS class used to style the trigger button.  The trigger will always get the
     * class <code>'x-form-trigger'</code> by default and <code>triggerClass</code> will be <b>appended</b> if specified.
     */
    /**
     * @cfg {String} trigger2Class
     * An additional CSS class used to style the trigger button.  The trigger will always get the
     * class <code>'x-form-trigger'</code> by default and <code>triggerClass</code> will be <b>appended</b> if specified.
     */
    override protected native function initComponent() : void;
    public native function getTrigger(index) : void;
    override protected native function initTrigger() : void;
    /**
     * The function that should handle the trigger's click event.  This method does nothing by default
     * until overridden by an implementing function. See <b class='link'>ext.form.TriggerField#onTriggerClick</b>
     * for additional information.  
     * @method
     * @param e
     */
    /**
     * The function that should handle the trigger's click event.  This method does nothing by default
     * until overridden by an implementing function. See <b class='link'>ext.form.TriggerField#onTriggerClick</b>
     * for additional information.  
     * @method
     * @param e
     */
}}
