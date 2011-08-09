package ext.config {


/**
 * A simple class that renders text directly into a toolbar (with css class:<tt>'xtb-text'</tt>). Example usage: <pre><code>new Ext.Panel({
 tbar : [
 {xtype: 'tbtext', text: 'Item 1'} // or simply 'Item 1'
 ]
 });
 </code></pre>
 * <p>This class serves as a typed config object for constructor of class TextItem.</p>
 *
 * @see ext.toolbar.TextItem
 */
[ExtConfig(target="ext.toolbar.TextItem", xtype="tbtext")]
public class tbtext extends tbitem {

  public function tbtext(config:Object = null) {

    super(config);
  }


  /**
   The text to be used as innerHTML (html tags are accepted)
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;


}
}
    