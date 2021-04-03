package net.jangaroo.ext {

[Rename("joo.ConfigUtils")]
public class Exml {

  public static const PREPEND:int = -1;
  public static const APPEND:int = 0;

  private static const AT:String ="$at";

  /**
   * Pseudo-code to complement a <property>$at property to specify exml:mode="prepend".
   */
  public static function prepend(arr:Array):Array {
    throw new Error("Internal MXML compiler method 'prepend' called at run-time.");
  }

  /**
   * Pseudo-code to complement a <property>$at property to specify exml:mode="append".
   */
  public static function append(arr:Array):Array {
    throw new Error("Internal MXML compiler method 'append' called at run-time.");
  }

  /**
   * Merge override config object into the given config object.
   * This function is mainly used by code generated from EXML source files.
   */
  public static function apply(config:Object, overrideConfig:Object):* {
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
      // If the override does not provide an at position,
      // make sure to forget about the at position of the original config, too.
      delete config[atProperty];
    } else {
      var value:* = config[property];
      var at:int = config[atProperty];
      if (value === undefined && at === undefined) {
        // If the original config does not mention the property,
        // pass the at position along with the value.
        config[atProperty] = overrideAt;
      } else {
        var overrideValueArray:Array = toArray(overrideValue);
        if (overrideAt === PREPEND) {
          overrideAt = overrideValueArray.length;
        }
        var valueArray:Array = toArray(value);
        if (at !== undefined) {
          if (at === PREPEND) {
            at = valueArray.length;
          }
          config[atProperty] = at + overrideAt;
        }
        overrideValue = overrideValueArray.slice(0, overrideAt).concat(valueArray, overrideValueArray.slice(overrideAt));
      }
    }
    config[property] = overrideValue;
  }

  private static const EMPTY_ARRAY:Array = [];

  private static function toArray(value:*):Array {
    return value === undefined ? EMPTY_ARRAY : value instanceof Array ? value : [value];
  }

  public static function eventHandler(flexEventName:String, flexEventClass:Class, flexEventHandler:Function):Function {
    return function():* {
      return flexEventHandler(new flexEventClass(flexEventName, arguments));
    };
  }

  public static function asString(value:*):String {
    return value === undefined || value === null ? value : String(value);
  }}
}