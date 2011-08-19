package ext.config {


/**
 * Simple color palette class for choosing colors. The palette can be rendered to any container.<br/>Here's an example of typical usage: <pre><code>var cp = new Ext.ColorPalette({value:'993300'});  // initial selected color
 cp.render('my-div');

 cp.on('select', function(palette, selColor){
 // do something with selColor
 });
 </code></pre>
 *
 * <p>This class represents the xtype 'colorpalette' and serves as a
 * typed config object for constructor of class ColorPalette.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.ColorPalette
 */
[ExtConfig(target="ext.ColorPalette", xtype="colorpalette")]
public class colorpalette extends component {

  public function colorpalette(config:Object = null) {

    super(config);
  }


  /**
   If set to true then reselecting a color that is already selected fires the <a href="output/Ext.ColorPalette.html#Ext.ColorPalette-select">select</a> event
   */
  public native function get allowReselect():Boolean;

  /**
   * @private
   */
  public native function set allowReselect(value:Boolean):void;

  /**
   The DOM event that will cause a color to be selected. This can be any valid event name (dblclick, contextmenu). Defaults to <tt>'click'</tt>.
   */
  public native function get clickEvent():String;

  /**
   * @private
   */
  public native function set clickEvent(value:String):void;

  /**
   A function that will handle the select event of this palette. The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>palette</code> : ColorPalette<div class="sub-desc">The <a href="output/Ext.ColorPalette.html#Ext.ColorPalette-palette">Ext.ColorPalette</a>.</div></li><li><code>color</code> : String<div class="sub-desc">The 6-digit color hex code (without the # symbol).</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   The CSS class to apply to the containing element (defaults to 'x-color-palette')
   */
  override public native function get itemCls():String;

  /**
   * @private
   */
  override public native function set itemCls(value:String):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.ColorPalette.html#Ext.ColorPalette-handler">handler</a></code> function will be called. Defaults to this ColorPalette instance.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   An existing XTemplate instance to be used in place of the default template for rendering the component.
   */
  override public native function get tpl():*;

  /**
   * @private
   */
  override public native function set tpl(value:*):void;

  /**
   The initial color to highlight (should be a valid 6-digit color hex code without the # symbol). Note that the hex codes are case-sensitive.
   */
  public native function get value():String;

  /**
   * @private
   */
  public native function set value(value:String):void;


}
}
    