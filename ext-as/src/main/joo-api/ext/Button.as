package ext {
import ext.menu.Menu;

/**
 * Simple Button class
*/
public class Button extends BoxComponent {
/**
 * @cfg {String} text The button text to be used as innerHTML (html tags are accepted)
 * @cfg {String} icon The path to an image to display in the button (the image will be set as the background-image
 * CSS property of the button by default, so if you want a mixed icon/text button, set cls:'x-btn-text-icon')
 * @cfg {Function} handler A function called when the button is clicked (can be used instead of click event).
 * The handler is passed the following parameters:<div class="mdetail-params"><ul>
 * <li><code>b</code> : Button<div class="sub-desc">This Button.</div></li>
 * <li><code>e</code> : EventObject<div class="sub-desc">The click event.</div></li>
 * </ul></div>
 * @cfg {Object} scope The scope (<code><b>this</b></code> reference) in which the handler is executed. Defaults to this Button.
 * @cfg {Number} minWidth The minimum width for this button (used to give a set of buttons a common width).
 * See also <b class='link'>ext.Panel</b>.<code><b class='link' title='ext.Panel#minButtonWidth'>minButtonWidth</b></code>.
 * @cfg {String/Object} tooltip The tooltip for the button - can be a string to be used as innerHTML (html tags are accepted) or QuickTips config object
 * @cfg {Boolean} hidden True to start hidden (defaults to false)
 * @cfg {Boolean} disabled True to start disabled (defaults to false)
 * @cfg {Boolean} pressed True to start pressed (only if enableToggle = true)
 * @cfg {String} toggleGroup The group this toggle button is a member of (only 1 per group can be pressed)
 * @cfg {Boolean/Object} repeat True to repeat fire the click event while the mouse is down. This can also be
 * a <b class='link' title='Ext.util.ClickRepeater'>ClickRepeater</b> config object (defaults to false).
 * @constructor
 * Create a new button
 * @param config The config object
 * @xtype button
 */
public function Button(config : Object) {
  super(config);
}
    /**
     * Read-only. True if this button is hidden
     */
    override public native function get hidden()  : Boolean;
    /**
     * Read-only. True if this button is disabled
     */
    override public native function get disabled()  : Boolean;
    /**
     * Read-only. True if this button is pressed (only if enableToggle = true)
     */
    public var pressed  : Boolean;
    /**
     * The Button's owner <b class='link'>ext.Panel</b> (defaults to undefined, and is set automatically when
     * the Button is added to a container).  Read-only.
     * @property ownerCt
     */
    /**
     * @cfg {Number} tabIndex Set a DOM tabIndex for this button (defaults to undefined)
     */
    /**
     * @cfg {Boolean} allowDepress
     * False to not allow a pressed Button to be depressed (defaults to undefined). Only valid when <b class='link' title='#enableToggle'>enableToggle</b> is true.
     */
    /**
     * @cfg {Boolean} enableToggle
     * True to enable pressed/not pressed toggling (defaults to false)
     */
    public var enableToggle : Boolean;
    /**
     * @cfg {Function} toggleHandler
     * Function called when a Button with <b class='link' title='#enableToggle'>enableToggle</b> set to true is clicked. Two arguments are passed:<ul class="mdetail-params">
     * <li><b>button</b> : ext.Button<div class="sub-desc">this Button object</div></li>
     * <li><b>state</b> : Boolean<div class="sub-desc">The next state if the Button, true means pressed.</div></li>
     * </ul>
     */
    /**
     * @cfg {Mixed} menu
     * Standard menu attribute consisting of a reference to a menu object, a menu id or a menu config blob (defaults to undefined).
     */
    /**
     * @cfg {String} menuAlign
     * The position to align the menu to (see <b class='link'>ext.Element#alignTo</b> for more details, defaults to 'tl-bl?').
     */
    public var menuAlign  : String;
    /**
     * @cfg {String} overflowText If used in a <b class='link' title='ext.Toolbar'>Toolbar</b>, the
     * text to be used if this item is shown in the overflow menu. See also
     * <b class='link'>ext.Toolbar.Item</b>.<code><b class='link' title='ext.Toolbar.Item#overflowText'>overflowText</b></code>.
     */
    /**
     * @cfg {String} iconCls
     * A css class which sets a background image to be used as the icon for this button
     */
    /**
     * @cfg {String} type
     * submit, reset or button - defaults to 'button'
     */
    public var type  : String;
    protected var menuClassTarget;
    /**
     * @cfg {String} clickEvent
     * The type of event to map to the button's event handler (defaults to 'click')
     */
    public var clickEvent  : String;
    /**
     * @cfg {Boolean} handleMouseEvents
     * False to disable visual cues on mouseover, mouseout and mousedown (defaults to true)
     */
    public var handleMouseEvents  : Boolean;
    /**
     * @cfg {String} tooltipType
     * The type of tooltip to use. Either 'qtip' (default) for QuickTips or 'title' for title attribute.
     */
    public var tooltipType  : String;
    /**
     * @cfg {String} buttonSelector
     * <p>(Optional) A <b class='link' title='ext.DomQuery'>DomQuery</b> selector which is used to extract the active, clickable element from the
     * DOM structure created.</p>
     * <p>When a custom <b class='link' title='#template'>template</b> is used, you  must ensure that this selector results in the selection of
     * a focussable element.</p>
     * <p>Defaults to <b><code>"button:first-child"</code></b>.</p>
     */
    public var buttonSelector  : String;
    /**
     * @cfg {String} scale
     * <p>(Optional) The size of the Button. Three values are allowed:</p>
     * <ul class="mdetail-params">
     * <li>'small'<div class="sub-desc">Results in the button element being 16px high.</div></li>
     * <li>'medium'<div class="sub-desc">Results in the button element being 24px high.</div></li>
     * <li>'large'<div class="sub-desc">Results in the button element being 32px high.</div></li>
     * </ul>
     * <p>Defaults to <b><code>'small'</code></b>.</p>
     */
    public var scale : String;
    /**
     * @cfg {String} iconAlign
     * <p>(Optional) The side of the Button box to render the icon. Four values are allowed:</p>
     * <ul class="mdetail-params">
     * <li>'top'<div class="sub-desc"></div></li>
     * <li>'right'<div class="sub-desc"></div></li>
     * <li>'bottom'<div class="sub-desc"></div></li>
     * <li>'left'<div class="sub-desc"></div></li>
     * </ul>
     * <p>Defaults to <b><code>'left'</code></b>.</p>
     */
    public var iconAlign  : String;
    /**
     * @cfg {String} arrowAlign
     * <p>(Optional) The side of the Button box to render the arrow if the button has an associated <b class='link' title='#menu'>menu</b>.
     * Two values are allowed:</p>
     * <ul class="mdetail-params">
     * <li>'right'<div class="sub-desc"></div></li>
     * <li>'bottom'<div class="sub-desc"></div></li>
     * </ul>
     * <p>Defaults to <b><code>'right'</code></b>.</p>
     */
    public var arrowAlign  : String;
    /**
     * @cfg {ext.Template} template (Optional)
     * <p>A <b class='link' title='ext.Template'>Template</b> used to create the Button's DOM structure.</p>
     * Instances, or subclasses which need a different DOM structure may provide a different
     * template layout in conjunction with an implementation of <b class='link' title='#getTemplateArgs'>getTemplateArgs</b>.
     * @property template
     */
    /**
     * @cfg {String} cls
     * A CSS class string to apply to the button's main element.
     */
    /**
     * @property menu
     * The <b class='link' title='Ext.menu.Menu'>Menu</b> object associated with this Button when configured with the <b class='link' title='#menu'>menu</b> config option.
     */
    public var menu:Menu;

    override protected native function initComponent() : void;
/**
  * <p>This method returns an object which provides substitution parameters for the <b class='link' title='#template'>Template</b> used
  * to create this Button's DOM structure.</p>
  * <p>Instances or subclasses which use a different Template to create a different DOM structure may need to provide their
  * own implementation of this method.</p>
  * <p>The default implementation which provides data for the default <b class='link' title='#template'>template</b> returns an Array containing the
  * following items:</p><div class="mdetail-params"><ul>
  * <li>The Button's <b class='link' title='#text'>text</b></li>
  * <li>The &lt;button&gt;'s <b class='link' title='#type'>type</b></li>
  * <li>The <b class='link'>iconCls</b> applied to the &lt;button&gt; <b class='link' title='#btnEl'>element</b></li>
  * <li>The <b class='link' title='#cls'>cls</b> applied to the Button's main <b class='link' title='#getEl'>Element</b></li>
  * <li>A CSS class name controlling the Button's <b class='link' title='#scale'>scale</b> and <b class='link' title='#iconAlign icon'>alignment</b></li>
  * <li>A CSS class name which applies an arrow to the Button if configured with a <b class='link' title='#menu'>menu</b></li>
  * </ul></div>
  * @return Substitution data for a Template.
 */
    public native function getTemplateArgs() : Object;
    public native function getMenuClass() : void;
    override protected native function onRender(container : Element, position : Element) : void;
        /**
         * An <b class='link' title='ext.Element'>Element</b> encapsulating the Button's clickable element. By default,
         * this references a <code>&lt;button&gt;</code> element. Read only.
         * @property btnEl
         */
    protected native function initButtonEl(btn, btnEl) : void;
    override protected native function afterRender() : void;
    /**
     * Sets the CSS class that provides a background image to use as the button's icon.  This method also changes
     * the value of the <b class='link'>iconCls</b> config internally.
     * @param cls The CSS class providing the icon image
     * @return this
     */
    public native function setIconClass(cls : String) : Button;
    /**
     * Sets the tooltip for this Button.
     * @param tooltip. This may be:<div class="mdesc-details"><ul>
     * <li><b>String</b> : A string to be used as innerHTML (html tags are accepted) to show in a tooltip</li>
     * <li><b>Object</b> : A configuration object for <b class='link'>ext.QuickTips#register</b>.</li>
     * </ul></div>
     * @return this
     */
    public native function setTooltip(tooltip : *) : Button;
    protected native function clearTip() : void;
    override protected native function beforeDestroy() : void;
    override protected native function onDestroy() : void;
    protected native function doAutoWidth() : void;
    /**
     * Assigns this Button's click handler
     * @param handler The function to call when the button is clicked
     * @param scope Scope for the function passed in
     * @return this
     */
    public native function setHandler(handler : Function, scope : Object = undefined) : Button;
    /**
     * Sets this Button's text
     * @param text The button text
     * @return this
     */
    public native function setText(text : String) : Button;
    /**
     * Gets the text for this Button
     * @return The button text
     */
    public native function getText() : String;
    /**
     * If a state it passed, it becomes the pressed state otherwise the current state is toggled.
     * @param state Force a particular state
     * @param supressEvent True to stop events being fired when calling this method.
     * @return this
     */
    public native function toggle(state : Boolean = undefined, supressEvent : Boolean = undefined) : Button;
    /**
     * Focus the button
     */
  override public native function focus(selectText : Boolean = undefined, delay : * = undefined) : Component;
    override protected native function onDisable() : void;
    override protected native function onEnable() : void;
    public native function onDisableChange(disabled) : void;
    /**
     * Show this button's menu (if it has one)
     */
    public native function showMenu() : void;
    /**
     * Hide this button's menu (if it has one)
     */
    public native function hideMenu() : void;
    /**
     * Returns true if the button has a menu and it is visible
     * @return boolean
     */
    public native function hasVisibleMenu() : Boolean;
    protected native function onClick(e) : void;
    protected native function isMenuTriggerOver(e, _internal) : void;
    protected native function isMenuTriggerOut(e, _internal) : void;
    protected native function onMouseOver(e) : void;
    protected native function monitorMouseOver(e) : void;
    protected native function onMouseOut(e) : void;
    protected native function onFocus(e) : void;
    protected native function onBlur(e) : void;
    protected native function getClickEl(e, isUp) : void;
    protected native function onMouseDown(e) : void;
    protected native function onMouseUp(e) : void;
    protected native function onMenuShow(e) : void;
    protected native function onMenuHide(e) : void;
    protected native function restoreClick() : void;
    /**
     * @cfg {String} autoEl @hide
     */
       public native function register(btn) : void;
       public native function unregister(btn) : void;
       /**
        * Gets the pressed button in the passed group or null.
        * @param group
        * @return Button the pressed button in the passed group or null
        */
       public native function getPressed(group : String) : Button;
}}
