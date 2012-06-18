package ext {

import ext.config.audio;

/**
 * Provides a simple container for HTML5 Audio.
 <p style="font-style: italic">Recommended types: Uncompressed WAV and AIF audio, MP3 audio, and AAC-LC or HE-AAC audio</p><h2>Useful Properties</h2><ul class="list"><li><a href="output/Ext.Audio.html#Ext.Audio-url">url</a></li><li><a href="output/Ext.Audio.html#Ext.Audio-autoPause">autoPause</a></li><li><a href="output/Ext.Audio.html#Ext.Audio-autoResume">autoResume</a></li></ul><h2>Useful Methods</h2><ul class="list"><li><a href="output/Ext.Audio.html#Ext.Audio-pause">pause</a></li><li><a href="output/Ext.Audio.html#Ext.Audio-play">play</a></li><li><a href="output/Ext.Audio.html#Ext.Audio-toggle">toggle</a></li></ul><h2>Screenshot:</h2><p><img src="doc_resources/Ext.Audio/screenshot.png" alt=""/></p><h2>Example code:</h2><pre><code>var pnl = new Ext.Panel({
 fullscreen: true,
 items: [
 {
 xtype: 'audio',
 url  : "who-goingmobile.mp3"
 }
 ]
 });</code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'audio' / the EXML element &lt;audio>.</p>
 * @see ext.config.audio
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Audio.html#cls-Ext.Audio Ext JS source
 */
[Native]
public class Audio extends Media {

  /**
   * Create a new Audio.
   *
   * @param config The config object
   * @see ext.config.audio
   */
  public function Audio(config:audio = null) {
    super(null);
  }

  /**
   Location of the audio to play.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get url():String;

}
}
    