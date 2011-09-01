package ext {

import ext.config.media;

/**
 * Provides a base class for audio/visual controls. Should not be used directly.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'media' / the EXML element &lt;media>.</p>
 * @see ext.config.media
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Media.html#cls-Ext.Media Ext JS source
 */
public class Media extends Container {

  /**
   * Create a new Media.
   *
   * @param config The config object
   * @see ext.config.media
   */
  public function Media(config:media = null) {
    super(null);
  }

  /**
   A reference to the underlying audio/video element.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Media.html#prop-Ext.Media-media Ext JS source
   */
  public native function get media():Element;

  /**
   * @private
   */
  public native function set media(value:Element):void;

  /**
   Will automatically pause the media when the container is deactivated. (Defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoPause():Boolean;

  /**
   Will automatically start playing the media when the container is activated. (Defaults to false)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get autoResume():Boolean;

  /**
   Set this to false to turn off the native media controls (Defaults to true).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get enableControls():Boolean;

  /**
   Will begin preloading the media immediately. (Defaults to true)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get preload():Boolean;

  /**
   Location of the media to play.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get url():String;

  /**
   * Pauses media playback
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Media.html#method-Ext.Media-pause Ext JS source
   */
  public native function pause():void;

  /**
   * Starts or resumes media playback
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Media.html#method-Ext.Media-play Ext JS source
   */
  public native function play():void;

  /**
   * Toggles the media playback state
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Media.html#method-Ext.Media-toggle Ext JS source
   */
  public native function toggle():void;

}
}
    