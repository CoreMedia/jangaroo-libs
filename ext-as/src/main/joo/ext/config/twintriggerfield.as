package ext.config {


/**
 * TwinTriggerField is not a public class to be used directly. It is meant as an abstract base class to be extended by an implementing class. For an example of implementing this class, see the custom SearchField implementation here: <a href="http://extjs.com/deploy/ext/examples/form/custom.html">http://extjs.com/deploy/ext/examples/form/custom.html</a>
 * <p>This class serves as a typed config object for constructor of class TwinTriggerField.</p>
 *
 * @see ext.form.TwinTriggerField
 */
[ExtConfig(target="ext.form.TwinTriggerField")]
public class twintriggerfield extends trigger {

  public function twintriggerfield(config:Object = null) {

    super(config);
  }


  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> by default and <tt>triggerClass</tt> will be <b>appended</b> if specified.
   */
  public native function get trigger1Class():String;

  /**
   * @private
   */
  public native function set trigger1Class(value:String):void;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> by default and <tt>triggerClass</tt> will be <b>appended</b> if specified.
   */
  public native function get trigger2Class():String;

  /**
   * @private
   */
  public native function set trigger2Class(value:String):void;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> config object specifying the structure of the trigger elements for this Field. (Optional).
   <p>Specify this when you need a customized element to contain the two trigger elements for this Field. Each trigger element must be marked by the CSS class <tt>x-form-trigger</tt> (also see <tt><a href="output/Ext.form.TwinTriggerField.html#Ext.form.TwinTriggerField-trigger1Class">trigger1Class</a></tt> and <tt><a href="output/Ext.form.TwinTriggerField.html#Ext.form.TwinTriggerField-trigger2Class">trigger2Class</a></tt>).</p><p>Note that when using this option, it is the developer's responsibility to ensure correct sizing, positioning and appearance of the triggers.</p>
   */
  override public native function get triggerConfig():*;

  /**
   * @private
   */
  override public native function set triggerConfig(value:*):void;


}
}
    