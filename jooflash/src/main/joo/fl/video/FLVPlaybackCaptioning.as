package fl.video {
import flash.display.DisplayObject;
import flash.display.Sprite;

/**
 * property CaptionChangeEvent.type =
 * @eventType fl.video.CaptionChangeEvent.CAPTION_CHANGE
 */
[Event(name="captionChange", type="fl.video.CaptionChangeEvent")]
/**
 * property CaptionTargetEvent.type =
 * @eventType fl.video.CaptionTargetEvent.CAPTION_TARGET_CREATED
 */
[Event(name="captionTargetCreated", type="fl.video.CaptionTargetEvent")]
/**
 * Dispatched after all of the Timed Text XML data is loaded.
 * @eventType flash.events.Event.COMPLETE
 */
[Event(name="complete", type="flash.events.Event")]
/**
 * property HTTPStatusEvent.type =
 * @eventType flash.events.HTTPStatusEvent.HTTP_STATUS
 */
[Event(name="httpStatus", type="flash.events.HTTPStatusEvent")]
/**
 * property IOErrorEvent.type =
 * @eventType flash.events.IOErrorEvent.IO_ERROR
 */
[Event(name="ioError", type="flash.events.IOErrorEvent")]
/**
 * Dispatched when the download operation to load the Timed Text XML file begins, following a call to the <code>URLLoader.load()</code> method.
 * @eventType flash.events.Event.OPEN
 */
[Event(name="open", type="flash.events.Event")]
/**
 * property ProgressEvent.type =
 * @eventType flash.events.ProgressEvent.PROGRESS
 */
[Event(name="progress", type="flash.events.ProgressEvent")]
/**
 * property SecurityErrorEvent.type =
 * @eventType flash.events.SecurityErrorEvent.SECURITY_ERROR
 */
[Event(name="securityError", type="flash.events.SecurityErrorEvent")]

/**
 * The FLVPlaybackCaptioning component enables captioning for the FLVPlayback component. <b>NOTE:</b> This documentation is intended for use with the FLVPlaybackCaptioning with Accessibility component.
 * <p>It updates the ActionScript 3.0 Language and Components Reference for the FLVPlaybackCaptioning class to include the following properties and methods which were added to improve the component's accessibility.</p>
 * <p>Make sure you are including the " with Accessibility" version of the component in your project before attempting to access the new properties or methods.</p>
 * <p>The FLVPlaybackCaptioning component downloads a Timed Text (TT) XML file and applies those captions to an FLVPlayback component to which this component is partnered.</p>
 * <p>For more information on Timed Text format, see <a href="http://www.w3.org/AudioVideo/TT/">http://www.w3.org/AudioVideo/TT/</a>. The FLVPlaybackCaptioning component supports a subset of the Timed Text 1.0 specification. For detailed information on the supported subset, see <a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/TimedTextTags.html">Timed Text Tags</a>. The following is a brief example:</p>
 * <pre>     <?xml version="1.0" encoding="UTF-8"?>
 <tt xml:lang="en" xmlns="http://www.w3.org/2006/04/ttaf1"  xmlns:tts="http://www.w3.org/2006/04/ttaf1#styling">
 <head>
 <styling>
 <style id="1" tts:textAlign="right"/>
 <style id="2" tts:color="transparent"/>
 <style id="3" style="2" tts:backgroundColor="white"/>
 <style id="4" style="2 3" tts:fontSize="20"/>
 </styling>
 </head>
 <body>
 <div xml:lang="en">
 <p begin="00:00:00.50" dur="500ms">Four score and twenty years ago</p>
 <p begin="00:00:02.50"><span tts:fontFamily="monospaceSansSerif,proportionalSerif,TheOther"tts:fontSize="+2">our forefathers</span> brought forth<br /> on this continent</p>
 <p begin="00:00:04.40" dur="10s" style="1">a <span tts:fontSize="12 px">new</span> <span tts:fontSize="300%">nation</span></p>
 <p begin="00:00:06.50" dur="3">conceived in <span tts:fontWeight="bold" tts:color="#ccc333">liberty</span> <span tts:color="#ccc333">and dedicated to</span> the proposition</p>
 <p begin="00:00:11.50" tts:textAlign="right">that <span tts:fontStyle="italic">all</span> men are created equal.</p>
 <p begin="15s" style="4">The end.</p>
 </div>
 </body>
 </tt>
 </pre>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/fl/video/FLVPlaybackCaptioning.html#includeExamplesSummary">View the examples</a></p>
 */
public class FLVPlaybackCaptioning extends Sprite {
  /**
   * Determines whether the FLVPlaybackCaptioning component automatically moves and resizes the TextField object for captioning.
   * <p>If the <code>autoLayout</code> property is set to <code>true</code>, the DisplayObject instance or the TextField object containing the captions displays 10 pixels from the bottom of the FLVPlayback instance. The captioning area covers the width of the FLVPlayback instance, maintaining a margin of 10 pixels on each side.</p>
   * <p>When this property is set to <code>true</code>, the DisplayObject instance or TextField object displays directly over the FLVPlayback instance. If you are creating your own TextField object, you should set <code>autoLayout</code> to <code>false</code>. If <code>wordWrap = false</code>, the captioning area centers over the FLVPlayback instance, but it can be wider than the FLVPlayback instance.</p>
   * <p>To control layout, you need to listen for the <code>captionChange</code> event to determine when the TextField object instance is created.</p>
   * <p>The default value is <code>true.</code></p>
   * @see #captionTarget
   * @see #event:captionChange
   *
   */
  public function get autoLayout():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set autoLayout(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Defines the captionButton FLVPlayback custom UI component instance which provides toggle capabilities to turn captioning on and off.
   * <p>The <code>captionButton</code> property functions similarly to the FLVPlayback properties <code>playButton</code>, <code>pauseButton</code>, <code>muteButton</code>, and so on.</p>
   * @see FLVPlayback
   *
   */
  public function get captionButton():Sprite {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set captionButton(value:Sprite):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets the DisplayObject instance in which to display captions.
   * <p>If you set the instance as a TextField object, it is targeted directly. If you set the instance as a DisplayObjectContainer containing one or more TextField objects, the captions display in the TextField object with the lowest display index.</p>
   * <p>The <code>DisplayObjectContainer</code> method supports a movie-clip like object with a scale-9 background, which can be scaled when the TextField object size changes.</p>
   * <p>For more complex scaling and drawing, write code to have the <code>DisplayObjectContainer</code> method listen for a <code>captionChange</code> event.</p>
   * <p><b>Note</b> If the <code>captionTargetName</code> or the <code>captionTarget</code> property is not set, the FLVPlaybackCaptioning instance creates a text field set by the <code>captionTarget</code> property with this formatting:</p>
   * <ul>
   * <li>black background (background = <code>true</code>; backgroundColor = <code>0x000000</code>;)</li>
   * <li>white text (textColor = <code>0xFFFFFF</code>)</li>
   * <li>autoSize = <code>TextFieldAutoSize.LEFT</code></li>
   * <li>multiLine = <code>true</code></li>
   * <li>wordWrap = <code>true</code></li>
   * <li>font = <code>"_sans"</code></li>
   * <li>size = <code>12</code></li></ul>
   * <p>To customize these values, listen for the <code>captionTargetCreated</code> event.</p>
   * @see #captionTargetName
   * @see flash.display.DisplayObjectContainer
   *
   */
  public function get captionTarget():DisplayObject {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set captionTarget(value:DisplayObject):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The instance name of the TextField object or MovieClip enclosing a Textfield object that contains the captions.
   * <p>To specify no target, set this property to an empty string (that is, no target specified) or <code>auto</code>. This property is primarily used in the Component inspector. If you are writing code, use the <code>captionTarget</code> property instead.</p>
   * <p>The default value is <code>auto.</code></p>
   * @see #captionTarget
   *
   */
  public function get captionTargetName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set captionTargetName(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sets an FLVPlayback instance name for the FLVPlayback instance that you want to caption.
   * <p>To specify no target, set this to an empty string or <code>auto</code>. The FLVPlayback instance must have the same parent as the FLVPlaybackCaptioning instance.</p>
   * <p>The FLVPlayback instance name is primarily used in the Component inspector. If you are writing code, use the <code>flvPlayback</code> property.</p>
   * <p>If the <code>flvPlaybackName</code> or the <code>flvPlayback</code> property is not set or set to <code>auto</code>, the FLVPlaybackCaptioning instance searches for a FLVPlayback instance with the same parent and captions the first one it finds.</p>
   * <p>The default value is <code>auto.</code></p>
   * @see FLVPlayback
   * @see #flvPlayback
   *
   */
  public function get flvPlaybackName():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set flvPlaybackName(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Used to display captions; <code>true</code> = display captions, <code>false</code> = do not display captions.
   * <p>If you use the <code>captionButton</code> property to allow the user to turn captioning on and off, set the <code>showCaptions</code> property to <code>false</code>.</p>
   * <p>The default value is <code>true.</code></p>
   * @see #captionButton
   *
   */
  public function get showCaptions():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set showCaptions(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Limits formatting instructions from the Timed Text file when set to <code>true</code>.
   * <p>The following styles are <b>not</b> supported if the <code>simpleFormatting</code> property is set to <code>true</code>:</p>
   * <ul>
   * <li>tts:backgroundColor</li>
   * <li>tts:color</li>
   * <li>tts:fontSize</li>
   * <li>tts:fontFamily</li>
   * <li>tts:wrapOption</li></ul>
   * <p>The following styles <b>are</b> supported if the <code>simpleFormatting</code> property is set to <code>true</code>:</p>
   * <ul>
   * <li>tts:fontStyle</li>
   * <li>tts:fontWeight</li>
   * <li>tts:textAlign</li></ul>
   */
  public function get simpleFormatting():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set simpleFormatting(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * URL of the Timed Text XML file that contains caption information (<b>required property</b>).
   */
  public function get source():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set source(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Support for multiple language tracks.
   * <p>The best utilization of the <code>track</code> property is to support multiple language tracks with embedded cue points.</p>
   * <p>You must follow the supported formats for FLVPlaybackCaptioning cue points.</p>
   * <p>If the <code>track</code> property is set to something other than <code>0</code>, the FLVPlaybackCaptioning component searches for a text<n> property on the cue point, where <i>n</i> is the track value.</p>
   * <p>For example, if <code>track == 1</code>, then the FLVPlayBackCaptioning component searches for the parameter <code>text1</code> on the cue point. If no matching parameter is found, the text property in the cue point parameter is used.</p>
   * <p>The default value is <code>0.</code></p>
   */
  public function get track():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set track(value:uint):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Connects the captioning to a specific VideoPlayer in the FLVPlayback component.
   * <p>If you want to use captioning in multiple video players (using the <code>activeVideoPlayerIndex</code> and <code>visibleVideoPlayerIndex</code> properties in the FLVPlayback component), you should create one instance of the FLVPlaybackCaptioning component for each <code>VideoPlayer</code> that you will be using and set this property to correspond to the index.</p>
   * <p>The VideoPlayer index defaults to 0 when only one video player is used.</p>
   * @see FLVPlayback#activeVideoPlayerIndex
   * @see FLVPlayback#visibleVideoPlayerIndex
   *
   */
  public function get videoPlayerIndex():uint {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set videoPlayerIndex(value:uint):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new FLVPlaybackCaptioning instance.
   */
  public function FLVPlaybackCaptioning() {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns an array of FLVPlayback component cuepoints whose caption text contains the search string.
   * @param searchString A string to search for in the captions text.
   *
   * @return Array An array of FLVPlayback component cuepoints
   *
   */
  public function findInCaptions(searchString:String):Array {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns an array of FLVPlayback component cuepoints that contain the captions.
   * @return Array An array of FLVPlayback component cuepoints
   *
   */
  public function getCaptionsAsArray():Array {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string containing all captions as an HTML-formatted transcript.
   * <p>Each caption is contained within a <code>p</code> tag with the <code>class</code> attribute "fl_video_caption," a unique <code>id</code> attribute starting with the string "fl_video_caption_2_0_," and a <code>title</code> attribute indicating the timecode at which the caption appears in the video.</p>
   * <p>Following is a brief example of the HTML returned:</p>
   * <pre>         <div id="fl_video_transcript" class="fl_video_transcript">
   <p class="fl_video_caption" id="fl_video_caption_2_0_1" title="0:00.50"><i>( speaking French ): </i><br/><b>George: </b> Bonjour, Marie.</p>
   <p class="fl_video_caption" id="fl_video_caption_2_0_2" title="0:01.75"><b>Marie: </b> Bonjour, George.</p>
   <p class="fl_video_caption" id="fl_video_caption_2_0_3" title="0:03.75">VoilÃ€ une sucette.</p>
   <p class="fl_video_caption" id="fl_video_caption_2_0_4" title="0:05.50"><b>George: </b> C'est pour moi?</p>
   <p class="fl_video_caption" id="fl_video_caption_2_0_5" title="0:06.50"><b>Marie: </b> Oui, c'est pour toi.</p>
   <p class="fl_video_caption" id="fl_video_caption_2_0_6" title="0:08.00"><b>George: </b> Merci, Marie!</p>
   <p class="fl_video_caption" id="fl_video_caption_2_0_7" title="0:09.50"><b>Marie: </b> De rien, George.</p>
   </div>
   </pre>
   * @param preserveFormatting Preserves the HTML tags used to format the caption text in Flash
   *
   * @return String A string containing all captions as an HTML-formatted transcript
   *
   */
  public function getCaptionsAsTranscript(preserveFormatting:Boolean = false):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a number of seconds as a timecode string.
   * @param sec A number of seconds.
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   */
  public function secondsToTime(sec:Number):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * State variable indicating the short version number of the component. The version number is useful when you have a FLA file and need to know the component version. To determine the component version, type the following trace into the FLA file:
   * <listing>
   * trace (FLVPlaybackCaptioning.SHORT_VERSION);</listing>
   * <p>The <code>SHORT_VERSION</code> variable includes only the major and minor version numbers, for example, 2.0. The <code>version</code> variable includes the major and minor version numbers as well as the revision and build numbers, for example, 2.0.0.xx.</p>
   * @see #VERSION
   *
   */
  public static const SHORT_VERSION:String = "2.0";
  /**
   * State variable indicating the long version number of the component. The version number is useful when you have a FLA file and need to know the component version. To determine the component version, type the following trace into the FLA file:
   * <listing>
   * trace (FLVPlaybackCaptioning.VERSION);</listing>
   * <p>The <code>VERSION</code> variable includes the major and minor version numbers as well as the revision and build numbers, for example, 2.0.0.xx. The <code>SHORT_VERSION</code> variable includes only the major and minor version numbers, for example, 2.0.</p>
   * @see #SHORT_VERSION
   *
   */
  public static const VERSION:String = "2.0.0.39";
}
}
