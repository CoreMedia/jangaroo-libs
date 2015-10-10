package ext {
import ext.config.colorpalette;

/**
 * Fires when a color is selected
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.ColorPalette</code>

 *       </li>

 *       <li>
 *           <code>color:String</code>
 The 6-digit color hex code (without the # symbol)
 *       </li>

 * </ul>
 */
[Event(name="select")]


/**
 * Simple color palette class for choosing colors. The palette can be rendered to any container.<br/>Here's an example of typical usage: <pre><code>var cp = new Ext.ColorPalette({value:'993300'});  // initial selected color
 cp.render('my-div');

 cp.on('select', function(palette, selColor){
 // do something with selColor
 });
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'colorpalette' / the EXML element &lt;colorpalette>.</p>
 * @see ext.config.colorpalette
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ColorPalette Sencha Docs Ext JS 3.4
 */
[Native]
public class ColorPalette extends Component {

  /**
   * Create a new ColorPalette
   *
   * @param config The config object
   * @see ext.config.colorpalette
   */
  public function ColorPalette(config:colorpalette = null) {
    super(null);
  }

  /**
   An array of 6-digit color hex code strings (without the # symbol). This array can contain any number of colors, and each hex code should be unique. The width of the palette is controlled via CSS by adjusting the width property of the 'x-color-palette' class (or assigning a custom class), so you can balance the number of colors with the width setting until the box is symmetrical.
   <p>You can override individual colors if needed:</p><pre><code>var cp = new Ext.ColorPalette();
   cp.colors[0] = 'FF0000';  // change the first box to red
   </code></pre>Or you can provide a custom array of your own for complete control: <pre><code>var cp = new Ext.ColorPalette();
   cp.colors = ['000000', '993300', '333300'];
   </code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ColorPalette-property-colors Sencha Docs Ext JS 3.4
   */
  public native function get colors():Array;

  /**
   * @private
   */
  public native function set colors(value:Array):void;

  /**
   If set to true then reselecting a color that is already selected fires the <a href="output/Ext.ColorPalette.html#Ext.ColorPalette-select">select</a> event
   */
  public native function get allowReselect():Boolean;

  /**
   The DOM event that will cause a color to be selected. This can be any valid event name (dblclick, contextmenu). Defaults to <tt>'click'</tt>.
   */
  public native function get clickEvent():String;

  /**
   The CSS class to apply to the containing element (defaults to 'x-color-palette')
   */
  override public native function get itemCls():String;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.ColorPalette.html#Ext.ColorPalette-handler">handler</a></code> function will be called. Defaults to this ColorPalette instance.
   */
  public native function get scope():Object;

  /**
   The initial color to highlight (should be a valid 6-digit color hex code without the # symbol). Note that the hex codes are case-sensitive.
   */
  public native function get value():String;

  /**
   * Selects the specified color in the palette (fires the <a href="output/Ext.ColorPalette.html#Ext.ColorPalette-select">select</a> event)
   *
   * @param color A valid 6-digit color hex code (# will be stripped if included)
   * @param suppressEvent True to stop the select event from firing. Defaults to <tt>false</tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.ColorPalette-method-select Sencha Docs Ext JS 3.4
   */
  public native function select(color:String, suppressEvent:Boolean = false):void;

}
}
    