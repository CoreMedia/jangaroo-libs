package net.jangaroo.ext {

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

  private static const EXT_CONFIG_PACKAGE_REGEXP:RegExp = /^ext\.config\.([a-zA-Z0-9_$]+?)(layout)?$/;

  /**
   * @private
   */
  public static function establishType(configObject:Object, typeProperty:String, registry:Object):void {
    var configClass:Class = configObject.constructor;
    var configClassPrototype:Object = configClass.prototype;
    if (!configClassPrototype.hasOwnProperty(typeProperty)) {
      var type:String = String(configClass["$class"].qName).toLowerCase();
      var match:Array = type.match(EXT_CONFIG_PACKAGE_REGEXP);
      if (match) {
        // it is a built-in, already registered type: only set configClass typeProperty!
        configClassPrototype[typeProperty] = match[1];
      } else {
        establishTargetClassProperty(typeProperty, configClass, registry);
        // continue up the inheritance chain:
        establishType(configClass["$class"]['extends_'].prototype, typeProperty, registry);
      }
    }
  }

  private static function establishTargetClassProperty(typeProperty:String, configClass:Class, registry:Object):void {
    var configClassPrototype:Object = configClass.prototype;
    if (!Object['getOwnPropertyDescriptor'](configClassPrototype, "targetClass")) {
      var getter:Function = function():String {
        return registry[this[typeProperty]];
      };
      Object['defineProperty'](configClassPrototype, "targetClass", {
        configurable: true,
        get: getter,
        set: function(targetClass:Class):void {
          // performance optimization: ignore subsequent calls!
          Object['defineProperty'](configClassPrototype, "targetClass", {
            get: getter,
            set: EMPTY
          });
          var type:String = String(configClass["$class"].qName).toLowerCase();
          configClass[typeProperty] = configClassPrototype[typeProperty] = type;
          registry[type] = targetClass;
        }
      });
    }
  }

  private static function EMPTY():void {}
}
}