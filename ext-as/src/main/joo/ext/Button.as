package ext {
import ext.config.button;
import ext.menu.Menu;

/**
 * Fires when this button is clicked
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The click event
 *       </li>

 * </ul>
 */
[Event(name="click")]

/**
 * If this button has a menu, this event fires when it is hidden
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>menu:Menu</code>

 *       </li>

 * </ul>
 */
[Event(name="menuhide")]

/**
 * If this button has a menu, this event fires when it is shown
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>menu:Menu</code>

 *       </li>

 * </ul>
 */
[Event(name="menushow")]

/**
 * If this button has a menu, this event fires when the mouse leaves the menu triggering element
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>menu:Menu</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="menutriggerout")]

/**
 * If this button has a menu, this event fires when the mouse enters the menu triggering element
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>menu:Menu</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>

 *       </li>

 * </ul>
 */
[Event(name="menutriggerover")]

/**
 * Fires when the mouse exits the button
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="mouseout")]

/**
 * Fires when the mouse hovers over the button
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>e:ext.IEventObject</code>
 The event object
 *       </li>

 * </ul>
 */
[Event(name="mouseover")]

/**
 * Fires when the 'pressed' state of this button changes (only if enableToggle = true)
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.Button</code>

 *       </li>

 *       <li>
 *           <code>pressed:Boolean</code>

 *       </li>

 * </ul>
 */
[Event(name="toggle")]


/**
 * Simple Button class
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'button' / the EXML element &lt;button>.</p>
 * @see ext.config.button
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "Button")]
public class Button extends BoxComponent {

  /**
   * Create a new button
   *
   * @param config The config object
   * @see ext.config.button
   */
  public function Button(config:button) {
    super(null);
  }

  /**
   An <a href="Ext.Element.html">Element</a> encapsulating the Button's clickable element. By default, this references a <tt>&lt;button&gt;</tt> element. Read only.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-property-btnEl Sencha Docs Ext JS 3.4
   */
  public native function get btnEl():Element;

  /**
   * @private
   */
  public native function set btnEl(value:Element):void;

  /**
   True if this button is disabled
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-property-disabled Sencha Docs Ext JS 3.4
   */
  override public native function get disabled():Boolean;

  /**
   True if this button is hidden
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-property-hidden Sencha Docs Ext JS 3.4
   */
  override public native function get hidden():Boolean;

  /**
   The <a href="Ext.menu.Menu.html">Menu</a> object associated with this Button when configured with the <a href="output/Ext.Button.html#Ext.Button-menu">menu</a> config option.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-property-menu Sencha Docs Ext JS 3.4
   */
  public native function get menu():Menu;

  /**
   * @private
   */
  public native function set menu(value:Menu):void;

  /**
   True if this button is pressed (only if enableToggle = true)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-property-pressed Sencha Docs Ext JS 3.4
   */
  public native function get pressed():Boolean;

  /**
   False to not allow a pressed Button to be depressed (defaults to undefined). Only valid when <a href="output/Ext.Button.html#Ext.Button-enableToggle">enableToggle</a> is true.
   */
  public native function get allowDepress():Boolean;

  /**
   (Optional) The side of the Button box to render the arrow if the button has an associated <a href="output/Ext.Button.html#Ext.Button-menu">menu</a>. Two values are allowed:
   <ul class="mdetail-params"><li>'right'</li><li>'bottom'</li></ul><p>Defaults to <b><tt>'right'</tt></b>.</p>
   */
  public native function get arrowAlign():String;

  /**
   (Optional) A <a href="Ext.DomQuery.html">DomQuery</a> selector which is used to extract the active, clickable element from the DOM structure created.
   <p>When a custom <a href="output/Ext.Button.html#Ext.Button-template">template</a> is used, you must ensure that this selector results in the selection of a focussable element.</p><p>Defaults to <b><tt>'button:first-child'</tt></b>.</p>
   */
  public native function get buttonSelector():String;

  /**
   The DOM event that will fire the handler of the button. This can be any valid event name (dblclick, contextmenu). Defaults to <tt>'click'</tt>.
   */
  public native function get clickEvent():String;

  /**
   True to enable pressed/not pressed toggling (defaults to false)
   */
  public native function get enableToggle():Boolean;

  /**
   False to disable visual cues on mouseover, mouseout and mousedown (defaults to true)
   */
  public native function get handleMouseEvents():Boolean;

  /**
   The path to an image to display in the button (the image will be set as the background-image CSS property of the button by default, so if you want a mixed icon/text button, set cls:'x-btn-text-icon')
   */
  public native function get icon():String;

  /**
   (Optional) The side of the Button box to render the icon. Four values are allowed:
   <ul class="mdetail-params"><li>'top'</li><li>'right'</li><li>'bottom'</li><li>'left'</li></ul><p>Defaults to <b><tt>'left'</tt></b>.</p>
   */
  public native function get iconAlign():String;

  /**
   A css class which sets a background image to be used as the icon for this button
   */
  public native function get iconCls():String;

  /**
   The position to align the menu to (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details, defaults to 'tl-bl?').
   */
  public native function get menuAlign():String;

  /**
   The minimum width for this button (used to give a set of buttons a common width). See also <a href="Ext.Panel.html">Ext.Panel</a>.<tt><a href="output/Ext.Panel.html#Ext.Panel-minButtonWidth">minButtonWidth</a></tt>.
   */
  public native function get minWidth():Number;

  /**
   If used in a <a href="Ext.Toolbar.html">Toolbar</a>, the text to be used if this item is shown in the overflow menu. See also <a href="Ext.Toolbar.Item.html">Ext.Toolbar.Item</a>.<code><a href="output/Ext.Toolbar.Item.html#Ext.Toolbar.Item-overflowText">overflowText</a></code>.
   */
  public native function get overflowText():String;

  /**
   True to repeat fire the click event while the mouse is down. This can also be a <a href="Ext.util.ClickRepeater.html">ClickRepeater</a> config object (defaults to false).
   */
  public native function get repeat():*;

  /**
   (Optional) The size of the Button. Three values are allowed:
   <ul class="mdetail-params"><li>'small'<div class="sub-desc">Results in the button element being 16px high.</div></li><li>'medium'<div class="sub-desc">Results in the button element being 24px high.</div></li><li>'large'<div class="sub-desc">Results in the button element being 32px high.</div></li></ul><p>Defaults to <b><tt>'small'</tt></b>.</p>
   */
  public native function get scale():String;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.Button.html#Ext.Button-handler">handler</a></code> and <code><a href="output/Ext.Button.html#Ext.Button-toggleHandler">toggleHandler</a></code> is executed. Defaults to this Button.
   */
  public native function get scope():Object;

  /**
   Set a DOM tabIndex for this button (defaults to undefined)
   */
  public native function get tabIndex():Number;

  /**
   A <a href="Ext.Template.html">Template</a> used to create the Button's DOM structure.
   Instances, or subclasses which need a different DOM structure may provide a different template layout in conjunction with an implementation of <a href="output/Ext.Button.html#Ext.Button-getTemplateArgs">getTemplateArgs</a>.
   */
  public native function get template():Template;

  /**
   The group this toggle button is a member of (only 1 per group can be pressed)
   */
  public native function get toggleGroup():String;

  /**
   The tooltip for the button - can be a string to be used as innerHTML (html tags are accepted) or QuickTips config object
   */
  public native function get tooltip():*;

  /**
   The type of tooltip to use. Either 'qtip' (default) for QuickTips or 'title' for title attribute.
   */
  public native function get tooltipType():String;

  /**
   submit, reset or button - defaults to 'button'
   */
  public native function get type():String;

  /**
   * Gets the pressed button in the passed group or null
   *
   * @param group
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-getPressed Sencha Docs Ext JS 3.4
   */
  public native function getPressed(group:String):Button;

  /**
   * This method returns an Array which provides substitution parameters for the <a href="output/Ext.Button.html#Ext.Button-template">Template</a> used to create this Button's DOM structure.
   <p>Instances or subclasses which use a different Template to create a different DOM structure may need to provide their own implementation of this method.</p><p>The default implementation which provides data for the default <a href="output/Ext.Button.html#Ext.Button-template">template</a> returns an Array containing the following items:</p><div class="mdetail-params"><ul><li>The &lt;button&gt;'s <a href="output/Ext.Button.html#Ext.Button-type">type</a></li><li>A CSS class name applied to the Button's main &lt;tbody&gt; element which determines the button's scale and icon alignment.</li><li>A CSS class to determine the presence and position of an arrow icon. (<code>'x-btn-arrow'</code> or <code>'x-btn-arrow-bottom'</code> or <code>''</code>)</li><li>The <a href="output/Ext.Button.html#Ext.Button-cls">cls</a> CSS class name applied to the button's wrapping &lt;table&gt; element.</li><li>The Component id which is applied to the button's wrapping &lt;table&gt; element.</li></ul></div>
   *
   * @return Substitution data for a Template.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-getTemplateArgs Sencha Docs Ext JS 3.4
   */
  public native function getTemplateArgs():Array;

  /**
   * Gets the text for this Button
   *
   * @return The button text
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-getText Sencha Docs Ext JS 3.4
   */
  public native function getText():String;

  /**
   * Returns true if the button has a menu and it is visible
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-hasVisibleMenu Sencha Docs Ext JS 3.4
   */
  public native function hasVisibleMenu():Boolean;

  /**
   * Hide this button's menu (if it has one)
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-hideMenu Sencha Docs Ext JS 3.4
   */
  public native function hideMenu():void;

  /**
   * Assigns this Button's click handler
   *
   * @param handler The function to call when the button is clicked
   * @param scope The scope (<code>this</code> reference) in which the handler function is executed. Defaults to this Button.
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-setHandler Sencha Docs Ext JS 3.4
   */
  public native function setHandler(handler:Function, scope:Object = null):Button;

  /**
   * Sets the background image (inline style) of the button. This method also changes the value of the <a href="icon.html">icon</a> config internally.
   *
   * @param icon The path to an image to display in the button
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-setIcon Sencha Docs Ext JS 3.4
   */
  public native function setIcon(icon:String):Button;

  /**
   * Sets the CSS class that provides a background image to use as the button's icon. This method also changes the value of the <a href="iconCls.html">iconCls</a> config internally.
   *
   * @param cls The CSS class providing the icon image
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-setIconClass Sencha Docs Ext JS 3.4
   */
  public native function setIconClass(cls:String):Button;

  /**
   * Sets this Button's text
   *
   * @param text The button text
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-setText Sencha Docs Ext JS 3.4
   */
  public native function setText(text:String):Button;

  /**
   * Sets the tooltip for this Button.
   *
   * @param tooltip This may be:<div class="mdesc-details"><ul><li><b>String</b> : A string to be used as innerHTML (html tags are accepted) to show in a tooltip</li><li><b>Object</b> : A configuration object for <a href="output/Ext.QuickTips.html#Ext.QuickTips-register">Ext.QuickTips.register</a>.</li></ul></div>
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-setTooltip Sencha Docs Ext JS 3.4
   */
  public native function setTooltip(tooltip:*):Button;

  /**
   * Show this button's menu (if it has one)
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-showMenu Sencha Docs Ext JS 3.4
   */
  public native function showMenu():void;

  /**
   * If a state it passed, it becomes the pressed state otherwise the current state is toggled.
   *
   * @param state Force a particular state
   * @param suppressEvent True to stop events being fired when calling this method.
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Button-method-toggle Sencha Docs Ext JS 3.4
   */
  public native function toggle(state:Boolean = false, suppressEvent:Boolean = false):Button;

}
}
    