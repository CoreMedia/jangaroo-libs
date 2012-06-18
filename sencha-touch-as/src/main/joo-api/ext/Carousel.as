package ext {

import ext.config.carousel;
import ext.form.Number;

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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'carousel' / the EXML element &lt;carousel>.</p>
 * @see ext.config.carousel
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#cls-Ext.Carousel Ext JS source
 */
[Native]
public class Carousel extends Panel {

  /**
   * Create a new Carousel.
   *
   * @param config The config object
   * @see ext.config.carousel
   */
  public function Carousel(config:carousel = null) {
    super(null);
  }

  /**
   The direction of the Carousel. Default is 'horizontal'. 'vertical' also available.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get direction():String;

  /**
   Provides an indicator while toggling between child items to let the user know where they are in the card stack.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get indicator():Boolean;

  /**
   * The afterLayout method on the carousel just makes sure the active card is still into view. It also makes sure the indicator is pointing to the right card.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-afterLayout Ext JS source
   */
  public native function afterLayout():void;

  /**
   * Returns the index of the currently active card.
   *
   * @return The index of the currently active card.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-getActiveIndex Ext JS source
   */
  public native function getActiveIndex():ext.form.Number;

  /**
   * Returns the difference between the index of the active card and the passed card.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-getCardIndexOffset Ext JS source
   */
  public native function getCardIndexOffset():void;

  /**
   * Returns the amount of pixels from the current drag to a card.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-getCardOffset Ext JS source
   */
  public native function getCardOffset():void;

  /**
   * Returns true if the passed card is within 2 cards from the active card.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-isCardInRange Ext JS source
   */
  public native function isCardInRange():void;

  /**
   * Method to determine whether this Sortable is currently sorting.
   *
   * @return the sorting state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-isHorizontal Ext JS source
   */
  public native function isHorizontal():Boolean;

  /**
   * Method to determine whether this Sortable is currently disabled.
   *
   * @return the disabled state of this Sortable.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-isVertical Ext JS source
   */
  public native function isVertical():Boolean;

  /**
   * Switches the next card
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-next Ext JS source
   */
  public native function next():void;

  /**
   * Here we make sure that the card we are switching to is not translated by the carousel anymore. This is only if we are switching card using the setActiveItem of setActiveItem methods and thus customDrag is not set to true.
   *
   * @param newCard The card that will be switched to
   * @param oldCard The card that will be switched from
   * @param newIndex The Container index position of the selected card
   * @param animated True if this cardswitch will be animated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-onBeforeCardSwitch Ext JS source
   */
  override public native function onBeforeCardSwitch(newCard:Component, oldCard:Component, newIndex:ext.form.Number, animated:Boolean):void;

  /**
   * This function makes sure that all the cards are in correct locations after a card switch
   *
   * @param newCard The card that has been switched to
   * @param oldCard The card that has been switched from
   * @param newIndex The Container index position of the selected card
   * @param animated True if this cardswitch was animated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-onCardSwitch Ext JS source
   */
  override public native function onCardSwitch(newCard:Component, oldCard:Component, newIndex:ext.form.Number, animated:Boolean):void;

  /**
   * The onDrag method sets the currentScroll object. It also slows down the drag if we are at the bounds of the carousel.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-onDrag Ext JS source
   */
  public native function onDrag():void;

  /**
   * This determines if we are going to the next card, the previous card, or back to the active card.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-onDragEnd Ext JS source
   */
  public native function onDragEnd():void;

  /**
   * Switches the previous card
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-prev Ext JS source
   */
  public native function prev():void;

  /**
   * This is an internal function that is called in onDragEnd that goes to the next or previous card.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-scrollToCard Ext JS source
   */
  public native function scrollToCard():void;

  /**
   * This will update all the cards to their correct position based on the current drag. It can be passed true to animate the position updates.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Carousel.html#method-Ext.Carousel-updateCardPositions Ext JS source
   */
  public native function updateCardPositions():void;

}
}
    