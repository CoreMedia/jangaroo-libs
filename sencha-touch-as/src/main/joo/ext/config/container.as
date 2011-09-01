package ext.config {


/**
 * Base class for any <a href="Ext.BoxComponent.html">Ext.BoxComponent</a> that may contain other Components. Containers handle the basic behavior of containing items, namely adding, inserting and removing items.
 <p><u><b>Layout</b></u></p><p>Container classes delegate the rendering of child Components to a layout manager class which must be configured into the Container using the <code><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></code> configuration property.</p><p>When either specifying child <code><a href="output/Ext.Container.html#Ext.Container-items">items</a></code> of a Container, or dynamically <a href="output/Ext.Container.html#Ext.Container-add">adding</a> Components to a Container, remember to consider how you wish the Container to arrange those child elements, and whether those child elements need to be sized using one of Ext's built-in <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b> schemes. By default, Containers use the <a href="Ext.layout.AutoContainerLayout.html">AutoContainerLayout</a> scheme which only renders child components, appending them one after the other inside the Container, and <b>does not apply any sizing</b> at all.</p><p>A common mistake is when a developer neglects to specify a <b><code><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></code></b>. If a Container is left to use the default <a href="Ext.layout.AutoContainerLayout.html">AutoContainerLayout</a> scheme, none of its child components will be resized, or changed in any way when the Container is resized.</p>
 *
 * <p>This class represents the xtype 'container' and serves as a
 * typed config object for constructor of class Container.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Container
 */
[ExtConfig(target="ext.Container", xtype="container")]
public class container extends ext.config.libcontainer {

  public function container(config:Object = null) {

    super(config);
  }


  /**
   Animation to be used during transitions of cards. Note this only works when this container has a CardLayout. Any valid value from Ext.anims can be used ('fade', 'slide', 'flip', 'cube', 'pop', 'wipe'). Defaults to <tt>null</tt>.
   */
  public native function get cardSwitchAnimation():*;

  /**
   * @private
   */
  public native function set cardSwitchAnimation(value:*):void;


}
}
    