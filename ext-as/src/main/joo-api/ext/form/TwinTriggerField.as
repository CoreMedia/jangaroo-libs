package ext.form {
import ext.IEventObject;

/**
 * TwinTriggerField is not a public class to be used directly. It is meant as an abstract base class to be extended by an implementing class. For an example of implementing this class, see the custom SearchField implementation here: <a href="http://extjs.com/deploy/ext/examples/form/custom.html">http://extjs.com/deploy/ext/examples/form/custom.html</a>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.twintriggerfield
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TwinTriggerField Sencha Docs Ext JS 3.4
 */
public class TwinTriggerField extends TriggerField {

  /**
   *
   *
   * @see ext.config.twintriggerfield
   */
  public function TwinTriggerField() {
    super(null);
  }

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> by default and <tt>triggerClass</tt> will be <b>appended</b> if specified.
   */
  public native function get trigger1Class():String;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> by default and <tt>triggerClass</tt> will be <b>appended</b> if specified.
   */
  public native function get trigger2Class():String;

  /**
   * The function that should handle the trigger's click event. This method does nothing by default until overridden by an implementing function. See <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-onTriggerClick">Ext.form.TriggerField.onTriggerClick</a> for additional information.
   *
   * @param e
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TwinTriggerField-method-onTrigger1Click Sencha Docs Ext JS 3.4
   */
  public native function onTrigger1Click(e:IEventObject):void;

  /**
   * The function that should handle the trigger's click event. This method does nothing by default until overridden by an implementing function. See <a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-onTriggerClick">Ext.form.TriggerField.onTriggerClick</a> for additional information.
   *
   * @param e
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TwinTriggerField-method-onTrigger2Click Sencha Docs Ext JS 3.4
   */
  public native function onTrigger2Click(e:IEventObject):void;

}
}
    