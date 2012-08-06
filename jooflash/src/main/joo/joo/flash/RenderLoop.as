package joo.flash {
import flash.display.Stage;
import flash.events.Event;
import flash.events.EventDispatcher;

import js.HTMLCanvasElement;
import js.HTMLImageElement;

public class RenderLoop {

  private var _stages:Vector.<Stage>;
  private var _renderTime:Number = NaN;

  polyfillRequestAnimationFrame();
  private static function polyfillRequestAnimationFrame():void {
    var lastTime:Number = 0;
    var vendors:Array = ['ms', 'moz', 'webkit', 'o'];
    for (var x:int = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
      window.requestAnimationFrame = window[vendors[x] + 'RequestAnimationFrame'];
      window.cancelAnimationFrame =
              window[vendors[x] + 'CancelAnimationFrame'] || window[vendors[x] + 'CancelRequestAnimationFrame'];
    }

    if (!window.requestAnimationFrame) {
      window.requestAnimationFrame = function (callback:Function):Object {
        var currTime:Number = new Date().getTime();
        var timeToCall:Number = Math.max(0, 16 - (currTime - lastTime));
        var id:Object = window.setTimeout(function ():void {
                  callback(currTime + timeToCall);
                },
                timeToCall);
        lastTime = currTime + timeToCall;
        return id;
      };
    }

    if (!window.cancelAnimationFrame) {
      window.cancelAnimationFrame = window.clearTimeout;
    }
  }

  public function RenderLoop() {
    _stages = new Vector.<Stage>();
    _requestAnimationFrame();
  }

  private function _requestAnimationFrame():void {
    window.requestAnimationFrame(_onAnimationFrame);
  }

  private function _onAnimationFrame(currentTime:Number = NaN):Boolean {
    _requestAnimationFrame();

    if (!currentTime) {
      currentTime = new Date().getTime();
    }

    if (isNaN(_renderTime) || _renderTime > currentTime) {
      _renderTime = currentTime;
    }

    var deltaTime:Number = currentTime - _renderTime;

    if (deltaTime >= 1) {
      _renderTime = currentTime;

      dispatchEvent(new Event(Event.ENTER_FRAME));

      for (var i:uint = 0; i < _stages.length; i++) {
        _stages[i].materialize();
      }
    }

    return true;
  }

  //-------------------------------------------------------------------------------------------------
  //-------------------------------------------------------------------------------------------------

  internal function addStage(stage:Stage):void {
    _stages.push(stage);
  }

  private static var _eventDispatcherMap:Object = {};

//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------

  public static function addEventDispatcher(eventType:String, eventDispatcher:EventDispatcher):void {
    if (eventType != Event.ENTER_FRAME) {
      return;
    }

    var eventDispatchers:Vector.<EventDispatcher> = _eventDispatcherMap[eventType];

    if (!eventDispatchers) {
      _eventDispatcherMap[eventType] = eventDispatchers = new Vector.<EventDispatcher>();
    }

    eventDispatchers.push(eventDispatcher);
  }

//-------------------------------------------------------------------------------------------------

  public static function removeEventDispatcher(eventType:String, eventDispatcher:EventDispatcher):void {
    var eventDispatchers:Vector.<EventDispatcher> = _eventDispatcherMap[eventType];

    if (eventDispatchers) {
      var index:int = eventDispatchers.indexOf(eventDispatcher);

      if (index !== -1) {
        delete eventDispatchers[index];
      }
    }
  }

//-------------------------------------------------------------------------------------------------

  private static function dispatchEvent(event:Event):void {
    var eventDispatchers:Vector.<EventDispatcher> = _eventDispatcherMap[event.type];

    if (eventDispatchers != null) {
      var eventDispatchersLength:int = eventDispatchers.length;
      var c:int = 0;

      for (var i:int = 0; i < eventDispatchersLength; i++) {
        var eventDispatcher:EventDispatcher = eventDispatchers[i];

        if (eventDispatcher) {
          eventDispatcher.dispatchEvent(event);

          if (c != i) {
            eventDispatchers[c] = eventDispatcher;
          }

          c++;
        }
      }

      for (i = eventDispatchersLength; i < eventDispatchers.length; i++) {
        eventDispatchers[c++] = eventDispatchers[i];
      }

      eventDispatchers.length = c;
    }
  }

  public static function debug(canvas:HTMLCanvasElement, text:String):void {
    var img:HTMLImageElement = HTMLImageElement(window.document.createElement("img"));
    img.src = canvas.toDataURL();
    if (text) {
      img.setAttribute('alt', text);
    }
    window.document.body.appendChild(img);
  }
 
}


}