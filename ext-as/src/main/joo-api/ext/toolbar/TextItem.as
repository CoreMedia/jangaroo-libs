package ext.toolbar {
/**
 * A simple class that renders text directly into a toolbar
 * (with css class:<tt>'xtb-text'</tt>). Example usage:
 * <pre><code>
new ext.Panel({
    tbar : [
        {xtype: 'tbtext', text: 'Item 1'} // or simply 'Item 1'
    ]
});
</code></pre>
*/
public class TextItem extends Item {
/**
 * @constructor
 * Creates a new TextItem
 * @param text A text string, or a config object containing a <tt>text</tt> property
 * @xtype tbtext
 */
  public function TextItem(text : *) {
    super(text);
  }

  public native function constructor(text : *) : void;
    /**
     * Updates this item's text, setting the text to be used as innerHTML.
     * @param t The text to display (html accepted).
     */
    public native function setText(t : String) : void;
}}
