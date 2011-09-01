package ext {


/**
 * Determines information about features are supported in the current environment
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton supports.</p>
 * @see ext.#supports ext.supports
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#cls-Ext.supports Ext JS source
 */
public interface Isupports {

  /**
   True if the device supports the HTML5 audio tag
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-AudioTag Ext JS source
   */
  function get AudioTag():Boolean;

  /**
   * @private
   */
  function set AudioTag(value:Boolean):void;

  /**
   True if the device supports CSS3 border radius
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-CSS3BorderRadius Ext JS source
   */
  function get CSS3BorderRadius():Boolean;

  /**
   * @private
   */
  function set CSS3BorderRadius(value:Boolean):void;

  /**
   True if the device supports CSS3DTransform
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-CSS3DTransform Ext JS source
   */
  function get CSS3DTransform():Boolean;

  /**
   * @private
   */
  function set CSS3DTransform(value:Boolean):void;

  /**
   True if the device supports CSS3 linear gradients
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-CSS3LinearGradient Ext JS source
   */
  function get CSS3LinearGradient():Boolean;

  /**
   * @private
   */
  function set CSS3LinearGradient(value:Boolean):void;

  /**
   True if the device supports Canvas
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-Canvas Ext JS source
   */
  function get Canvas():Boolean;

  /**
   * @private
   */
  function set Canvas(value:Boolean):void;

  /**
   True if the device supports device motion (acceleration and rotation rate)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-DeviceMotion Ext JS source
   */
  function get DeviceMotion():Boolean;

  /**
   * @private
   */
  function set DeviceMotion(value:Boolean):void;

  /**
   True if the device supports CSS float
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-Float Ext JS source
   */
  function get Float():Boolean;

  /**
   * @private
   */
  function set Float(value:Boolean):void;

  /**
   True if the device supports GeoLocation
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-GeoLocation Ext JS source
   */
  function get GeoLocation():Boolean;

  /**
   * @private
   */
  function set GeoLocation(value:Boolean):void;

  /**
   True if the device supports HTML5 history
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-History Ext JS source
   */
  function get History():Boolean;

  /**
   * @private
   */
  function set History(value:Boolean):void;

  /**
   True if the device supports orientation change
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-OrientationChange Ext JS source
   */
  function get OrientationChange():Boolean;

  /**
   * @private
   */
  function set OrientationChange(value:Boolean):void;

  /**
   True if the device supports right margin
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-RightMargin Ext JS source
   */
  function get RightMargin():Boolean;

  /**
   * @private
   */
  function set RightMargin(value:Boolean):void;

  /**
   True if the device supports SVG
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-SVG Ext JS source
   */
  function get SVG():Boolean;

  /**
   True if the device supports touch
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-Touch Ext JS source
   */
  function get Touch():Boolean;

  /**
   * @private
   */
  function set Touch(value:Boolean):void;

  /**
   True if the device supports CSS3 Transitions
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-Transitions Ext JS source
   */
  function get Transitions():Boolean;

  /**
   * @private
   */
  function set Transitions(value:Boolean):void;

  /**
   True if the device supports transparent color
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-TransparentColor Ext JS source
   */
  function get TransparentColor():Boolean;

  /**
   * @private
   */
  function set TransparentColor(value:Boolean):void;

  /**
   True if the device supports VML
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Support.html#prop-Ext.supports-VML Ext JS source
   */
  function get VML():Boolean;

}
}
    