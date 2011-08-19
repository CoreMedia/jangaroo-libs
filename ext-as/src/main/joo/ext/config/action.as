package ext.config {

import joo.JavaScriptObject;

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
 *
 * <p>This class serves as a
 * typed config object for constructor of class Action.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Action
 */
[ExtConfig(target="ext.Action")]
public class action extends JavaScriptObject {

  public function action(config:Object = null) {
    super(config);
  }


  /**
   True to disable all components using this action, false to enable them (defaults to false).
   */
  public native function get disabled():Boolean;

  /**
   * @private
   */
  public native function set disabled(value:Boolean):void;

  /**
   The function that will be invoked by each component tied to this action when the component's primary event is triggered (defaults to undefined).
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   True to hide all components using this action, false to show them (defaults to false).
   */
  public native function get hidden():Boolean;

  /**
   * @private
   */
  public native function set hidden(value:Boolean):void;

  /**
   The CSS class selector that specifies a background image to be used as the header icon for all components using this action (defaults to ''). <p>An example of specifying a custom icon class would be something like:</p><pre><code>// specify the property in the config for the class:
   ...
   iconCls: 'do-something'

   // css class that specifies background image to be used as the icon image:
   .do-something { background-image: url(../images/my-icon.gif) 0 6px no-repeat !important; }
   </code></pre>
   */
  public native function get iconCls():String;

  /**
   * @private
   */
  public native function set iconCls(value:String):void;

  /**
   See <a href="Ext.Component.html">Ext.Component</a>.<a href="output/Ext.Component.html#Ext.Component-itemId">itemId</a>.
   */
  public native function get itemId():String;

  /**
   * @private
   */
  public native function set itemId(value:String):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.Action.html#Ext.Action-handler">handler</a></code> is executed. Defaults to this Button.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   The text to set for all components using this action (defaults to '').
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;


}
}
