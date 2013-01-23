package ext.config {

import ext.Template;

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
 *
 * @see ext.event.ButtonClickEvent
 */
[Event(name="click", type="ext.event.ButtonClickEvent")]

/**
 * Simple Button class
 *
 * <p>This class represents the xtype 'button' and serves as a
 * typed config object for constructor of class Button.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Button
 */
[ExtConfig(target="ext.Button", xtype="button")]
public class button extends box {

  public function button(config:Object = null) {

    super(config);
  }


  /**
   False to not allow a pressed Button to be depressed (defaults to undefined). Only valid when <a href="output/Ext.Button.html#Ext.Button-enableToggle">enableToggle</a> is true.
   */
  public native function get allowDepress():Boolean;

  /**
   * @private
   */
  public native function set allowDepress(value:Boolean):void;

  /**
   (Optional) The side of the Button box to render the arrow if the button has an associated <a href="output/Ext.Button.html#Ext.Button-menu">menu</a>. Two values are allowed:
   <ul class="mdetail-params"><li>'right'</li><li>'bottom'</li></ul><p>Defaults to <b><tt>'right'</tt></b>.</p>
   */
  public native function get arrowAlign():String;

  /**
   * @private
   */
  public native function set arrowAlign(value:String):void;

  /**
   By default, if a width is not specified the button will attempt to stretch horizontally to fit its content. If the button is being managed by a width sizing layout (hbox, fit, anchor), set this to false to prevent the button from doing this automatic sizing. Defaults to <tt>undefined</tt>.
   */
  override public native function get autoWidth():Boolean;

  /**
   * @private
   */
  override public native function set autoWidth(value:Boolean):void;

  /**
   (Optional) A <a href="Ext.DomQuery.html">DomQuery</a> selector which is used to extract the active, clickable element from the DOM structure created.
   <p>When a custom <a href="output/Ext.Button.html#Ext.Button-template">template</a> is used, you must ensure that this selector results in the selection of a focussable element.</p><p>Defaults to <b><tt>'button:first-child'</tt></b>.</p>
   */
  public native function get buttonSelector():String;

  /**
   * @private
   */
  public native function set buttonSelector(value:String):void;

  /**
   The DOM event that will fire the handler of the button. This can be any valid event name (dblclick, contextmenu). Defaults to <tt>'click'</tt>.
   */
  public native function get clickEvent():String;

  /**
   * @private
   */
  public native function set clickEvent(value:String):void;

  /**
   A CSS class string to apply to the button's main element.
   */
  override public native function get cls():String;

  /**
   * @private
   */
  override public native function set cls(value:String):void;

  /**
   True to start disabled (defaults to false)
   */
  override public native function get disabled():Boolean;

  /**
   * @private
   */
  override public native function set disabled(value:Boolean):void;

  /**
   True to enable pressed/not pressed toggling (defaults to false)
   */
  public native function get enableToggle():Boolean;

  /**
   * @private
   */
  public native function set enableToggle(value:Boolean):void;

  /**
   False to disable visual cues on mouseover, mouseout and mousedown (defaults to true)
   */
  public native function get handleMouseEvents():Boolean;

  /**
   * @private
   */
  public native function set handleMouseEvents(value:Boolean):void;

  /**
   A function called when the button is clicked (can be used instead of click event). The handler is passed the following parameters:<div class="mdetail-params"><ul><li><code>b</code> : Button<div class="sub-desc">This Button.</div></li><li><code>e</code> : EventObject<div class="sub-desc">The click event.</div></li></ul></div>
   */
  public native function get handler():Function;

  /**
   * @private
   */
  public native function set handler(value:Function):void;

  /**
   True to start hidden (defaults to false)
   */
  override public native function get hidden():Boolean;

  /**
   * @private
   */
  override public native function set hidden(value:Boolean):void;

  /**
   The path to an image to display in the button (the image will be set as the background-image CSS property of the button by default, so if you want a mixed icon/text button, set cls:'x-btn-text-icon')
   */
  public native function get icon():String;

  /**
   * @private
   */
  public native function set icon(value:String):void;

  /**
   (Optional) The side of the Button box to render the icon. Four values are allowed:
   <ul class="mdetail-params"><li>'top'</li><li>'right'</li><li>'bottom'</li><li>'left'</li></ul><p>Defaults to <b><tt>'left'</tt></b>.</p>
   */
  public native function get iconAlign():String;

  /**
   * @private
   */
  public native function set iconAlign(value:String):void;

  /**
   A css class which sets a background image to be used as the icon for this button
   */
  public native function get iconCls():String;

  /**
   * @private
   */
  public native function set iconCls(value:String):void;

  /**
   Standard menu attribute consisting of a reference to a menu object, a menu id or a menu config blob (defaults to undefined).
   */
  public native function get menu():*;

  /**
   * @private
   */
  public native function set menu(value:*):void;

  /**
   The position to align the menu to (see <a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a> for more details, defaults to 'tl-bl?').
   */
  public native function get menuAlign():String;

  /**
   * @private
   */
  public native function set menuAlign(value:String):void;

  /**
   The minimum width for this button (used to give a set of buttons a common width). See also <a href="Ext.Panel.html">Ext.Panel</a>.<tt><a href="output/Ext.Panel.html#Ext.Panel-minButtonWidth">minButtonWidth</a></tt>.
   */
  public native function get minWidth():Number;

  /**
   * @private
   */
  public native function set minWidth(value:Number):void;

  /**
   If used in a <a href="Ext.Toolbar.html">Toolbar</a>, the text to be used if this item is shown in the overflow menu. See also <a href="Ext.Toolbar.Item.html">Ext.Toolbar.Item</a>.<code><a href="output/Ext.Toolbar.Item.html#Ext.Toolbar.Item-overflowText">overflowText</a></code>.
   */
  public native function get overflowText():String;

  /**
   * @private
   */
  public native function set overflowText(value:String):void;

  /**
   True to start pressed (only if enableToggle = true)
   */
  public native function get pressed():Boolean;

  /**
   * @private
   */
  public native function set pressed(value:Boolean):void;

  /**
   True to repeat fire the click event while the mouse is down. This can also be a <a href="Ext.util.ClickRepeater.html">ClickRepeater</a> config object (defaults to false).
   */
  public native function get repeat():*;

  /**
   * @private
   */
  public native function set repeat(value:*):void;

  /**
   (Optional) The size of the Button. Three values are allowed:
   <ul class="mdetail-params"><li>'small'<div class="sub-desc">Results in the button element being 16px high.</div></li><li>'medium'<div class="sub-desc">Results in the button element being 24px high.</div></li><li>'large'<div class="sub-desc">Results in the button element being 32px high.</div></li></ul><p>Defaults to <b><tt>'small'</tt></b>.</p>
   */
  public native function get scale():String;

  /**
   * @private
   */
  public native function set scale(value:String):void;

  /**
   The scope (<tt><b>this</b></tt> reference) in which the <code><a href="output/Ext.Button.html#Ext.Button-handler">handler</a></code> and <code><a href="output/Ext.Button.html#Ext.Button-toggleHandler">toggleHandler</a></code> is executed. Defaults to this Button.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   Set a DOM tabIndex for this button (defaults to undefined)
   */
  public native function get tabIndex():Number;

  /**
   * @private
   */
  public native function set tabIndex(value:Number):void;

  /**
   A <a href="Ext.Template.html">Template</a> used to create the Button's DOM structure.
   Instances, or subclasses which need a different DOM structure may provide a different template layout in conjunction with an implementation of <a href="output/Ext.Button.html#Ext.Button-getTemplateArgs">getTemplateArgs</a>.
   */
  public native function get template():Template;

  /**
   * @private
   */
  public native function set template(value:Template):void;

  /**
   The button text to be used as innerHTML (html tags are accepted)
   */
  public native function get text():String;

  /**
   * @private
   */
  public native function set text(value:String):void;

  /**
   The group this toggle button is a member of (only 1 per group can be pressed)
   */
  public native function get toggleGroup():String;

  /**
   * @private
   */
  public native function set toggleGroup(value:String):void;

  /**
   Function called when a Button with <a href="output/Ext.Button.html#Ext.Button-enableToggle">enableToggle</a> set to true is clicked. Two arguments are passed:<ul class="mdetail-params"><li><b>button</b> : Ext.Button<div class="sub-desc">this Button object</div></li><li><b>state</b> : Boolean<div class="sub-desc">The next state of the Button, true means pressed.</div></li></ul>
   */
  public native function get toggleHandler():Function;

  /**
   * @private
   */
  public native function set toggleHandler(value:Function):void;

  /**
   The tooltip for the button - can be a string to be used as innerHTML (html tags are accepted) or QuickTips config object
   */
  public native function get tooltip():*;

  /**
   * @private
   */
  public native function set tooltip(value:*):void;

  /**
   The type of tooltip to use. Either 'qtip' (default) for QuickTips or 'title' for title attribute.
   */
  public native function get tooltipType():String;

  /**
   * @private
   */
  public native function set tooltipType(value:String):void;

  /**
   submit, reset or button - defaults to 'button'
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;


}
}
    