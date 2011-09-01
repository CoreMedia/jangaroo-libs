package ext.config {


/**
 * Provides a base class for audio/visual controls. Should not be used directly.

 *
 * <p>This class represents the xtype 'media' and serves as a
 * typed config object for constructor of class Media.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Media
 */
[ExtConfig(target="ext.Media", xtype="media")]
public class media extends container {

  public function media(config:Object = null) {

    super(config);
  }


  /**
   Will automatically pause the media when the container is deactivated. (Defaults to true)
   */
  public native function get autoPause():Boolean;

  /**
   * @private
   */
  public native function set autoPause(value:Boolean):void;

  /**
   Will automatically start playing the media when the container is activated. (Defaults to false)
   */
  public native function get autoResume():Boolean;

  /**
   * @private
   */
  public native function set autoResume(value:Boolean):void;

  /**
   Set this to false to turn off the native media controls (Defaults to true).
   */
  public native function get enableControls():Boolean;

  /**
   * @private
   */
  public native function set enableControls(value:Boolean):void;

  /**
   Will begin preloading the media immediately. (Defaults to true)
   */
  public native function get preload():Boolean;

  /**
   * @private
   */
  public native function set preload(value:Boolean):void;

  /**
   Location of the media to play.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;


}
}
    