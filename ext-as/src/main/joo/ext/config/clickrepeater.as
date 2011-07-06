package ext.config {


/**
 * A wrapper class which can be applied to any element. Fires a "click" event while the mouse is pressed. The interval between firings may be specified in the config but defaults to 20 milliseconds. Optionally, a CSS class may be applied to the element during the time it is pressed.
 * <p>This class serves as a typed config object for constructor of class ClickRepeater.</p>
 *
 * @see ext.util.ClickRepeater
 */
[ExtConfig(target="ext.util.ClickRepeater")]
public class clickrepeater extends observable {

  public function clickrepeater(config:Object = null) {

    super(config);
  }


  /**
   True if autorepeating should start slowly and accelerate. "interval" and "delay" are ignored.
   */
  public native function get accelerate():Boolean;

  /**
   * @private
   */
  public native function set accelerate(value:Boolean):void;

  /**
   The initial delay before the repeating event begins firing. Similar to an autorepeat key delay.
   */
  public native function get delay():Number;

  /**
   * @private
   */
  public native function set delay(value:Number):void;

  /**
   The element to act as a button.
   */
  public native function get el():*;

  /**
   * @private
   */
  public native function set el(value:*):void;

  /**
   The interval between firings of the "click" event. Default 20 ms.
   */
  public native function get interval():Number;

  /**
   * @private
   */
  public native function set interval(value:Number):void;

  /**
   A CSS class name to be applied to the element while pressed.
   */
  public native function get pressClass():String;

  /**
   * @private
   */
  public native function set pressClass(value:String):void;

  /**
   True to prevent the default click event
   */
  public native function get preventDefault():Boolean;

  /**
   * @private
   */
  public native function set preventDefault(value:Boolean):void;

  /**
   True to stop the default click event
   */
  public native function get stopDefault():Boolean;

  /**
   * @private
   */
  public native function set stopDefault(value:Boolean):void;


}
}
    