package ext.config {

import joo.JavaScriptObject;

[ExtConfig(target="ext.Setup", xtype="setup")]
public class setup extends JavaScriptObject {

  public static native function get xtype():String;

  public function setup(config:Object = null) {
    super(config);
  }

  /**
   * Sets an appropriate meta tag for Apple devices to run in full-screen mode.
   */
  public native function get fullscreen():Boolean;

  /**
   * @private
   */
  public native function set fullscreen(value:Boolean):void;

  /**
   * Startup screen to be used on an iPad. The image must be 768x1004 and in portrait orientation.
   */
  public native function get tabletStartupScreen():String;

  /**
   * @private
   */
  public native function set tabletStartupScreen(value:String):void;

  /**
   * Startup screen to be used on an iPhone or iPod touch. The image must be 320x460 and in portrait orientation.
   */
  public native function get phoneStartupScreen():String;

  /**
   * @private
   */
  public native function set phoneStartupScreen(value:String):void;

  /**
   * Default icon to use. This will automatically apply to both tablets and phones. These should be 72x72.
   */
  public native function get icon():String;

  /**
   * @private
   */
  public native function set icon(value:String):void;

  /**
   * An icon for only tablets. (This config supersedes icon.) These should be 72x72.
   * @see #icon
   */
  public native function get tabletIcon():String;

  /**
   * @private
   */
  public native function set tabletIcon(value:String):void;

  /**
   * An icon for only phones. (This config supersedes icon.) These should be 57x57.
   * @see #icon
   */
  public native function get phoneIcon():String;

  /**
   * @private
   */
  public native function set phoneIcon(value:String):void;

  /**
   * Add gloss on icon on iPhone, iPad and iPod Touch.
   */
  public native function get glossOnIcon():Boolean;

  /**
   * @private
   */
  public native function set glossOnIcon(value:Boolean):void;

  /**
   * Sets the status bar style for fullscreen iPhone OS web apps. Valid options are default, black, or black-translucent.
   */
  public native function get statusBarStyle():String;

  /**
   * @private
   */
  public native function set statusBarStyle(value:String):void;

  /**
   * Function to be run when the DOM is ready.
   */
  public native function get onReady():Function;

  /**
   * @private
   */
  public native function set onReady(value:Function):void;

  /**
   * Scope for the onReady configuration to be run in.
   */
  public native function get scope():Object;

  /**
   * @private
   */
  public native function set scope(value:Object):void;

  /**
   * Initial component configuration to be built onReady.
   */
  public native function get main():component;

  /**
   * @private
   */
  public native function set main(value:component):void;

}
}
