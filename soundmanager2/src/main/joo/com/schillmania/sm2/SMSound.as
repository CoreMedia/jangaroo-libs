package com.schillmania.sm2 {

public interface SMSound {

  // properties:

  function get sID():String;

  function get url():String;

  function get serverURL():String;

  function get bytesLoaded():uint;

  function get bytesTotal():uint;

  function get didBeforeFinish():Boolean;

  function get didJustBeforeFinish():Boolean;

  function get duration():uint;

  function get durationEstimate():uint;

  function get eqData():Object/*{left:Array, right:Array}*/;

  function get id3():Object;

  function get isBuffering():Boolean;

  function get connected():Boolean;

  function get loaded():Boolean;

  function get muted():Boolean;

  function get paused():Boolean;

  function get peakData():Object/*{left:Number, right:Number}*/;

  function get playState():uint;

  function get position():uint;

  function get readyState():uint;

  function get type():String;

  function get useVideo():Boolean;

  function get volume():uint;

  function get waveformData():Object/*{left:Array, right:Array}*/;

  function get options():SMSoundOptions;

  // methods:

  function destruct():void;

  function load(options:Object = null):SMSound;

  function mute():SMSound;

  function onposition(msecOffset:int, callback:Function, scope:Object = null):SMSound;

  function pause():SMSound;

  function start(options:Object = null):SMSound;

  function play(options:Object = null):SMSound;

  function setPosition(msecOffset:uint):SMSound;

  function resume():SMSound;

  function setPan(volume:int, instanceOnly:Boolean = false):SMSound;

  function setVolume(volume:uint, instanceOnly:Boolean = false):SMSound;

  function toggleMute():SMSound;

  function togglePause():SMSound;

  function stop():SMSound;

  function unload():SMSound;

  function unmute():SMSound;

}

}