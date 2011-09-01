package ext {

import ext.config.container;
import ext.form.Number;
import ext.lib.Container;

/**
 * Base class for any <a href="Ext.BoxComponent.html">Ext.BoxComponent</a> that may contain other Components. Containers handle the basic behavior of containing items, namely adding, inserting and removing items.
 <p><u><b>Layout</b></u></p><p>Container classes delegate the rendering of child Components to a layout manager class which must be configured into the Container using the <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> configuration property.</p><p>When either specifying child <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> of a Container, or dynamically <a href="output/Ext.Container.html#Ext.Container-add">adding</a> Components to a Container, remember to consider how you wish the Container to arrange those child elements, and whether those child elements need to be sized using one of Ext's built-in <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> schemes. By default, Containers use the <a href="Ext.layout.AutoContainerLayout.html">AutoContainerLayout</a> scheme which only renders child components, appending them one after the other inside the Container, and <b>does not apply any sizing</b> at all.</p><p>A common mistake is when a developer neglects to specify a <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b>. If a Container is left to use the default <a href="Ext.layout.AutoContainerLayout.html">AutoContainerLayout</a> scheme, none of its child components will be resized, or changed in any way when the Container is resized.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'container' / the EXML element &lt;container>.</p>
 * @see ext.config.container
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container1.html#cls-Ext.Container Ext JS source
 */
public class Container extends ext.lib.Container {

  /**
   * Create a new Container.
   *
   * @param config The config object
   * @see ext.config.container
   */
  public function Container(config:container = null) {
    super();
  }

  /**
   Animation to be used during transitions of cards. Note this only works when this container has a CardLayout. Any valid value from Ext.anims can be used ('fade', 'slide', 'flip', 'cube', 'pop', 'wipe'). Defaults to <tt>null</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get cardSwitchAnimation():*;

  /**
   * Disable this container by masking out
   *
   * @param silent Passing true, will supress the 'disable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container1.html#method-Ext.Container-disable Ext JS source
   */
  override public native function disable(silent:Boolean):void;

  /**
   * Enable this container by removing mask
   *
   * @param silent Passing false will supress the 'enable' event from being fired.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container1.html#method-Ext.Container-enable Ext JS source
   */
  override public native function enable(silent:Boolean):void;

  /**
   * Returns the current activeItem for the layout (only for a card layout)
   *
   * @return activeItem Current active component
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container1.html#method-Ext.Container-getActiveItem Ext JS source
   */
  public native function getActiveItem():Component;

  /**
   * A template method that can be implemented by subclasses of Container. By returning false we can cancel the card switch.
   *
   * @param newCard The card that will be switched to
   * @param oldCard The card that will be switched from
   * @param newIndex The Container index position of the selected card
   * @param animated True if this cardswitch will be animated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container1.html#method-Ext.Container-onBeforeCardSwitch Ext JS source
   */
  public native function onBeforeCardSwitch(newCard:Component, oldCard:Component, newIndex:ext.form.Number, animated:Boolean):void;

  /**
   * A template method that can be implemented by subclasses of Container. If the card is switched using an animation, this method will be called after the animation has finished.
   *
   * @param newCard The card that has been switched to
   * @param oldCard The card that has been switched from
   * @param newIndex The Container index position of the selected card
   * @param animated True if this cardswitch was animated
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container1.html#method-Ext.Container-onCardSwitch Ext JS source
   */
  public native function onCardSwitch(newCard:Component, oldCard:Component, newIndex:ext.form.Number, animated:Boolean):void;

  /**
   * Allows you to set the active card in this container. This method is only available if the container uses a CardLayout. Note that a Carousel and TabPanel both get a CardLayout automatically, so both of those components are able to use this method.
   *
   * @param card The card you want to be made active. A number is interpreted as a card index. An object will be converted to a Component using the objects xtype property, then added to the container and made active. Passing a Component will make sure the component is a child of this container, and then make it active.
   * @param cardSwitchAnimation The cardSwitchAnimation used to switch between the cards. This can be an animation type string or an animation configuration object.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container1.html#method-Ext.Container-setActiveItem Ext JS source
   */
  public native function setActiveItem(card:*, cardSwitchAnimation:* = null):ext.Container;

}
}
    