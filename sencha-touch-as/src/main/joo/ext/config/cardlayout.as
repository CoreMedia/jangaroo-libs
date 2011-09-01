package ext.config {


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
 * <p>This class serves as a
 * typed config object for constructor of class CardLayout.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.layout.CardLayout
 */
[ExtConfig(target="ext.layout.CardLayout")]
public class cardlayout extends fitlayout {

  public function cardlayout(config:Object = null) {

    super(config);
  }


}
}
    