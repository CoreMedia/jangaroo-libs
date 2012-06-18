package ext.lib {

import ext.Component;
import ext.Container;
import ext.form.Number;
import ext.layout.ContainerLayout;
import ext.util.MixedCollection;

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component that was added
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index at which the component was added to the container's items collection
 *       </li>

 * </ul>
 */
[Event(name="add")]

/**
 * Fires when the components in this container are arranged by the associated layout manager.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>layout:ext.layout.ContainerLayout</code>
 The ContainerLayout implementation for this container
 *       </li>

 * </ul>
 */
[Event(name="afterlayout")]

/**
 * Fires before any <a href="Ext.Component.html">Ext.Component</a> is added or inserted into the container. A handler can return false to cancel the add.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component being added
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index at which the component will be added to the container's items collection
 *       </li>

 * </ul>
 */
[Event(name="beforeadd")]

/**
 * Fires before this container switches the active card. This event is only available if this container uses a CardLayout. Note that TabPanel and Carousel both get a CardLayout by default, so both will have this event. A handler can return false to cancel the card switch.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>newCard:ext.Component</code>
 The card that will be switched to
 *       </li>

 *       <li>
 *           <code>oldCard:ext.Component</code>
 The card that will be switched from
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of the card that will be switched to
 *       </li>

 *       <li>
 *           <code>animated:Boolean</code>
 True if this cardswitch will be animated
 *       </li>

 * </ul>
 */
[Event(name="beforecardswitch")]

/**
 * Fires before any <a href="Ext.Component.html">Ext.Component</a> is removed from the container. A handler can return false to cancel the remove.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component being removed
 *       </li>

 * </ul>
 */
[Event(name="beforeremove")]

/**
 * Fires after this container switches the active card. If the card is switched using an animation, this event will fire after the animation has finished. This event is only available if this container uses a CardLayout. Note that TabPanel and Carousel both get a CardLayout by default, so both will have this event.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>newCard:ext.Component</code>
 The card that has been switched to
 *       </li>

 *       <li>
 *           <code>oldCard:ext.Component</code>
 The card that has been switched from
 *       </li>

 *       <li>
 *           <code>index:ext.form.Number</code>
 The index of the card that has been switched to
 *       </li>

 *       <li>
 *           <code>animated:Boolean</code>
 True if this cardswitch was animated
 *       </li>

 * </ul>
 */
[Event(name="cardswitch")]

/**
 *
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Container</code>

 *       </li>

 *       <li>
 *           <code>component:ext.Component</code>
 The component that was removed
 *       </li>

 * </ul>
 */
[Event(name="remove")]


/**
 * Shared Container class
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.container
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#cls-Ext.lib.Container Ext JS source
 */
[Native]
public class Container extends ext.Component {

  /**
   *
   *
   * @see ext.config.container
   */
  public function Container() {
    super(null);
  }

  /**
   The MixedCollection containing all the child items of this container.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#prop-Ext.lib.Container-items Ext JS source
   */
  public native function get items():MixedCollection;

  /**
   * @private
   */
  public native function set items(value:MixedCollection):void;

  /**
   A string component id or the numeric index of the component that should be initially activated within the container's layout on render. For example, activeItem: 'item-1' or activeItem: 0 (index 0 = the first item in the container's collection). activeItem only applies to layout styles that can display items one at a time (like <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a> and <a href="Ext.layout.FitLayout.html">Ext.layout.FitLayout</a>). Related to <a href="output/Ext.layout.ContainerLayout.html#Ext.layout.ContainerLayout-activeItem">Ext.layout.ContainerLayout.activeItem</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get activeItem():*;

  /**
   If true the container will automatically destroy any contained component that is removed from it, else destruction must be handled manually (defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoDestroy():Boolean;

  /**
   An array of events that, when fired, should be bubbled to any parent container. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">Ext.util.Observable.enableBubble</a>. Defaults to <code>['add', 'remove']</code>.

   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get bubbleEvents():Array;

  /**
   The default <a href="Ext.Component.html">xtype</a> of child Components to create in this Container when a child item is specified as a raw configuration object, rather than as an instantiated Component.
   <p>Defaults to <code>'panel'</code>.</p>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaultType():String;

  /**
   This option is a means of applying default settings to all added items whether added through the <a href="output/Ext.lib.Container.html#Ext.lib.Container-items">items</a> config or via the <a href="output/Ext.lib.Container.html#Ext.lib.Container-add">add</a> or <a href="output/Ext.lib.Container.html#Ext.lib.Container-insert">insert</a> methods.
   <p>If an added item is a config object, and <b>not</b> an instantiated Component, then the default properties are unconditionally applied. If the added item <b>is</b> an instantiated Component, then the default properties are applied conditionally so as not to override existing properties in the item.</p><p>If the defaults option is specified as a function, then the function will be called using this Container as the scope (<code>this</code> reference) and passing the added item as the first parameter. Any resulting object from that call is then applied to the item as default properties.</p><p>For example, to automatically apply padding to the body of each of a set of contained <a href="Ext.Panel.html">Ext.Panel</a> items, you could pass: <code>defaults: {bodyStyle:'padding:15px'}</code>.</p><p>Usage:</p><pre><code>defaults: {               // defaults are applied to items, not the container
   autoScroll:true
   },
   items: [
   {
   xtype: 'panel',   // defaults <b>do not</b> have precedence over
   id: 'panel1',     // options in config objects, so the defaults
   autoScroll: false // will not be applied here, panel1 will be autoScroll:false
   },
   new Ext.Panel({       // defaults <b>do</b> have precedence over options
   id: 'panel2',     // options in components, so the defaults
   autoScroll: false // will be applied here, panel2 will be autoScroll:true.
   })
   ]
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get defaults():*;

  /**
   * Adds <a href="Ext.Component.html">Component</a>(s) to this Container.
   <br/><p><b>Description</b> :</p><div><ul class="mdetail-params"><li>Fires the <a href="output/Ext.lib.Container.html#Ext.lib.Container-beforeadd">beforeadd</a> event before adding</li><li>The Container's <a href="output/Ext.lib.Container.html#Ext.lib.Container-defaults">default config values</a> will be applied accordingly (see <code><a href="output/Ext.lib.Container.html#Ext.lib.Container-defaults">defaults</a></code> for details).</li><li>Fires the <a href="output/Ext.lib.Container.html#Ext.lib.Container-add">add</a> event after the component has been added.</li></ul></div><br/><p><b>Notes</b> :</p><div><ul class="mdetail-params"><li>If the Container is <i>already rendered</i> when <code>add</code> is called, you may need to call <a href="output/Ext.lib.Container.html#Ext.lib.Container-doLayout">doLayout</a> to refresh the view which causes any unrendered child Components to be rendered. This is required so that you can <code>add</code> multiple child components if needed while only refreshing the layout once. For example:<pre><code>var tb = new <a href="Ext.Toolbar.html">Ext.Toolbar</a>();
   tb.render(document.body);  // toolbar is rendered
   tb.add({text:'Button 1'}); // add multiple items (<a href="output/Ext.lib.Container.html#Ext.lib.Container-defaultType">defaultType</a> for <a href="Ext.Toolbar.html">Toolbar</a> is 'button')
   tb.add({text:'Button 2'});
   tb.<a href="output/Ext.lib.Container.html#Ext.lib.Container-doLayout">doLayout</a>();             // refresh the layout
   </code></pre></li><li><i>Warning:</i> Containers directly managed by the BorderLayout layout manager may not be removed or added. See the Notes for <a href="Ext.layout.BorderLayout.html">BorderLayout</a> for more details.</li></ul></div>
   *
   * @param component Either one or more Components to add or an Array of Components to add. See <code><a href="output/Ext.lib.Container.html#Ext.lib.Container-items">items</a></code> for additional information.

   * @return The Components that were added.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-add Ext JS source
   */
  public native function add(...component:Array):*;

  /**
   * Retrieves the first direct child of this container which matches the passed selector. The passed in selector must comply with an Ext.ComponentQuery selector.
   *
   * @param selector An Ext.ComponentQuery selector
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-child Ext JS source
   */
  public native function child(selector:String):ext.Component;

  /**
   * Force this container's layout to be recalculated. A call to this function is required after adding a new component to an already rendered container, or possibly after changing sizing/position properties of child components.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-doLayout Ext JS source
   */
  public native function doLayout():ext.Container;

  /**
   * Retrieves the first descendant of this container which matches the passed selector. The passed in selector must comply with an Ext.ComponentQuery selector.
   *
   * @param selector An Ext.ComponentQuery selector
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-down Ext JS source
   */
  public native function down(selector:String):ext.Component;

  /**
   * Examines this container's <code><a href="output/Ext.lib.Container.html#Ext.lib.Container-items">items</a></code> <b>property</b> and gets a direct child component of this container.
   *
   * @param comp This parameter may be any of the following: <div><ul class="mdetail-params"><li>a <b><code>String</code></b> : representing the <code><a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a></code> or <code><a href="output/Ext.Component.html#Ext.Component-id">id</a></code> of the child component</li><li>a <b><code>Number</code></b> : representing the position of the child component within the <code><a href="output/Ext.lib.Container.html#Ext.lib.Container-items">items</a></code> <b>property</b></li></ul></div><p>For additional information see <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-get">Ext.util.MixedCollection.get</a>.</p>
   * @return The component (if found).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-getComponent Ext JS source
   */
  public native function getComponent(comp:*):ext.Component;

  /**
   * Returns the <a href="Ext.layout.ContainerLayout.html">layout</a> instance currently associated with this Container. If a layout has not been instantiated yet, that is done first
   *
   * @return The layout
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-getLayout Ext JS source
   */
  public native function getLayout():ContainerLayout;

  /**
   * Inserts a Component into this Container at a specified index. Fires the <a href="output/Ext.lib.Container.html#Ext.lib.Container-beforeadd">beforeadd</a> event before inserting, then fires the <a href="output/Ext.lib.Container.html#Ext.lib.Container-add">add</a> event after the Component has been inserted.
   *
   * @param index The index at which the Component will be inserted into the Container's items collection
   * @param component The child Component to insert.<br/><br/>Ext uses lazy rendering, and will only render the inserted Component should it become necessary.<br/><br/>A Component config object may be passed in order to avoid the overhead of constructing a real Component object if lazy rendering might mean that the inserted Component will not be rendered immediately. To take advantage of this 'lazy instantiation', set the <a href="output/Ext.Component.html#Ext.Component-xtype">Ext.Component.xtype</a> config property to the registered type of the Component wanted.<br/><br/>For a list of all available xtypes, see <a href="Ext.Component.html">Ext.Component</a>.
   * @return component The Component (or config object) that was inserted with the Container's default config values applied.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-insert Ext JS source
   */
  public native function insert(index:ext.form.Number, component:ext.Component):ext.Component;

  /**
   * Retrieves all descendant components which match the passed selector. Executes an Ext.ComponentQuery.query using this container as its root.
   *
   * @param selector Selector complying to an Ext.ComponentQuery selector
   * @return Ext.Component's which matched the selector
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-query Ext JS source
   */
  public native function query(selector:String):Array;

  /**
   * Removes a component from this container. Fires the <a href="output/Ext.lib.Container.html#Ext.lib.Container-beforeremove">beforeremove</a> event before removing, then fires the <a href="output/Ext.lib.Container.html#Ext.lib.Container-remove">remove</a> event after the component has been removed.
   *
   * @param component The component reference or id to remove.
   * @param autoDestroy True to automatically invoke the removed Component's <a href="output/Ext.Component.html#Ext.Component-destroy">Ext.Component.destroy</a> function. Defaults to the value of this Container's <a href="output/Ext.lib.Container.html#Ext.lib.Container-autoDestroy">autoDestroy</a> config.
   * @return component The Component that was removed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-remove Ext JS source
   */
  public native function remove(component:*, autoDestroy:Boolean = false):ext.Component;

  /**
   * Removes all components from this container.
   *
   * @param autoDestroy True to automatically invoke the removed Component's <a href="output/Ext.Component.html#Ext.Component-destroy">Ext.Component.destroy</a> function. Defaults to the value of this Container's <a href="output/Ext.lib.Container.html#Ext.lib.Container-autoDestroy">autoDestroy</a> config.
   * @return Array of the destroyed components
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Container.html#method-Ext.lib.Container-removeAll Ext JS source
   */
  public native function removeAll(autoDestroy:Boolean = false):Array;

}
}
    