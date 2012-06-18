package ext.layout {

import ext.config.cardlayout;


/**
 * This layout manages multiple child Components, each is fit to the Container, where only a single child Component can be visible at any given time. This layout style is most commonly used for wizards, tab implementations, etc. This class is intended to be extended or created via the layout:'card' <a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a> config, and should generally not need to be created directly via the new keyword.
 <p>The CardLayout's focal method is <a href="output/Ext.layout.CardLayout.html#Ext.layout.CardLayout-setActiveItem">setActiveItem</a>. Since only one panel is displayed at a time, the only way to move from one Component to the next is by calling setActiveItem, passing the id or index of the next panel to display. The layout itself does not provide a user interface for handling this navigation, so that functionality must be provided by the developer.</p><p>Containers that are configured with a card layout will have a method setActiveItem dynamically added to it.</p><pre><code>     var p = new Ext.Panel({
 fullscreen: true,
 layout: 'card',
 items: [{
 html: 'Card 1'
 },{
 html: 'Card 2'
 }]
 });
 p.setActiveItem(1);
 </code></pre><br/><br/>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.cardlayout
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CardLayout.html#cls-Ext.layout.CardLayout Ext JS source
 */
[Native]
public class CardLayout extends FitLayout {

  /**
   *
   *
   * @see ext.config.cardlayout
   */
  public function CardLayout(config:cardlayout = null) {
    super(config);
  }

  /**
   * Return the active (visible) component in the layout.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CardLayout.html#method-Ext.layout.CardLayout-getActiveItem Ext JS source
   */
  public native function getActiveItem():void;

  /**
   * Return the active (visible) component in the layout to the next card, optional wrap parameter to wrap to the first card when the end of the stack is reached.
   *
   * @param wrap Wrap to the first card when the end of the stack is reached.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CardLayout.html#method-Ext.layout.CardLayout-getNext Ext JS source
   */
  public native function getNext(wrap:Boolean):void;

  /**
   * Return the active (visible) component in the layout to the previous card, optional wrap parameter to wrap to the last card when the beginning of the stack is reached.
   *
   * @param wrap Wrap to the first card when the end of the stack is reached.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CardLayout.html#method-Ext.layout.CardLayout-getPrev Ext JS source
   */
  public native function getPrev(wrap:Boolean):void;

  /**
   * Sets the active (visible) component in the layout to the next card, optional wrap parameter to wrap to the first card when the end of the stack is reached.
   *
   * @param anim Animation to use for the card transition
   * @param wrap Wrap to the first card when the end of the stack is reached.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CardLayout.html#method-Ext.layout.CardLayout-next Ext JS source
   */
  public native function next(anim:*, wrap:Boolean):void;

  /**
   * Sets the active (visible) component in the layout to the previous card, optional wrap parameter to wrap to the last card when the beginning of the stack is reached.
   *
   * @param anim Animation to use for the card transition
   * @param wrap Wrap to the first card when the end of the stack is reached.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CardLayout.html#method-Ext.layout.CardLayout-prev Ext JS source
   */
  public native function prev(anim:*, wrap:Boolean):void;

  /**
   * Sets the active (visible) item in the layout.
   *
   * @param item The string component id or numeric index of the item to activate
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CardLayout.html#method-Ext.layout.CardLayout-setActiveItem Ext JS source
   */
  public native function setActiveItem(item:*):void;

}
}
    