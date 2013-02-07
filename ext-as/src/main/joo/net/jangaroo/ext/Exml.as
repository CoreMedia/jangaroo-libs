package net.jangaroo.ext {
import ext.Element;

import js.Element;

public class Exml {

  public static const PREPEND:int = -1;
  public static const APPEND:int = 0;

  private static const AT:String ="$at";

  /**
   * Merge override config object into the given config object.
   * This function is mainly used by code generated from EXML source files.
   */
  public static function apply(config:Object, overrideConfig:Object):Object {
    for (var property:String in overrideConfig) {
      if (property.substr(property.length - AT.length) !== AT) {
        applyProperty(config, overrideConfig, property);
      }
    }
    return config;
  }

  private static function applyProperty(config:Object, overrideConfig:Object, property:String):void {
    var overrideValue:* = overrideConfig[property];
    if (overrideValue === undefined) {
      // completely ignore properties with a value of "undefined":
      return;
    }
    var atProperty:String = property + AT;
    var overrideAt:int = overrideConfig[atProperty];
    if (overrideAt === undefined) {
      delete config[atProperty];
    } else {
      var overrideValueArray:Array = toArray(overrideValue);
      if (overrideAt === -1) {
        overrideAt = overrideValueArray.length;
      }
      var valueArray:Array = toArray(config[property]);
      var at:int = config[atProperty];
      if (at !== undefined) {
        if (at === -1) {
          at = valueArray.length;
        }
        config[atProperty] = at + overrideAt;
      }
      overrideValue = overrideValueArray.slice(0, overrideAt).concat(valueArray, overrideValueArray.slice(overrideAt));
    }
    config[property] = overrideValue;
  }

  private static const EMPTY_ARRAY:Array = [];

  private static function toArray(value:*):Array {
    return value === undefined ? EMPTY_ARRAY : value instanceof Array ? value : [value];
  }

  public static function loadStyleSheets(urls:Array, callback:Function):void {
    var requestCount:int = urls.length;
    for (var i:int = 0; i < urls.length; i++) {
      createLink(urls[i], function():void {
        if (--requestCount === 0) {
          callback();
        }
      });
    }
  }

  private static function createLink(url:String, callback:Function):void {
    var linkElement:js.Element = window.document.createElement("link");
    linkElement["rel"] = "stylesheet";
    linkElement["type"] = "text/css";
    linkElement.href = url;
    window.document.getElementsByTagName("head")[0].appendChild(linkElement);
    ext.Element.get(linkElement).addListener("load", callback);
  }

}
}