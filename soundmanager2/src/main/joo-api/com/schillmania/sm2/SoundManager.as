package com.schillmania.sm2 {
import js.Element;

public interface SoundManager {

  // properties:

  function get debugMode():Boolean;
  function set debugMode(debug:Boolean):void;

  function get debugFlash():Boolean;
  function set debugFlash(debug:Boolean):void;

  function get url():String;
  function set url(url:String):void;

  function get altUrl():String;
  function set altUrl(altUrl:String):void;

  function get flashVersion():Number;
  function set flashVersion(requiredVersion:Number):void;

  function get flashLoadTimeout():uint;
  function set flashLoadTimeout(msecs:uint):void;

  function get useFastPolling():Boolean;
  function set useFastPolling(useFastPolling:Boolean):void;

  function get useHighPerformance():Boolean;
  function set useHighPerformance(useHighPerformance:Boolean):void;

  function get useFlashBlock():Boolean;
  function set useFlashBlock(useFlashBlock:Boolean):void;

  function get useHTML5Audio():Boolean;
  function set useHTML5Audio(useHTML5Audio:Boolean):void;

  function get wmode():String;
  function set wmode(wmode:String):void;

  function get allowFullScreen():Boolean;
  function set allowFullScreen(allowFullScreen:Boolean):void;

  // methods:

  function canPlayLink(node: Element):Boolean;

  function canPlayMIME(mimeType: String):Boolean;

  function canPlayURL(mediaURL: String):Boolean;

  /**
   * object:options
   *
   * Creates a sound with an arbitrary number of optional arguments. Returns a <code>SMSound</code> object instance.
   * Requires <code>id</code> and <code>url</code> at a minimum.</dd>
   *
   * Example:
<pre><code>soundManager.createSound({<span>
 id: 'mySound', <span>// required</span>
 url: '/audio/mysoundfile.mp3', <span>// required</span>
 <span>// optional sound parameters here, see <a href="#sound-properties" title="SoundManager 2 API Info: Sound Properties Object" onclick="resetFilter()">Sound Properties</a> for full list</span>

 volume: 50,
 autoPlay: true,
 whileloading: soundIsLoading
</span>});</code></pre>
   <p>Each <code>createSound()</code> call results in the creation of a <code>SMSound</code> object which stores all properties, methods and events relevant to that particular sound instance.</p>
   <p>Individual sound objects can also easily be referenced as returned from <code>createSound()</code>:</p>

<pre><code>
var mySoundObject = soundManager.createSound({
  id: 'mySound',
  url: '/audio/mysoundfile.mp3'
});
mySoundObject.play(); // SMSound object reference, same as soundManager.getSoundById('mySound')
</code></pre>

				   <p>(Note: Code formatting is stylistic, not necessarily recommended.) See <a href="#object-literal-format" title="SoundManager 2 API Info: Sound Properties Object">Object Literal Format</a>.</p>
				   </dd>
				   <dd>If <code>createSound</code> is called with the ID of an existing sound, that sound object will be returned "as-is". Any other <code>createSound</code> options passed (eg., <code>url</code> or <code>volume</code>, etc.) will be ignored.</dd>

				  </dl>

				   <dl id="soundmanager-createsound-overloaded" class="f-block f-createsound">
				    <dt><span>object:SMSound </span>createSound(<span>id:string,url:string</span>) - overloaded method</dt>
				    <dd title="id:string,url:string">Creates a sound with the specified ID and URL (simple two-parameter method.)</dd>
				    <dd>Example: <code>soundManager.createSound('<span>mySound</span>','<span>/audio/mysoundfile.mp3</span>');</code>
   * @param optionsOrId
   * @param url
   * @return
   */
  function createSound(optionsOrId:*, url:String = null):SMSound;

  function createVideo(options:Object):SMSound;

  function destroySound(id:String):void;

  function destroyVideo(id:String):void;

  function mute(id:String = undefined):SMSound;

  /**
   * Queue <code>onload()</code>-style event listener(s) processed at (or immediately, if added after) SM2
   * initialization, just before <code>soundManager.onload()</code> or <code>onerror()</code> are called.
   * More flexible than single <code>soundManager.onload()</code> event, allows separate scripts to add listeners etc.
   * An optional scope parameter can be specified; if none, the callback is scoped to the window.
   *
   * <p>Example:
   * <code>soundManager.onready(<em>myOnReadyHandler</em>); soundManager.onready(<em>myOtherHandler</em>);</code>
   * </p>
   * <p>A "status" object is also passed to the callback, which can be safely ignored. It includes a "success"
   * parameter, indicating the state of <code>soundManager.supported()</code>.</p>
   * <p>Example:
   * <pre><code>
   * soundManager.onready(function(oStatus) {
   *   if (oStatus.success) {
   *     alert('Yay, SM2 loaded OK!');
   *   } else {
   *     alert('Oh snap, SM2 could not start.');
   *   }
   * });
   * </code></pre>
   * <p>You may also check <code>soundManager.supported()</code> instead.</p>
   * <pre><code>
   * soundManager.onready(function() {
   *   if (soundManager.supported()) {
   *     alert('Yay, SM2 loaded OK!');
   *   } else {
   *     alert('Oh snap, SM2 could not start.');
   *   }
   * });
   * </code></pre>
   * <p>The same listener may be added multiple times; there is no duplicate checking. Queue is processed in order of
   * addition.</p>
   * <p>If <code>soundManager.reboot()</code> is called, all listeners' "fired" flags will be reset and they will be
   * eligible to fire again when SM2 starts up.</p>
   */
  function onready(callback:Function/*(status)*/, scope:Object = undefined):void;

  /**
   *
   * Starts playing the sound specified by ID. (Will start loading if applicable, and will play ASAP.)</dd>
   * <dd>Returns an <code>SMSound</code> (sound object) instance.</dd>
   *
   * <dd>Example: <code>soundManager.play('<span>mySound</span>');</code></dd>
   * <dd>Note that the second parameter, <code>options object</code>, is not required and can take almost any argument from the object literal format (eg. volume.) It is convenient when you wish to override the sound defaults for a single instance.</dd>
   * <dd>Example: <code>soundManager.play('<span>mySound</span>',{<span>volume:50,onfinish:playNextSound</span>});</code></dd>
   */
  function play(id:String, options:Object = null):void;

  /**
   * Pauses the sound specified by ID. Does not toggle. Affects <span>paused</span> property (boolean.) Returns the given sound object.</dd>
   *
   * <dd>Example: <code>soundManager.pause('<span>mySound</span>');</code>
   */
  function pause(id:String):void;

  function pauseAll():void;

  function reboot():void;

  function resume(id:String):SMSound;

  function resumeAll():void;

  function setPan(id:String, volume:int):SMSound;

  function setPosition(id:String, msecOffset:uint):SMSound;

  function setVolume(id:String, volume:uint):SMSound;

  function stop(id:String):SMSound;

  function stopAll():void;

  function toggleMute(id:String):SMSound;

  function togglePause(id:String):SMSound;

  function unload(id:String):SMSound;

  function unmute(id:String):SMSound;

  function load(id:String, options:Object = null):SMSound;

  function getSoundById(id:String):SMSound;

  function getMemoryUse():uint;

  function loadFromXML(xmlURL:String):void;

  function supported():Boolean;
}
}