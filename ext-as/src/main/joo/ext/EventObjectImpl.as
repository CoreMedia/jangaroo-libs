package ext {
import js.Event;
import js.HTMLElement;

/**
 * Default implementation of IEventObject, usually instantiated by
 * <code>EventManager</code>.
 *
 * @see EventManager
 */
[Native(amd="ext-as.module", global="Ext.EventObjectImpl")]
public class EventObjectImpl
 implements IEventObject {

  /**
   * Create an Ext IEventObject browser event wrapper from the
   * given browser event.
   * @param browserEvent the browser event to wrap
   */
  public function EventObjectImpl(browserEvent:Event) {
    setEvent(browserEvent);
  }

  /**
   * @inheritDoc
   */
  public native function get A():Number;

  /**
   * @inheritDoc
   */
  public native function get ALT():Number;

  /**
   * @inheritDoc
   */
  public native function get B():Number;

  /**
   * @inheritDoc
   */
  public native function get BACKSPACE():Number;

  /**
   * @inheritDoc
   */
  public native function get C():Number;

  /**
   * @inheritDoc
   */
  public native function get CAPS_LOCK():Number;

  /**
   * @inheritDoc
   */
  public native function get CONTEXT_MENU():Number;

  /**
   * @inheritDoc
   */
  public native function get CTRL():Number;

  /**
   * @inheritDoc
   */
  public native function get D():Number;

  /**
   * @inheritDoc
   */
  public native function get DELETE():Number;

  /**
   * @inheritDoc
   */
  public native function get DOWN():Number;

  /**
   * @inheritDoc
   */
  public native function get E():Number;

  /**
   * @inheritDoc
   */
  public native function get EIGHT():Number;

  /**
   * @inheritDoc
   */
  public native function get END():Number;

  /**
   * @inheritDoc
   */
  public native function get ENTER():Number;

  /**
   * @inheritDoc
   */
  public native function get ESC():Number;

  /**
   * @inheritDoc
   */
  public native function get F():Number;

  /**
   * @inheritDoc
   */
  public native function get F1():Number;

  /**
   * @inheritDoc
   */
  public native function get F10():Number;

  /**
   * @inheritDoc
   */
  public native function get F11():Number;

  /**
   * @inheritDoc
   */
  public native function get F12():Number;

  /**
   * @inheritDoc
   */
  public native function get F2():Number;

  /**
   * @inheritDoc
   */
  public native function get F3():Number;

  /**
   * @inheritDoc
   */
  public native function get F4():Number;

  /**
   * @inheritDoc
   */
  public native function get F5():Number;

  /**
   * @inheritDoc
   */
  public native function get F6():Number;

  /**
   * @inheritDoc
   */
  public native function get F7():Number;

  /**
   * @inheritDoc
   */
  public native function get F8():Number;

  /**
   * @inheritDoc
   */
  public native function get F9():Number;

  /**
   * @inheritDoc
   */
  public native function get FIVE():Number;

  /**
   * @inheritDoc
   */
  public native function get FOUR():Number;

  /**
   * @inheritDoc
   */
  public native function get G():Number;

  /**
   * @inheritDoc
   */
  public native function get H():Number;

  /**
   * @inheritDoc
   */
  public native function get HOME():Number;

  /**
   * @inheritDoc
   */
  public native function get I():Number;

  /**
   * @inheritDoc
   */
  public native function get INSERT():Number;

  /**
   * @inheritDoc
   */
  public native function get J():Number;

  /**
   * @inheritDoc
   */
  public native function get K():Number;

  /**
   * @inheritDoc
   */
  public native function get L():Number;

  /**
   * @inheritDoc
   */
  public native function get LEFT():Number;

  /**
   * @inheritDoc
   */
  public native function get M():Number;

  /**
   * @inheritDoc
   */
  public native function get N():Number;

  /**
   * @inheritDoc
   */
  public native function get NINE():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_CENTER():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_DIVISION():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_EIGHT():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_FIVE():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_FOUR():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_MINUS():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_MULTIPLY():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_NINE():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_ONE():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_PERIOD():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_PLUS():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_SEVEN():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_SIX():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_THREE():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_TWO():Number;

  /**
   * @inheritDoc
   */
  public native function get NUM_ZERO():Number;

  /**
   * @inheritDoc
   */
  public native function get O():Number;

  /**
   * @inheritDoc
   */
  public native function get ONE():Number;

  /**
   * @inheritDoc
   */
  public native function get P():Number;

  /**
   * @inheritDoc
   */
  public native function get PAGE_DOWN():Number;

  /**
   * @inheritDoc
   */
  public native function get PAGE_UP():Number;

  /**
   * @inheritDoc
   */
  public native function get PAUSE():Number;

  /**
   * @inheritDoc
   */
  public native function get PRINT_SCREEN():Number;

  /**
   * @inheritDoc
   */
  public native function get Q():Number;

  /**
   * @inheritDoc
   */
  public native function get R():Number;

  /**
   * @inheritDoc
   */
  public native function get RETURN():Number;

  /**
   * @inheritDoc
   */
  public native function get RIGHT():Number;

  /**
   * @inheritDoc
   */
  public native function get S():Number;

  /**
   * @inheritDoc
   */
  public native function get SEVEN():Number;

  /**
   * @inheritDoc
   */
  public native function get SHIFT():Number;

  /**
   * @inheritDoc
   */
  public native function get SIX():Number;

  /**
   * @inheritDoc
   */
  public native function get SPACE():Number;

  /**
   * @inheritDoc
   */
  public native function get T():Number;

  /**
   * @inheritDoc
   */
  public native function get TAB():Number;

  /**
   * @inheritDoc
   */
  public native function get THREE():Number;

  /**
   * @inheritDoc
   */
  public native function get TWO():Number;

  /**
   * @inheritDoc
   */
  public native function get U():Number;

  /**
   * @inheritDoc
   */
  public native function get UP():Number;

  /**
   * @inheritDoc
   */
  public native function get V():Number;

  /**
   * @inheritDoc
   */
  public native function get W():Number;

  /**
   * @inheritDoc
   */
  public native function get X():Number;

  /**
   * @inheritDoc
   */
  public native function get Y():Number;

  /**
   * @inheritDoc
   */
  public native function get Z():Number;

  /**
   * @inheritDoc
   */
  public native function get ZERO():Number;

  /**
   * @inheritDoc
   */
  public native function get altKey():Boolean;

  /**
   * @inheritDoc
   */
  public native function set altKey(value:Boolean):void;

  /**
   * @inheritDoc
   */
  public native function get browserEvent():Event;

  /**
   * Tweak this event object to from now on wrap the given browser event.
   * Considered harmful and only used by Ext JS for less memory consumption / garbage collection.
   *
   * @param browserEvent the browser event to wrap
   */
  public native function setEvent(browserEvent:Event):void;

  /**
   * @inheritDoc
   */
  public native function set browserEvent(value:Event):void;

  /**
   * @inheritDoc
   */
  public native function get ctrlKey():Boolean;

  /**
   * @inheritDoc
   */
  public native function set ctrlKey(value:Boolean):void;

  /**
   * @inheritDoc
   */
  public native function get shiftKey():Boolean;

  /**
   * @inheritDoc
   */
  public native function set shiftKey(value:Boolean):void;

  /**
   * @inheritDoc
   */
  public native function get type():String;

  /**
   * @inheritDoc
   */
  public native function set type(value:String):void;

  /**
   * @inheritDoc
   */
  public native function getCharCode():Number;

  /**
   * @inheritDoc
   */
  public native function getKey():Number;

  /**
   * @inheritDoc
   */
  public native function getPageX():Number;

  /**
   * @inheritDoc
   */
  public native function getPageY():Number;

  /**
   * @inheritDoc
   */
  public native function getRelatedTarget():HTMLElement;

  /**
   * @inheritDoc
   */
  public native function getTarget(selector:String = null, maxDepth:* = null, returnEl:Boolean = false):HTMLElement;

  /**
   * @inheritDoc
   */
  public native function getWheelDelta():Number;

  /**
   * @inheritDoc
   */
  public native function getXY():Array;

  /**
   * @inheritDoc
   */
  public native function hasModifier():Boolean;

  /**
   * @inheritDoc
   */
  public native function isNavKeyPress():void;

  /**
   * @inheritDoc
   */
  public native function preventDefault():void;

  /**
   * @inheritDoc
   */
  public native function stopEvent():void;

  /**
   * @inheritDoc
   */
  public native function stopPropagation():void;

  /**
   * @inheritDoc
   */
  public native function within(el:*, related:Boolean = false, allowEl:Boolean = false):Boolean;
}
}