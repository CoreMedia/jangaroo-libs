package ext.form {
import ext.Element;

/**
 * Multiline text field.  Can be used as a direct replacement for traditional textarea fields, plus adds
 * support for auto-sizing.
*/
public class TextArea extends TextField {
/**
 * @constructor
 * Creates a new TextArea
 * @param config Configuration options
 * @xtype textarea
 */
public function TextArea(config : Object) {
  super(config);
}
    /**
     * @cfg {Number} growMin The minimum height to allow when <code><b class='link' title='ext.form.TextField#grow'>grow</b>=true</code>
     * (defaults to <code>60</code>)
     */
    //public var growMin  : Number;
    /**
     * @cfg {Number} growMax The maximum height to allow when <code><b class='link' title='ext.form.TextField#grow'>grow</b>=true</code>
     * (defaults to <code>1000</code>)
     */
    //public var growMax : Number;
    public var growAppend ;
    public var growPad ;
    public var enterIsSpecial ;
    /**
     * @cfg {Boolean} preventScrollbars <code>true</code> to prevent scrollbars from appearing regardless of how much text is
     * in the field (equivalent to setting overflow: hidden, defaults to <code>false</code>)
     */
    public var preventScrollbars : Boolean;
    /**
     * @cfg {String/Object} autoCreate <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element spec, or true for a default
     * element spec. Used to create the <b class='link' title='ext.Component#getEl'>Element</b> which will encapsulate this Component.
     * See <code><b class='link' title='ext.Component#autoEl'>autoEl</b></code> for details.  Defaults to:</p>
     * <pre><code>{tag: "textarea", style: "width:100px;height:60px;", autocomplete: "off"}</code></pre>
     */
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function onDestroy() : void;
    override protected native function fireKey(e) : void;
    override protected native function onKeyUp(e) : void;
    /**
     * Automatically grows the field to accomodate the height of the text up to the maximum field height allowed.
     * This only takes effect if grow = true, and fires the <b class='link' title='#autosize'>autosize</b> event if the height changes.
     */
    override public native function autoSize() : void;
}}
