package ext {

import ext.config.action;

/**
 * An Action is a piece of reusable functionality that can be abstracted out of any particular component so that it can be usefully shared among multiple components. Actions let you share handlers, configuration options and UI updates across any components that support the Action interface (primarily <a href="Ext.Toolbar.html">Ext.Toolbar</a>, <a href="Ext.Button.html">Ext.Button</a> and <a href="Ext.menu.Menu.html">Ext.menu.Menu</a> components).
 <p>Aside from supporting the config object interface, any component that needs to use Actions must also support the following method list, as these will be called as needed by the Action class: setText(string), setIconCls(string), setDisabled(boolean), setVisible(boolean) and setHandler(function).</p>Example usage:<br/><pre><code>// Define the shared action.  Each component below will have the same
 // display text and icon, and will display the same message on click.
 var action = new Ext.Action({
 <a href="output/Ext.Action.html#Ext.Action-text">text</a>: 'Do something',
 <a href="output/Ext.Action.html#Ext.Action-handler">handler</a>: function(){
 Ext.Msg.alert('Click', 'You did something.');
 },
 <a href="output/Ext.Action.html#Ext.Action-iconCls">iconCls</a>: 'do-something',
 <a href="output/Ext.Action.html#Ext.Action-itemId">itemId</a>: 'myAction'
 });

 var panel = new Ext.Panel({
 title: 'Actions',
 width: 500,
 height: 300,
 tbar: [
 // Add the action directly to a toolbar as a menu button
 action,
 {
 text: 'Action Menu',
 // Add the action to a menu as a text item
 menu: [action]
 }
 ],
 items: [
 // Add the action to the panel body as a standard button
 new Ext.Button(action)
 ],
 renderTo: Ext.getBody()
 });

 // Change the text for all components using the action
 action.setText('Something else');

 // Reference an action through a container using the itemId
 var btn = panel.getComponent('myAction');
 var aRef = btn.baseAction;
 aRef.setText('New text');
 </code></pre>
 * @see ext.config.action
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#cls-Ext.Action Ext JS source
 */
public class Action {

  /**
   *
   *
   * @param config The configuration options
   * @see ext.config.action
   */
  public function Action(config:action) {
    super();
  }

  /**
   This Action's initial configuration specification.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#prop-Ext.Action-initialConfig Ext JS source
   */
  public native function get initialConfig():Object;

  /**
   True to disable all components using this action, false to enable them (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disabled():Boolean;

  /**
   True to hide all components using this action, false to show them (defaults to false).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get hidden():Boolean;

  /**
   The CSS class selector that specifies a background image to be used as the header icon for all components using this action (defaults to ''). <p>An example of specifying a custom icon class would be something like:</p><pre><code>// specify the property in the config for the class:
   ...
   iconCls: 'do-something'

   // css class that specifies background image to be used as the icon image:
   .do-something { background-image: url(../images/my-icon.gif) 0 6px no-repeat !important; }
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get iconCls():String;

  /**
   See <a href="Ext.Component.html">Ext.Component</a>.<a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get itemId():String;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.Action.html#Ext.Action-handler">handler</a></code> is executed. Defaults to this Button.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get scope():Object;

  /**
   *
   *
   * @param comp
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-addComponent Ext JS source
   */
  public native function addComponent(comp:Component):void;

  /**
   * Disables all components using this action.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-disable Ext JS source
   */
  public native function disable():void;

  /**
   * Executes the specified function once for each Component currently tied to this action. The function passed in should accept a single argument that will be an object that supports the basic Action config/method interface.
   *
   * @param fn The function to execute for each component
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the Component.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-each Ext JS source
   */
  public native function each(fn:Function, scope:Object = null):void;

  /**
   * Enables all components using this action.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-enable Ext JS source
   */
  public native function enable():void;

  /**
   * Executes this action manually using the handler function specified in the original config object or the handler function set with <code><a href="output/Ext.Action.html#Ext.Action-setHandler">setHandler</a></code>. Any arguments passed to this function will be passed on to the handler function.
   *
   * @param args Variable number of arguments passed to the handler function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-execute Ext JS source
   */
  public native function execute(...args:Array):void;

  /**
   * Gets the icon CSS class currently used by all components using this action.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-getIconClass Ext JS source
   */
  public native function getIconClass():void;

  /**
   * Gets the text currently displayed by all components using this action.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-getText Ext JS source
   */
  public native function getText():void;

  /**
   * Hides all components using this action.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-hide Ext JS source
   */
  public native function hide():void;

  /**
   * Returns true if the components using this action are currently disabled, else returns false.
   *
   * @return whether the components using this action are currently disabled
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-isDisabled Ext JS source
   */
  public native function isDisabled():Boolean;

  /**
   * Returns true if the components using this action are currently hidden, else returns false.
   *
   * @return whether the components using this action are currently hidden
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-isHidden Ext JS source
   */
  public native function isHidden():Boolean;

  /**
   *
   *
   * @param comp
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-removeComponent Ext JS source
   */
  public native function removeComponent(comp:Component):void;

  /**
   * Sets the disabled state of all components using this action. Shortcut method for <a href="output/Ext.Action.html#Ext.Action-enable">enable</a> and <a href="output/Ext.Action.html#Ext.Action-disable">disable</a>.
   *
   * @param disabled True to disable the component, false to enable it
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-setDisabled Ext JS source
   */
  public native function setDisabled(disabled:Boolean):void;

  /**
   * Sets the function that will be called by each Component using this action when its primary event is triggered.
   *
   * @param fn The function that will be invoked by the action's components. The function will be called with no arguments.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the Component firing the event.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-setHandler Ext JS source
   */
  public native function setHandler(fn:Function, scope:Object):void;

  /**
   * Sets the hidden state of all components using this action. Shortcut method for <code><a href="output/Ext.Action.html#Ext.Action-hide">hide</a></code> and <code><a href="output/Ext.Action.html#Ext.Action-show">show</a></code>.
   *
   * @param hidden True to hide the component, false to show it
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-setHidden Ext JS source
   */
  public native function setHidden(hidden:Boolean):void;

  /**
   * Sets the icon CSS class for all components using this action. The class should supply a background image that will be used as the icon image.
   *
   * @param cls The CSS class supplying the icon image
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-setIconClass Ext JS source
   */
  public native function setIconClass(cls:String):void;

  /**
   * Sets the text to be displayed by all components using this action.
   *
   * @param text The text to display
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-setText Ext JS source
   */
  public native function setText(text:String):void;

  /**
   * Shows all components using this action.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Action.html#method-Ext.Action-show Ext JS source
   */
  public native function show():void;

}
}
    