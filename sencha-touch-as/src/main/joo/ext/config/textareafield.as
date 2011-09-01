package ext.config {


/**
 * Wraps a textarea. See <a href="Ext.form.FormPanel.html">FormPanel</a> for example usage.

 *
 * <p>This class represents the xtype 'textareafield' and serves as a
 * typed config object for constructor of class TextArea.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.form.TextArea
 */
[ExtConfig(target="ext.form.TextArea", xtype="textareafield")]
public class textareafield extends textfield {

  public function textareafield(config:Object = null) {

    super(config);
  }


  /**
   The maximum number of lines made visible by the input.
   */
  public native function get maxRows():int;

  /**
   * @private
   */
  public native function set maxRows(value:int):void;


}
}
    