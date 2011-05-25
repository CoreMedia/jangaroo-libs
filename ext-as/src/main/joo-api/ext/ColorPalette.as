package ext {
/**
 * Simple color palette class for choosing colors.  The palette can be rendered to any container.<br />
 * Here's an example of typical usage:
 * <pre><code>
var cp = new ext.ColorPalette({value:'993300'});  // initial selected color
cp.render('my-div');

cp.on('select', function(palette, selColor){
    // do something with selColor
});
</code></pre>
*/
public class ColorPalette extends Component {
/**
 * @constructor
 * Create a new ColorPalette
 * @param config The config object
 * @xtype colorpalette
 */
public function ColorPalette(config:Object = null) {
  super(config);
}
	/**
	 * @cfg {String} tpl An existing XTemplate instance to be used in place of the default template for rendering the component.
	 */
    /**
     * @cfg {String} itemCls
     * The CSS class to apply to the containing element (defaults to "x-color-palette")
     */
    public var itemCls  : String;
    /**
     * @cfg {String} value
     * The initial color to highlight (should be a valid 6-digit color hex code without the # symbol).  Note that
     * the hex codes are case-sensitive.
     */
    public var value  : String;
    public var clickEvent;
    //protected var ctype;
    /**
     * @cfg {Boolean} allowReselect If set to true then reselecting a color that is already selected fires the <b class='link' title='#select'>select</b> event
     */
    public var allowReselect  : Boolean;
    /**
     * <p>An array of 6-digit color hex code strings (without the # symbol).  This array can contain any number
     * of colors, and each hex code should be unique.  The width of the palette is controlled via CSS by adjusting
     * the width property of the 'x-color-palette' class (or assigning a custom class), so you can balance the number
     * of colors with the width setting until the box is symmetrical.</p>
     * <p>You can override individual colors if needed:</p>
     * <pre><code>
var cp = new ext.ColorPalette();
cp.colors[0] = "FF0000";  // change the first box to red
</code></pre>

Or you can provide a custom array of your own for complete control:
<pre><code>
var cp = new ext.ColorPalette();
cp.colors = ["000000", "993300", "333300"];
</code></pre>
     */
    public var colors  : Array;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function afterRender() : void;
    protected native function handleClick(e, t) : void;
    /**
     * Selects the specified color in the palette (fires the <b class='link' title='#select'>select</b> event)
     * @param color A valid 6-digit color hex code (# will be stripped if included)
     */
    public native function select(color : String) : void;
    /**
     * @cfg {String} autoEl @hide
     */
}}
