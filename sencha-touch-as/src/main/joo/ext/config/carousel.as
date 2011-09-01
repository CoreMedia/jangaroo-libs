package ext.config {


/**
 * A customized Panel which provides the ability to slide back and forth between different child items.
 <h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.Carousel.html#Ext.Carousel-ui">ui</a> (defines the style of the carousel)</li><li><a href="output/Ext.Carousel.html#Ext.Carousel-direction">direction</a> (defines the direction of the carousel)</li><li><a href="output/Ext.Carousel.html#Ext.Carousel-indicator">indicator</a> (defines if the indicator show be shown)</li></ul><h2>Useful Methods</h2><ul class="list"><li><a href="output/Ext.Carousel.html#Ext.Carousel-next">next</a> (moves to the next card)</li><li><a href="output/Ext.Carousel.html#Ext.Carousel-prev">prev</a> (moves to the previous card)</li><li><a href="output/Ext.Carousel.html#Ext.Carousel-setActiveItem">setActiveItem</a> (moves to the passed card)</li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Carousel/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var carousel = new Ext.Carousel({
 items: [
 {
 html: '&lt;p&gt;Navigate the carousel on this page by swiping left/right.&lt;/p&gt;',
 cls : 'card card1'
 },
 {
 html: '&lt;p&gt;Clicking on either side of the indicators below&lt;/p&gt;',
 cls : 'card card2'
 },
 {
 html: 'Card #3',
 cls : 'card card3'
 }
 ]
 });

 var panel = new Ext.Panel({
 cls: 'cards',
 layout: {
 type : 'vbox',
 align: 'stretch'
 },
 defaults: {
 flex: 1
 },
 items: [
 carousel,
 {
 xtype    : 'carousel',
 ui       : 'light',
 direction: 'vertical',

 items: [
 {
 html: '&lt;p&gt;Carousels can be vertical and given a ui of "light" or "dark".&lt;/p&gt;',
 cls : 'card card1'
 },
 {
 html: 'Card #2',
 cls : 'card card2'
 },
 {
 html: 'Card #3',
 cls : 'card card3'
 }
 ]
 }
 ]
 });
 </code></pre>
 *
 * <p>This class represents the xtype 'carousel' and serves as a
 * typed config object for constructor of class Carousel.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Carousel
 */
[ExtConfig(target="ext.Carousel", xtype="carousel")]
public class carousel extends panel {

  public function carousel(config:Object = null) {

    super(config);
  }


  /**
   The base CSS class to apply to the Carousel's element (defaults to <code>'x-carousel'</code>).
   */
  override public native function get baseCls():String;

  /**
   * @private
   */
  override public native function set baseCls(value:String):void;

  /**
   The direction of the Carousel. Default is 'horizontal'. 'vertical' also available.
   */
  public native function get direction():String;

  /**
   * @private
   */
  public native function set direction(value:String):void;

  /**
   Provides an indicator while toggling between child items to let the user know where they are in the card stack.
   */
  public native function get indicator():Boolean;

  /**
   * @private
   */
  public native function set indicator(value:Boolean):void;

  /**
   Style options for Carousel. Default is 'dark'. 'light' is also available.
   */
  override public native function get ui():String;

  /**
   * @private
   */
  override public native function set ui(value:String):void;


}
}
    