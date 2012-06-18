package ext {

import ext.config.video;

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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'video' / the EXML element &lt;video>.</p>
 * @see ext.config.video
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Video.html#cls-Ext.Video Ext JS source
 */
[Native]
public class Video extends Media {

  /**
   * Create a new Video.
   *
   * @param config The config object
   * @see ext.config.video
   */
  public function Video(config:video = null) {
    super(null);
  }

  /**
   Location of a poster image to be shown before showing the video.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get posterUrl():String;

}
}
    