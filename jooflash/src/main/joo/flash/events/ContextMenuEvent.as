package flash.events {
import flash.display.InteractiveObject;

/**
 * An InteractiveObject dispatches a ContextMenuEvent object when the user opens or interacts with the context menu. There are two types of ContextMenuEvent objects:
 * <ul>
 * <li><code>ContextMenuEvent.MENU_ITEM_SELECT</code></li>
 * <li><code>ContextMenuEvent.MENU_SELECT</code></li></ul>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/ContextMenuEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.ui.ContextMenu
 * @see flash.ui.ContextMenuItem
 *
 */
public class ContextMenuEvent extends Event {
  /**
   * The display list object to which the menu is attached. This could be the mouse target (<code>mouseTarget</code>) or one of its ancestors in the display list.
   */
  public native function get contextMenuOwner():InteractiveObject;

  /**
   * @private
   */
  public native function set contextMenuOwner(value:InteractiveObject):void;

  /**
   * Indicates whether the <code>mouseTarget</code> property was set to <code>null</code> for security reasons. If the nominal value of <code>menuTarget</code> would be a reference to a <code>DisplayObject</code> in another security sandbox, then <code>menuTarget</code> is set to <code>null</code> unless there is permission in both directions across this sandbox boundary. Permission is established by calling <code>Security.allowDomain()</code> from a SWF file, or providing a policy file from the server of an image file, and setting the <code>LoaderContext.checkPolicyFile</code> flag when loading the image.
   * @see #mouseTarget
   * @see flash.system.Security#allowDomain()
   * @see flash.system.LoaderContext#checkPolicyFile
   *
   */
  public native function get isMouseTargetInaccessible():Boolean;

  /**
   * @private
   */
  public native function set isMouseTargetInaccessible(value:Boolean):void;

  /**
   * The display list object on which the user right-clicked to display the context menu. This could be the display list object to which the menu is attached (<code>contextMenuOwner</code>) or one of its display list descendants.
   * <p>The value of this property can be <code>null</code> in two circumstances: if there no mouse target, for example when you mouse over something from the background; or there is a mouse target, but it is in a security sandbox to which you don't have access. Use the <code>isMouseTargetInaccessible()</code> property to determine which of these reasons applies.</p>
   * @see #isMouseTargetInaccessible
   *
   */
  public native function get mouseTarget():InteractiveObject;

  /**
   * @private
   */
  public native function set mouseTarget(value:InteractiveObject):void;

  /**
   * Creates an Event object that contains specific information about menu events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Possible values are:
   * <ul>
   * <li><code>ContextMenuEvent.MENU_ITEM_SELECT</code></li>
   * <li><code>ContextMenuEvent.MENU_SELECT</code></li></ul>
   * @param bubbles Determines whether the Event object participates in the bubbling stage of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param mouseTarget The display list object on which the user right-clicked to display the context menu. This could be the <code>contextMenuOwner</code> or one of its display list descendants.
   * @param contextMenuOwner The display list object to which the menu is attached. This could be the <code>mouseTarget</code> or one of its ancestors in the display list.
   *
   * @see #MENU_ITEM_SELECT
   * @see #MENU_SELECT
   *
   */
  public function ContextMenuEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, mouseTarget:InteractiveObject = null, contextMenuOwner:InteractiveObject = null) {
    super(type, bubbles, cancelable);
    this.mouseTarget = mouseTarget;
    this.contextMenuOwner = contextMenuOwner;
  }

  /**
   * Creates a copy of the ContextMenuEvent object and sets the value of each property to match that of the original.
   * @return A new ContextMenuEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    return new ContextMenuEvent(type, bubbles, cancelable, mouseTarget, contextMenuOwner);
  }

  /**
   * Returns a string that contains all the properties of the ContextMenuEvent object. The string is in the following format:
   * <p><code>[ContextMenuEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> ... contextMenuOwner=<i>value</i>]</code></p>
   * @return A string that contains all the properties of the ContextMenuEvent object.
   *
   */
  override public function toString():String {
    return formatToString("ContextMenuEvent", "type", "bubbles", "cancelable", "mouseTarget", "contextMenuOwner");
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>menuItemSelect</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>contextMenuOwner</code></td>
   * <td>The display list object to which the menu is attached.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>mouseTarget</code></td>
   * <td>The display list object on which the user right-clicked to display the context menu.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The ContextMenuItem object that has been selected. The target is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.ui.ContextMenuItem#event:menuItemSelect
   *
   */
  public static const MENU_ITEM_SELECT:String = "menuItemSelect";
  /**
   * Defines the value of the <code>type</code> property of a <code>menuSelect</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>contextMenuOwner</code></td>
   * <td>The display list object to which the menu is attached.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>mouseTarget</code></td>
   * <td>The display list object on which the user right-clicked to display the context menu.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The ContextMenu object that is about to be displayed. The target is not always the object in the display list that registered the event listener. Use the <code>currentTarget</code> property to access the object in the display list that is currently processing the event.</td></tr></table>
   * @see flash.ui.ContextMenu#event:menuSelect
   *
   */
  public static const MENU_SELECT:String = "menuSelect";
}
}
