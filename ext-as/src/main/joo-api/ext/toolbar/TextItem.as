package ext.toolbar {
/**
 * A simple class that renders text directly into a toolbar (with css class:<tt>'xtb-text'</tt>). Example usage: <pre><code>new Ext.Panel({
 tbar : [
 {xtype: 'tbtext', text: 'Item 1'} // or simply 'Item 1'
 ]
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'tbtext' / the EXML element &lt;tbtext>.</p>
 * @see ext.config.tbtext
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#cls-Ext.Toolbar.TextItem Ext JS source
 */
public class TextItem extends Item {

  /**
   * Creates a new TextItem
   *
   * @param text A text string, or a config object containing a <tt>text</tt> property
   * @see ext.config.tbtext
   */
  public function TextItem(text:*) {
    super(null);
  }

  /**
   The text to be used as innerHTML (html tags are accepted)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get text():String;

  /**
   * Updates this item's text, setting the text to be used as innerHTML.
   *
   * @param t The text to display (html accepted).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Toolbar.html#method-Ext.Toolbar.TextItem-setText Ext JS source
   */
  public native function setText(t:String):void;

}
}
    