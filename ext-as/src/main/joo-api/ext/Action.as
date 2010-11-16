package ext {
/**
 * An Action is a piece of reusable functionality that can be abstracted out of any particular component so that it
 * can be usefully shared among multiple components.  Actions let you share handlers, configuration options and UI
 * updates across any components that support the Action interface (primarily <b class='link'>ext.Toolbar</b>, <b class='link'>ext.Button</b>
 * and <b class='link'>Ext.menu.Menu</b> components).
 * <p>Aside from supporting the config object interface, any component that needs to use Actions must also support
 * the following method list, as these will be called as needed by the Action class: setText(string), setIconCls(string),
 * setDisabled(boolean), setVisible(boolean) and setHandler(function).</p>
 * Example usage:<br>
 * <pre><code>
// Define the shared action.  Each component below will have the same
// display text and icon, and will display the same message on click.
var action = new ext.Action({
    <b class='link' title='#text'>text</b>: 'Do something',
    <b class='link' title='#handler'>handler</b>: function(){
        ext.Msg.alert('Click', 'You did something.');
    },
    <b class='link' title='#iconCls'>iconCls</b>: 'do-something',
    <b class='link' title='#itemId'>itemId</b>: 'myAction'
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
public native function Action(config : Object);
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
     * @cfg {Object} scope The scope in which the <b class='link' title='#handler'>handler</b> function will execute.
     */

    /**
     * Internal flag that this Object is an Action.
     */
    public const isAction  : Boolean = true;

    /**
     * Sets the text to be displayed by all components using this action.
     * @param text The text to display
     */
    public native function setText(text : String) : void;
    /**
     * Gets the text currently displayed by all components using this action.
     */
    public native function getText() : String;
    /**
     * Sets the icon CSS class for all components using this action.  The class should supply
     * a background image that will be used as the icon image.
     * @param cls The CSS class supplying the icon image
     */
    public native function setIconClass(cls : String) : void;
    /**
     * Gets the icon CSS class currently used by all components using this action.
     */
    public native function getIconClass() : String;
    /**
     * Sets the disabled state of all components using this action.  Shortcut method
     * for <b class='link' title='#enable'>enable</b> and <b class='link' title='#disable'>disable</b>.
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
    public native function isDisabled() : Boolean;
    /**
     * Sets the hidden state of all components using this action.  Shortcut method
     * for <code><b class='link' title='#hide'>hide</b></code> and <code><b class='link' title='#show'>show</b></code>.
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
    public native function isHidden() : Boolean;
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
     * @param scope The scope (<code>this</code> reference) in which the function is executed.  Defaults to the Component.
     */
    public native function each(fn : Function, scope : Object = null) : void;

    protected native function callEach(fnName : String, args : Array) : void;

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
     * or the handler function set with <code><b class='link' title='#setHandler'>setHandler</b></code>.  Any arguments passed to this
     * function will be passed on to the handler function.
     * @param args Variable number of arguments passed to the handler function
     */
    public native function execute(...args) : void;
}}
