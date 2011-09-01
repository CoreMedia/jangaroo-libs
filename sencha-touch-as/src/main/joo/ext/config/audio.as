package ext.config {


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
 * <p>This class represents the xtype 'audio' and serves as a
 * typed config object for constructor of class Audio.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.Audio
 */
[ExtConfig(target="ext.Audio", xtype="audio")]
public class audio extends media {

  public function audio(config:Object = null) {

    super(config);
  }


  /**
   Location of the audio to play.
   */
  override public native function get url():String;

  /**
   * @private
   */
  override public native function set url(value:String):void;


}
}
    