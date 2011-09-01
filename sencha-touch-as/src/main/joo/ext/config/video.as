package ext.config {


/**
 * Provides a simple Container for HTML5 Video.
 <h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.Video.html#Ext.Video-url">url</a></li><li><a href="output/Ext.Video.html#Ext.Video-autoPause">autoPause</a></li><li><a href="output/Ext.Video.html#Ext.Video-autoResume">autoResume</a></li></ul><h2>Useful Methods</h2><ul class="list"><li><a href="output/Ext.Video.html#Ext.Video-pause">pause</a></li><li><a href="output/Ext.Video.html#Ext.Video-play">play</a></li><li><a href="output/Ext.Video.html#Ext.Video-toggle">toggle</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Video/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var pnl = new Ext.Panel({
 fullscreen: true,
 items: [
 {
 xtype    : 'video',
 x        : 600,
 y        : 300,
 width    : 175,
 height   : 98,
 url      : "porsche911.mov",
 posterUrl: 'porsche.png'
 }
 ]
 });</code></pre>
 *
 * <p>This class represents the xtype 'video' and serves as a
 * typed config object for constructor of class Video.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Video
 */
[ExtConfig(target="ext.Video", xtype="video")]
public class video extends media {

  public function video(config:Object = null) {

    super(config);
  }


  /**
   Location of a poster image to be shown before showing the video.
   */
  public native function get posterUrl():String;

  /**
   * @private
   */
  public native function set posterUrl(value:String):void;

  /**
   Location of the video to play. This should be in H.264 format and in a .mov file format.
   */
  override public native function get url():String;

  /**
   * @private
   */
  override public native function set url(value:String):void;


}
}
    