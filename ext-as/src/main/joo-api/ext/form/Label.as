package ext.form {
import ext.BoxComponent;
import ext.Element;

/**
 * Basic Label field.
*/
public class Label extends BoxComponent {
/**
 * @constructor
 * Creates a new Label
 * @param config The configuration options.  If an element is passed, it is set as the internal
 * element and its id used as the component id.  If a string is passed, it is assumed to be the id of an existing element
 * and is used as the component id.  Otherwise, it is assumed to be a standard config object and is applied to the component.
 * @xtype label
 */
public function Label(config : *) {
  super(config);
}
    /**
     * @cfg {String} text The plain text to display within the label (defaults to ''). If you need to include HTML
     * tags within the label's innerHTML, use the <b class='link' title='#html'>html</b> config instead.
     */
    /**
     * @cfg {String} forId The id of the input element to which this label will be bound via the standard HTML 'for'
     * attribute. If not specified, the attribute will not be added to the label.
     */
    /**
     * @cfg {String} html An HTML fragment that will be used as the label's innerHTML (defaults to '').
     * Note that if <b class='link' title='#text'>text</b> is specified it will take precedence and this value will be ignored.
     */
    override protected native function onRender(container : Element, position : Element) : void;
    /**
     * Updates the label's innerHTML with the specified string.
     * @param text The new label text
     * @param encode False to skip HTML-encoding the text when rendering it
     * to the label (defaults to true which encodes the value). This might be useful if you want to include
     * tags in the label's innerHTML rather than rendering them as string literals per the default logic.
     * @return this
     */
    public native function setText(text : String, encode : Boolean = undefined) : Label;
}}
