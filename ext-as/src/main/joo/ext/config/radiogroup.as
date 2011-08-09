package ext.config {


/**
 * A grouping container for <a href="Ext.form.Radio.html">Ext.form.Radio</a> controls.
 * <p>This class serves as a typed config object for constructor of class RadioGroup.</p>
 *
 * @see ext.form.RadioGroup
 */
[ExtConfig(target="ext.form.RadioGroup", xtype="radiogroup")]
public class radiogroup extends checkboxgroup {

  public function radiogroup(config:Object = null) {

    super(config);
  }


  /**
   True to allow every item in the group to be blank (defaults to true). If allowBlank = false and no items are selected at validation time, {&#64;link
   */
  override public native function get allowBlank():Boolean;

  /**
   * @private
   */
  override public native function set allowBlank(value:Boolean):void;

  /**
   Error text to display if the <a href="output/Ext.form.RadioGroup.html#Ext.form.RadioGroup-allowBlank">allowBlank</a> validation fails (defaults to 'You must select one item in this group')
   */
  override public native function get blankText():String;

  /**
   * @private
   */
  override public native function set blankText(value:String):void;

  /**
   An Array of <a href="Ext.form.Radio.html">Radio</a>s or Radio config objects to arrange in the group.
   */
  override public native function get items():Array;

  /**
   * @private
   */
  override public native function set items(value:Array):void;


}
}
    