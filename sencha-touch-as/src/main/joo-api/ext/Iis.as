package ext {


/**
 * Determines information about the current platform the application is running on.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton is.</p>
 * @see ext.#is ext.is
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#cls-Ext.is Ext JS source
 */
public interface Iis {

  /**
   True when the browser is running on an Android device
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Android Ext JS source
   */
  function get Android():Boolean;

  /**
   * @private
   */
  function set Android(value:Boolean):void;

  /**
   True when the browser is running on a Blackberry
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Blackberry Ext JS source
   */
  function get Blackberry():Boolean;

  /**
   * @private
   */
  function set Blackberry(value:Boolean):void;

  /**
   True if the browser is running on a desktop machine
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Desktop Ext JS source
   */
  function get Desktop():Boolean;

  /**
   * @private
   */
  function set Desktop(value:Boolean):void;

  /**
   True when the browser is running on Linux
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Linux Ext JS source
   */
  function get Linux():Boolean;

  /**
   * @private
   */
  function set Linux(value:Boolean):void;

  /**
   True when the browser is running on a Mac
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Mac Ext JS source
   */
  function get Mac():Boolean;

  /**
   * @private
   */
  function set Mac(value:Boolean):void;

  /**
   True if the browser is running on a phone.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Phone Ext JS source
   */
  function get Phone():Boolean;

  /**
   * @private
   */
  function set Phone(value:Boolean):void;

  /**
   Detects when application has been saved to homescreen.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Standalone Ext JS source
   */
  function get Standalone():Boolean;

  /**
   * @private
   */
  function set Standalone(value:Boolean):void;

  /**
   True if the browser is running on a tablet (iPad)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Tablet Ext JS source
   */
  function get Tablet():Object;

  /**
   * @private
   */
  function set Tablet(value:Object):void;

  /**
   True when the browser is running on Windows
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-Windows Ext JS source
   */
  function get Windows():Boolean;

  /**
   * @private
   */
  function set Windows(value:Boolean):void;

  /**
   True if the browser is running on iOS
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-iOS Ext JS source
   */
  function get iOS():Boolean;

  /**
   * @private
   */
  function set iOS(value:Boolean):void;

  /**
   True when the browser is running on a iPad
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-iPad Ext JS source
   */
  function get iPad():Boolean;

  /**
   * @private
   */
  function set iPad(value:Boolean):void;

  /**
   True when the browser is running on a iPhone
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-iPhone Ext JS source
   */
  function get iPhone():Boolean;

  /**
   * @private
   */
  function set iPhone(value:Boolean):void;

  /**
   True when the browser is running on a iPod
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.is-iPod Ext JS source
   */
  function get iPod():Boolean;

  /**
   * @private
   */
  function set iPod(value:Boolean):void;

}
}
    