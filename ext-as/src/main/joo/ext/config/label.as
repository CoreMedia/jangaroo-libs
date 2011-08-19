package ext.config {


/**
 * Basic Label field.
 *
 * <p>This class represents the xtype 'label' and serves as a
 * typed config object for constructor of class Label.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.Label
 */
[ExtConfig(target="ext.form.Label", xtype="label")]
public class label extends box {

  public function label(config:Object = null) {

    super(config);
  }


  /**
   The id of the input element to which this label will be bound via the standard HTML 'for' attribute. If not specified, the attribute will not be added to the label.
   */
  public native function get forId():String;

  /**
   * @private
   */
  public native function set forId(value:String):void;

  /**
   An HTML fragment that will be used as the label's innerHTML (defaults to ''). Note that if <a href="output/Ext.form.Label.html#Ext.form.Label-text">text</a> is specified it will take precedence and this value will be ignored.
   */
  override public native function get html():*;

  /**
   * @private
   */
  override public native function set html(value:*):void;

  /**
   The plain text to display within the label (defaults to ''). If you need to include HTML tags within the label's innerHTML, use the <a href="output/Ext.form.Label.html#Ext.form.Label-html">html</a> config instead.
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;


}
}
    