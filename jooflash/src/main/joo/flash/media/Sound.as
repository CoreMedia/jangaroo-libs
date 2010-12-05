package flash.media {

import flash.events.EventDispatcher;
import flash.net.URLRequest;

import js.HTMLElement;

/**
 * The Sound class lets you work with sound in an application. The Sound class
 * lets you create a Sound object, load and play an external MP3 file into that object,
 * close the sound stream, and access
 * data about the sound, such as information about the number of bytes in the stream and
 * ID3 metadata. More detailed control of the sound is performed through the sound source —
 * the SoundChannel or Microphone object for the sound — and through the properties
 * in the SoundTransform class that control the output of the sound to the computer's speakers.
 *
 * <p>In Flash Player 10 and later and AIR 1.5 and later, you can also use this
 * class to work with sound that is generated dynamically.
 * In this case, the Sound object uses the function you assign to a <code>sampleData</code> event handler to
 * poll for sound data. The sound is played as it is retrieved from a ByteArray object that
 * you populate with sound data. You can use <code>Sound.extract()</code> to extract sound data from a
 * Sound object, after which you can manipulate it before writing it back to the stream for playback.</p>
 *
 * <p>To control sounds that are embedded in a SWF file, use the properties in the SoundMixer class.</p>
 *
 * <p><b>Note</b>: The ActionScript 3.0 Sound API differs from ActionScript 2.0.
 * In ActionScript 3.0, you cannot take sound objects and arrange them in a hierarchy
 * to control their properties.</p>
 *
 * <p>When you use this class, consider the following security model: </p>
 *
 * <ul>
 * <li>Loading and playing a sound is not allowed if the calling file is in a network sandbox
 * and the sound file to be loaded is local.</li>
 * <li>By default, loading and playing a sound is not allowed if the calling file is local and
 * tries to load and play a remote sound. A user must grant explicit permission to allow this type of access.</li>
 * <li>Certain operations dealing with sound are restricted. The data in a loaded sound cannot
 * be accessed by a file in a different domain unless you implement a cross-domain policy file.
 * Sound-related APIs that fall under this restriction are <code>Sound.id3</code>,
 * <code>SoundMixer.computeSpectrum()</code>, <code>SoundMixer.bufferTime</code>,
 * and the <code>SoundTransform</code> class.</li>
 * </ul>
 *
 * <p>However, in Adobe AIR, content in the <code>application</code> security sandbox (content
 * installed with the AIR application) are not restricted by these security limitations.</p>
 *
 * <p>For more information related to security, see the Flash Player Developer Center Topic:
 * <a href="http://www.adobe.com/go/devnet_security_en" target="external">Security</a>.</p>
 *
 * @see flash.net.NetStream
 * @see Microphone
 * @see SoundChannel
 * @see SoundMixer
 * @see flash.media.SoundTransform
 * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7d27.html Basics of working with sound
 */
public class Sound extends EventDispatcher {

  /**
   * Creates a new Sound object. If you pass a valid URLRequest object to the
   * Sound constructor, the constructor automatically calls the <code>load()</code> function
   * for the Sound object.
   * If you do not pass a valid URLRequest object to the Sound constructor,
   * you must call the <code>load()</code> function for the Sound object yourself,
   * or the stream will not load.
   *
   * <p>Once <code>load()</code> is called on a Sound object, you can't later load
   * a different sound file into that Sound object. To load a different sound file,
   * create a new Sound object.</p>
   *
   * In Flash Player 10 and later and AIR 1.5 and later, instead of using <code>load()</code>,
   * you can use the <code>sampleData</code> event handler to load sound dynamically into the Sound object.
   *
   * @param stream (default = <code>null</code>) The URL that points to an external MP3 file.
   * @param context (default = <code>null</code>) An optional SoundLoader context object, which can define the buffer time
   * (the minimum number of milliseconds of MP3 data to hold in the Sound object's
   * buffer) and can specify whether the application should check for a cross-domain
   * policy file prior to loading the sound.
   *
   * </td>
   * @param stream
   * @param context
   */
  public function Sound(stream:URLRequest = null, context:SoundLoaderContext = null) {
    audio = new window['Audio']();
    audio.addEventListener('error', function(e:*):void {
      window.alert("error " + e);
    }, false);
    load(stream, context);
  }

  /**
   * Initiates loading of an external MP3 file from the specified URL. If you provide
   * a valid URLRequest object to the Sound constructor, the constructor calls
   * <code>Sound.load()</code> for you. You only need to call <code>Sound.load()</code>
   * yourself if you don't pass a valid URLRequest object to the Sound constructor or
   * you pass a <code>null</code> value.
   *
   * <p>Once <code>load()</code> is called on a Sound object, you can't later load
   * a different sound file into that Sound object. To load a different sound file,
   * create a new Sound object.</p>
   *
   * <p>When using this method, consider the following security model:</p>
   *
   * <ul>
   * <li>Calling <code>Sound.load()</code> is not allowed if the calling file is in the
   * local-with-file-system sandbox and the sound is in a network sandbox.</li>
   * <li>Access from the local-trusted or local-with-networking sandbox requires permission
   * from a website through a URL policy file.</li>
   * <li>You cannot connect to commonly reserved ports.
   * For a complete list of blocked ports, see "Restricting Networking APIs" in the
   * <i>ActionScript 3.0 Developer's Guide</i>.</li>
   * <li>You can prevent a SWF file from using this method by setting the
   * <code>allowNetworking</code> parameter of the <code>object</code> and <code>embed</code>
   * tags in the HTML page that contains the SWF content.</li>
   * </ul>
   *
   * <p>In Flash Player 10 and later, if you use a multipart Content-Type (for example "multipart/form-data")
   * that contains an upload (indicated by a "filename" parameter in a "content-disposition" header within the POST body),
   * the POST operation is subject to the security rules applied to uploads:</p>
   * <ul><li>The POST operation must be performed in response to a user-initiated action, such as a mouse click or key press.</li><li>If the POST operation is cross-domain (the POST target is not on the same server as the SWF file
   * that is sending the POST request),
   * the target server must provide a URL policy file that permits cross-domain access.</li></ul>
   * <p>Also, for any multipart Content-Type, the syntax must be valid (according to the RFC2046 standards).
   * If the syntax appears to be invalid, the POST operation is subject to the security rules applied to uploads.</p>
   * <p>In Adobe AIR, content in the <code>application</code> security sandbox (content
   * installed with the AIR application) are not restricted by these security limitations.</p>
   *
   * <p>For more information related to security, see the Flash Player Developer Center Topic:
   * <a href="http://www.adobe.com/go/devnet_security_en" target="external">Security</a>.</p>
   *
   * @param stream A URL that points to an external MP3 file.
   * @param context (default = <code>null</code>) An optional SoundLoader context object, which can define the buffer time
   * (the minimum number of milliseconds of MP3 data to hold in the Sound object's
   * buffer) and can specify whether the application should check for a cross-domain
   * policy file prior to loading the sound.
   *
   * @throws flash.errors.IOError A network error caused the load to fail.
   * @throws SecurityError Local untrusted files may not communicate with
   * the Internet. You can work around this by reclassifying this file
   * as <span>local-with-networking or</span> trusted.
   * @throws SecurityError You cannot connect to commonly reserved ports.
   * For a complete list of blocked ports, see "Restricting Networking APIs" in the
   * <i>ActionScript 3.0 Developer's Guide</i>.
   * @throws flash.errors.IOError The <code>digest</code> property of the <code>stream</code> object is not
   * <code>null</code>. You should only set the <code>digest</code> property of a URLRequest object
   * when calling the <code>URLLoader.load()</code> method when loading a SWZ file (an Adobe
   * platform component).
   *
   * @example
   * The following example displays the loading progress of a sound file.
   *
   * <p>In the constructor a <code>URLRequest</code> object is created to identify the location
   * of the sound file, which is a podcast from Adobe. The file is loaded in a <code>try...catch</code>
   * block in order to catch any error that may occur while loading the file. If an IO error
   * occurred, the <code>errorHandler()</code> method also is invoked and the error message
   * is written in the text field intended for the progress report. While a load operation is in
   * progress, a <code>ProgressEvent.PROGRESS</code> event is dispatched and the <code>progressHandler()</code>
   * method is called. Here, <code>ProgressEvent.PROGRESS</code> event is used as a timer for
   * calculating the load progress.</p>
   *
   * <p>The <code>progressHandler()</code> method divides the <code>bytesLoaded</code> value
   * passed with the <code>ProgressEvent</code> object by the <code>bytesTotal</code> value to
   * arrive at a percentage of the sound data that is being loaded. It then displays these values
   * in the text field. (Note that if the file is small, cached, or the file is in the local directory,
   * the progress may not be noticeable.)</p>
   * <pre>
   * package {
   * import flash.display.Sprite;
   * import flash.net.URLRequest;
   * import flash.media.Sound;
   * import flash.text.TextField;
   * import flash.text.TextFieldAutoSize;
   * import flash.events.ProgressEvent;
   * import flash.events.IOErrorEvent;
   *
   * public class Sound_loadExample extends Sprite {
   *     private var snd:Sound = new Sound();
   *     private var statusTextField:TextField  = new TextField();
   *
   *     public function Sound_loadExample(){
   *
   *         statusTextField.autoSize = TextFieldAutoSize.LEFT;
   *         var req:URLRequest = new URLRequest("http://av.adobe.com/podcast/csbu_dev_podcast_epi_2.mp3");
   *
   *         try {
   *         snd.load(req);
   *
   *         snd.play();
   *         }
   *         catch (err:Error) {
   *             trace(err.message);
   *         }
   *
   *         snd.addEventListener(IOErrorEvent.IO_ERROR, errorHandler);
   *         snd.addEventListener(ProgressEvent.PROGRESS, progressHandler);
   *
   *         this.addChild(statusTextField);
   *     }
   *
   *     private function progressHandler(event:ProgressEvent):void {
   *         var loadTime:Number = event.bytesLoaded / event.bytesTotal;
   *         var LoadPercent:uint = Math.round(100 * loadTime);
   *
   *         statusTextField.text = "Sound file's size in bytes: " + event.bytesTotal + "\n"
   *                              + "Bytes being loaded: " + event.bytesLoaded + "\n"
   *                              + "Percentage of sound file that is loaded " + LoadPercent + "%.\n";
   *     }
   *
   *     private function errorHandler(errorEvent:IOErrorEvent):void {
   *         statusTextField.text = "The sound could not be loaded: " + errorEvent.text;
   *     }
   * }
   * }
   * </pre>
   * @param stream
   * @param context
   */
  public function load(stream:URLRequest, context:SoundLoaderContext = null):void {
    if (stream && stream.url) {
      var url:String = stream.url;
      var mp3ExtensionPos:int = url.indexOf(".mp3");
      if (mp3ExtensionPos !== -1 && !audio['canPlayType']("audio/mp3")) {
        var newExtension:String = audio['canPlayType']("audio/ogg") ? ".ogg" : ".wav";
        url = url.substring(0, mp3ExtensionPos) + newExtension + url.substring(mp3ExtensionPos + 4);
      }
      audio['src'] = url;
      audio['load']();
    }
  }

  /**
   * Generates a new SoundChannel object to play back the sound. This method
   * returns a SoundChannel object, which you access to stop the sound and to monitor volume.
   * (To control the volume, panning, and balance, access the SoundTransform object assigned
   * to the sound channel.)
   *
   * @param startTime (default = <code>0</code>) The initial position in milliseconds at which playback should
   * start.
   * @param loops (default = <code>0</code>) Defines the number of times a sound loops back to the <code>startTime</code> value
   * before the sound channel stops playback.
   * @param sndTransform (default = <code>null</code>) The initial SoundTransform object assigned to the sound channel.
   * @return A SoundChannel object, which you use to control the sound.
   * This method returns <code>null</code> if you have no sound card
   * or if you run out of available sound channels. The maximum number of
   * sound channels available at once is 32.
   *
   * @see SoundChannel.stop()
   * @see SoundMixer.stopAll()
   *
   * @example
   * In the following example, once the file is loaded, the user using a
   * graphic bar can select the starting position (starting time) of the sound file.
   *
   * <p>The constructor calls the <code>Sound.load()</code> method to start loading the sound data.
   * Next it calls the <code>Sound.play()</code> method which will start playing the sound as soon
   * as enough data has loaded. The <code>Sound.play()</code> method returns a SoundChannel object
   * that can be used to control the playback of the sound. The text field displays the instructions.
   * To make sure the content of where the user wants the sound to start, has already been loaded,
   * the <code>bar</code> Sprite object is created and displayed after the file has finished loading.
   * An <code>Event.COMPLETE</code> event is dispatched when the file is successfully loaded, which
   * triggers the <code>completeHandler()</code> method. The <code>completeHandler()</code> method
   * then creates the bar and adds it to the display list. (A sprite object is used instead of a shape
   * object to support interactivity.) When the user clicks on the bar, the <code>clickHandler()</code>
   * method is triggered.</p>
   *
   * <p>In the <code>clickHandler()</code> method, the position of x coordinate of the user's click,
   * <code>event.localX</code>, is used to determine where the user wants the file to start.
   * Since the bar is 100 pixels and it starts at x coordinate 100 pixels, it is easy to determine
   * the percentage of the position. Also, since the file is loaded, the <code>length</code>
   * property of the sound file will have the length of the complete file in milliseconds.
   * Using the length of the sound file and the position in the line, a starting position
   * for the sound file is determined. After stopping the sound from playing, the sound file
   * restarts at the selected starting position, which is past as the <code>startTime</code>
   * parameter to the <code>play()</code> method.</p>
   *
   * <pre>
   * package {
   *     import flash.display.Sprite;
   *     import flash.display.Graphics;
   *     import flash.events.MouseEvent;
   *     import flash.media.Sound;;
   *     import flash.net.URLRequest;
   *     import flash.media.SoundChannel;
   *     import flash.events.ProgressEvent;
   *     import flash.events.Event;
   *     import flash.text.TextField;
   *     import flash.text.TextFieldAutoSize;
   *     import flash.events.IOErrorEvent;
   *
   *     public class Sound_playExample1 extends Sprite {
   *         private var snd:Sound = new Sound();
   *         private var channel:SoundChannel = new SoundChannel();
   *         private var infoTextField:TextField = new TextField();
   *
   *         public function Sound_playExample1() {
   *
   *             var req:URLRequest = new URLRequest("MySound.mp3");
   *
   *             infoTextField.autoSize = TextFieldAutoSize.LEFT;
   *             infoTextField.text = "Please wait for the file to be loaded.\n"
   *                                 + "Then select from the bar to decide where the file should start.";
   *
   *             snd.load(req);
   *             channel = snd.play();
   *
   *             snd.addEventListener(IOErrorEvent.IO_ERROR, errorHandler);
   *             snd.addEventListener(Event.COMPLETE, completeHandler);
   *
   *
   *             this.addChild(infoTextField);
   *         }
   *
   *         private function completeHandler(event:Event):void {
   *             infoTextField.text = "File is ready.";
   *
   *             var bar:Sprite = new Sprite();
   *
   *             bar.graphics.lineStyle(5, 0xFF0000);
   *             bar.graphics.moveTo(100, 100);
   *             bar.graphics.lineTo(200, 100);
   *
   *             bar.addEventListener(MouseEvent.CLICK, clickHandler);
   *
   *             this.addChild(bar);
   *         }
   *
   *         private function clickHandler(event:MouseEvent):void {
   *
   *                 var position:uint = event.localX;
   *                 var percent:uint = Math.round(position) - 100;
   *                 var cue:uint = (percent / 100) * snd.length;
   *
   *                 channel.stop();
   *                 channel = snd.play(cue);
   *         }
   *
   *         private function errorHandler(errorEvent:IOErrorEvent):void {
   *             infoTextField.text = "The sound could not be loaded: " + errorEvent.text;
   *         }
   *     }
   * }
   * </pre>
   *
   * In the following example, depending on whether the user single or double clicks on
   * a button the sound will play once or twice.
   *
   * <p>In the constructor, the sound is loaded and a simple rectangle <code>button</code> sprite object
   * is created. (A sprite object is used instead of a shape object to support interactivity.)
   * Here, it is assumed that the sound file is in the same directory as the SWF file. (There
   * is no error handling code for this example.)</p>
   *
   * <p>Two event listeners are set up to respond to single mouse clicks and double clicks.
   * If the user clicks once, the <code>clickHandler()</code> method is invoked, which plays the sound.
   * If the user double clicks on the button, the <code>doubleClickHandler()</code> method is invoked,
   * which will play the sound file twice. The second argument of the <code>play()</code> method is set
   * to <code>1</code>, which means the sound will loop back once to the starting time of the
   * sound and play again. The starting time, first argument, is set to <code>0</code>, meaning
   * the file will play from the beginning.</p>
   *
   *
   * <pre>
   * package {
   *     import flash.display.Sprite;
   *     import flash.events.MouseEvent;
   *     import flash.media.Sound;
   *     import flash.net.URLRequest;
   *
   *     public class Sound_playExample2 extends Sprite {
   *         private var button:Sprite = new Sprite();
   *         private var snd:Sound = new Sound();
   *
   *         public function Sound_playExample2() {
   *
   *             var req:URLRequest = new URLRequest("click.mp3");
   *             snd.load(req);
   *
   *             button.graphics.beginFill(0x00FF00);
   *             button.graphics.drawRect(10, 10, 50, 30);
   *             button.graphics.endFill();
   *
   *             button.addEventListener(MouseEvent.CLICK, clickHandler);
   *             button.addEventListener(MouseEvent.DOUBLE_CLICK, doubleClickHandler);
   *
   *             this.addChild(button);
   *         }
   *
   *         private function clickHandler(event:MouseEvent):void {
   *             snd.play();
   *         }
   *
   *         private function doubleClickHandler(event:MouseEvent):void {
   *             snd.play(0, 2);
   *         }
   *     }
   * }
   * </pre>
   *
   * The following example displays the loading and playing progress of a sound file.
   *
   * <p>In the constructor, the file is loaded in a <code>try...catch</code> block in order to catch
   * any error that may occur while loading the file. A listener is added to the sound object that
   * will respond to an <code>IOErrorEvent</code> event by calling the <code>errorHandler()</code> method.
   * Another listener is added for the main application that will respond to an <code>Event.ENTER_FRAME</code>
   * event, which is used as the timing mechanism for showing playback progress. Finally, a third listener
   * is added for the sound channel that will respond to an <code>Event.SOUND_COMPLETE</code> event (when
   * the sound has finished playing), by calling the <code>soundCompleteHandler()</code> method.
   * The <code>soundCompleteHandler()</code> method also removes the event listener for the
   * <code>Event.ENTER_FRAME</code> event.</p>
   *
   *
   * <p>The <code>enterFrameHandler()</code> method divides the <code>bytesLoaded</code> value
   * passed with the <code>ProgressEvent</code> object by the <code>bytesTotal</code> value to
   * arrive at a percentage of the sound data that is being loaded. The percentage of sound data that is
   * being played could be determined by dividing the value of sound channel's <code>position</code> property
   * by the length of the sound data. However, if the sound data is not fully loaded, the <code>length</code>
   *
   * property of the sound object shows only the size of the sound data that is currently loaded.
   * An estimate of the eventual size of the full sound file is calculated by dividing the value
   * of the current sound object's <code>length</code> by the value of the <code>bytesLoaded</code>
   * property divided by the value of the <code>bytesTotal</code> property.</p>
   *
   * <p>Note that if the file is small, cached, or the file is in the local directory, the load progress
   * may not be noticeable. Also the lag time between when the sound data starts loading and the loaded
   * data starts playing is determined by the value of the <code>SoundLoaderContext.buffertime</code>
   * property, which is by default 1000 milliseconds and can be reset.</p>
   *
   * <pre>
   * package {
   *     import flash.display.Sprite;
   *     import flash.net.URLRequest;
   *     import flash.media.Sound;
   *     import flash.media.SoundChannel;
   *     import flash.text.TextField;
   *     import flash.text.TextFieldAutoSize;
   *     import flash.events.Event;
   *     import flash.events.IOErrorEvent;
   *
   *     public class Sound_playExample3 extends Sprite {
   *         private var snd:Sound = new Sound();
   *         private var channel:SoundChannel;
   *         private var statusTextField:TextField  = new TextField();
   *
   *         public function Sound_playExample3(){
   *
   *             statusTextField.autoSize = TextFieldAutoSize.LEFT;
   *
   *            var req:URLRequest = new URLRequest("http://av.adobe.com/podcast/csbu_dev_podcast_epi_2.mp3");
   *
   *             try {
   *                 snd.load(req);
   *
   *                 channel = snd.play();
   *             }
   *             catch (err:Error) {
   *                 trace(err.message);
   *             }
   *
   *             snd.addEventListener(IOErrorEvent.IO_ERROR, errorHandler);
   *             addEventListener(Event.ENTER_FRAME, enterFrameHandler);
   *             channel.addEventListener(Event.SOUND_COMPLETE, soundCompleteHandler);
   *
   *             this.addChild(statusTextField);
   *         }
   *
   *         private function enterFrameHandler(event:Event):void {
   *             var loadTime:Number = snd.bytesLoaded / snd.bytesTotal;
   *             var loadPercent:uint = Math.round(100 * loadTime);
   *             var estimatedLength:int = Math.ceil(snd.length / (loadTime));
   *             var playbackPercent:uint = Math.round(100 * (channel.position / estimatedLength));
   *
   *             statusTextField.text = "Sound file's size is " + snd.bytesTotal + " bytes.\n"
   *                                    + "Bytes being loaded: " + snd.bytesLoaded + "\n"
   *                                    + "Percentage of sound file that is loaded " + loadPercent + "%.\n"
   *                                    + "Sound playback is " + playbackPercent + "% complete.";
   *         }
   *
   *         private function errorHandler(errorEvent:IOErrorEvent):void {
   *             statusTextField.text = "The sound could not be loaded: " + errorEvent.text;
   *         }
   *
   *         private function soundCompleteHandler(event:Event):void {
   *             statusTextField.text = "The sound has finished playing.";
   *             removeEventListener(Event.ENTER_FRAME, enterFrameHandler);
   *         }
   *     }
   * }
   * </pre>
   */
  public function play(startTime:Number = 0, loops:int = 0, sndTransform:SoundTransform = null):SoundChannel {
    audio['play']();
    return null;
  }

  private var audio:HTMLElement;
}
}