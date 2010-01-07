package ext {
/**
 * <p>An Action is a piece of reusable functionality that can be abstracted out of any particular component so that it
 * can be usefully shared among multiple components.  Actions let you share handlers, configuration options and UI
 * updates across any components that support the Action interface (primarily <b class='link'>ext.Toolbar</b>, <b class='link'>ext.Button</b>
 * and <b class='link'>Ext.menu.Menu</b> components).</p>
 * <p>Aside from supporting the config object interface, any component that needs to use Actions must also support
 * the following method list, as these will be called as needed by the Action class: setText(string), setIconCls(string),
 * setDisabled(boolean), setVisible(boolean) and setHandler(function).</p>
 * Example usage:<br>
 * <pre><code>
// Define the shared action.  Each component below will have the same
// display text and icon, and will display the same message on click.
var action = new ext.Action({
    <b class='link'>#text</b>: 'Do something',
    <b class='link'>#handler</b>: function(){
        ext.Msg.alert('Click', 'You did something.');
    },
    <b class='link'>#iconCls</b>: 'do-something',
    <b class='link'>#itemId</b>: 'myAction'
});

var panel = new ext.Panel({
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
        new ext.Button(action)
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
*/
public class Action {
/**
 * @constructor
 * @param config The configuration options
 */
public function Action(config : Object) {
  super(config);
}

    /**
     * This Action's initial configuration specification. Read-only.
     * @property initialConfig
     */
    public native function get initialConfig() : Object;

    /**
     * @cfg {String} text The text to set for all components using this action (defaults to '').
     */
    /**
     * @cfg {String} iconCls
     * The CSS class selector that specifies a background image to be used as the header icon for
     * all components using this action (defaults to '').
     * <p>An example of specifying a custom icon class would be something like:
     * </p><pre><code>
// specify the property in the config for the class:
     ...
     iconCls: 'do-something'

// css class that specifies background image to be used as the icon image:
.do-something { background-image: url(../images/my-icon.gif) 0 6px no-repeat !important; }
</code></pre>
     */
    /**
     * @cfg {Boolean} disabled True to disable all components using this action, false to enable them (defaults to false).
     */
    /**
     * @cfg {Boolean} hidden True to hide all components using this action, false to show them (defaults to false).
     */
    /**
     * @cfg {Function} handler The function that will be invoked by each component tied to this action
     * when the component's primary event is triggered (defaults to undefined).
     */
    /**
     * @cfg {String} itemId
     * See <b class='link'>ext.Component</b>.<b class='link' title='ext.Component#itemId'>itemId</b>.
     */
    /**
     * @cfg {Object} scope The scope in which the <b class='link'>#handler</b> function will execute.
     */
    protected var isAction  : Object;
    /**
     * Sets the text to be displayed by all components using this action.
     * @param text The text to display
     */
    public native function setText(text : String) : void;
    /**
     * Gets the text currently displayed by all components using this action.
     */
    public native function getText() : void;
    /**
     * Sets the icon CSS class for all components using this action.  The class should supply
     * a background image that will be used as the icon image.
     * @param cls The CSS class supplying the icon image
     */
    public native function setIconClass(cls : String) : void;
    /**
     * Gets the icon CSS class currently used by all components using this action.
     */
    public native function getIconClass() : void;
    /**
     * Sets the disabled state of all components using this action.  Shortcut method
     * for <b class='link'>#enable</b> and <b class='link'>#disable</b>.
     * @param disabled True to disable the component, false to enable it
     */
    public native function setDisabled(disabled : Boolean) : void;
    /**
     * Enables all components using this action.
     */
    public native function enable() : void;
    /**
     * Disables all components using this action.
     */
    public native function disable() : void;
    /**
     * Returns true if the components using this action are currently disabled, else returns false.  
     */
    public native function isDisabled() : void;
    /**
     * Sets the hidden state of all components using this action.  Shortcut method
     * for <code><b class='link'>#hide</b></code> and <code><b class='link'>#show</b></code>.
     * @param hidden True to hide the component, false to show it
     */
    public native function setHidden(hidden : Boolean) : void;
    /**
     * Shows all components using this action.
     */
    public native function show() : void;
    /**
     * Hides all components using this action.
     */
    public native function hide() : void;
    /**
     * Returns true if the components using this action are currently hidden, else returns false.  
     */
    public native function isHidden() : void;
    /**
     * Sets the function that will be called by each component using this action when its primary event is triggered.
     * @param fn The function that will be invoked by the action's components.  The function
     * will be called with no arguments.
     * @param scope The scope in which the function will execute
     */
    public native function setHandler(fn : Function, scope : Object) : void;
    /**
     * Executes the specified function once for each component currently tied to this action.  The function passed
     * in should accept a single argument that will be an object that supports the basic Action config/method interface.
     * @param fn The function to execute for each component
     * @param scope The scope in which the function will execute
     */
    public native function each(fn : Function, scope : Object) : void;
    protected native function callEach(fnName, args) : void;

    /**
     * Only for internal use.
     */
    public native function addComponent(comp : Component) : void;
    /**
     * Only for internal use.
     */
    public native function removeComponent(comp : Component) : void;
    /**
     * Executes this action manually using the handler function specified in the original config object
     * or the handler function set with <code><b class='link'>#setHandler</b></code>.  Any arguments passed to this
     * function will be passed on to the handler function.
     * @param arg1 Variable number of arguments passed to the handler function
     * @param arg2
     * @param etc
     */
    public native function execute(arg1 : * = undefined, arg2 : * = undefined, ...etc) : void;
}}
