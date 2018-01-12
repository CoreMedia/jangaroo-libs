// Claim to "override" Ext.namespace so that this code is loaded / included right after Ext.namespace has been defined!
Ext.define("AS3_override", {
  override: "Ext.namespace",
  requires: [ "joo_runtime_init" ]
});

Class = {
  $isClass: true,
  $className: "Class",
  __isInstance__: function(object) {
    // typeof any === "function" returns false negatives (built-in classes in IE are reported as "object"),
    // so look for Ext's "$isClass" property or a "prototype" property with an "object"-type value:
    return !!object && (!!object.$isClass || typeof object.prototype === "object" || typeof object.prototype === "function");
  }
};
Vector$object = Array;

Ext.apply(Ext.namespace("AS3"), {
  // function assert(cond : Object, file : String, line : uint, column : uint) : void
  assert: function (cond, file, line, column) {
    if (!cond)
      throw new Error(file+"("+line+":"+column+"): assertion failed");
  },
  bind: function bind(object, boundMethodName) {
    var method = object[boundMethodName];
    if (object.hasOwnProperty(boundMethodName)) {
      return method;
    }
    var boundMethod = method.bind(object);
    Object.defineProperty(object, boundMethodName, {
      writable: true,    // TODO: for backwards-compatibility only
      value: boundMethod
    });
    return boundMethod;
  },
  is: function (object, type) {
    if (!Class.__isInstance__(type)) {
      throw new TypeError("Second parameter of 'is' or 'as' must be a type.");
    }
    if (object === undefined || object === null) {
      return false;
    }
    if (Ext.isFunction(type.__isInstance__)) {
      return type.__isInstance__(object);
    }
    // constructor or instanceof may return false negatives:
    if (object.constructor === type || object instanceof type) {
      return true;
    }
    // special case for special observables, e.g. classes:
    if (object.isObservable && (type.$className === "Ext.mixin.Observable" || type.$className === "Ext.util.Observable")) {
      return true;
    }

    if (typeof object === 'object') {
      var objectType;
      if (object.isInstance) {
        objectType = object.self;
      } else {
        var typeName = object.xclass || object.xtype && Ext.ClassManager.getNameByAlias("widget." + object.xtype);
        if (typeName) {
          objectType = Ext.ClassManager.get(typeName);
        }
      }
      if (AS3.isAssignableFrom(type, objectType)) {
        return true;
      }
    }
    return false;
  },
  isAssignableFrom: function(type, clazz) {
    if (!type || !clazz) {
      return false;
    }
    if (type === clazz) {
      return true;
    }
    if (clazz.prototype instanceof type) {
      return true;
    }
    if (type.$className) {
      var mixins = clazz.prototype.mixins;
      if (Ext.isObject(mixins)) {
        // fast path for jangaroo compiler: no explicit check if the class really is the expected class
        if (mixins[type.$className]) {
          return true;
        }
        // as mixinIds might not be unique, have an additional type check if mixin is found
        if (type.prototype.mixinId && AS3.is(mixins[type.prototype.mixinId], type)) {
          return true;
        }
        // fallback to checking the type of every entry in mixin mapping to make sure the mixin is not registered
        // under a custom id (e.g. Ext.panel.Panel has an entry mixins: { docking: "Ext.container.DockingContainer"; } )
        for (var key in mixins) {
          var mixin = mixins[key];
          if (mixin && AS3.isAssignableFrom(type, mixin.self)) {
            return true;
          }
        }
      }
    }
    return false;
  },
  as: function (object, type) {
    return AS3.is(object, type) ? object : null;
  },
  cast: function (type, value) {
    if (value === undefined || value === null) {
      return value;
    }
    var typePrototype = type.prototype;
    if (type.$className && typePrototype &&
            typeof value === "object" && !value.isInstance && !value.xclass && !value.xtype) {
      if (typePrototype.hasOwnProperty("xtype")
              && Ext.isString(typePrototype.xtype)) {
        value.xtype = typePrototype.xtype;
      } else {
        var alias;
        var aliasType;
        if (typePrototype.hasOwnProperty("type")
                && Ext.isString(typePrototype.type)) {
          aliasType = typePrototype.type;
        } else if (typePrototype.hasOwnProperty("alias")
                && Ext.isArray(typePrototype.alias)
                && Ext.isString(alias = typePrototype.alias[0])) {
          aliasType = alias.substr(alias.indexOf(".") + 1);
        }
        if (aliasType) {
          value.type = aliasType;
        }
      }
      value.xclass = type.$className;
      // It is an Ext JS config object: clean up undefined properties!
      for (var key in value) {
        if (value.hasOwnProperty(key) && value[key] === undefined) {
          delete value[key];
        }
      }
    } else if (!AS3.is(value, type)) {
      throw new TypeError("Value cannot be cast to " + Ext.getClassName(type) + ": " + value);
    }
    return value;
  },
  getBindable: function (object, property) {
    if (object.isInstance) {
      this._checkConfig(object, property, "get");
      return object.getConfig(property);
    } else {
      return object[property];
    }
  },
  setBindable: function (object, property, value) {
    if (object.isInstance) {
      this._checkConfig(object, property, "set");
      object.setConfig(property, value);
    } else {
      object[property] = value;
    }
    return value;
  },
  _checkConfig: function(object, property, accessPrefix) {
    if (!Ext.Config.map[property]) {
      var accessorName = accessPrefix + Ext.String.capitalize(property);
      this.trace("[WARN]", "AS3." + accessPrefix + "Bindable() called on " + Ext.getClassName(object) + "#" + property +
              ", which is not registered as a config. Still using method " + accessorName + "().");
      //this is a workaround: Ext seems not to manage some config properties properly. E.g. Button#menu
      //we do this by our own
      Ext.Config.get(property);
    }
  },
  addEventListener: function(eventDispatcher, flexEventClass, flexEventConstantName, flexEventListener, extEventOptions) {
    var flexEventName = flexEventClass[flexEventConstantName];
    var extEventName = flexEventName.substr(2).toLowerCase();
    var extEventListener = function() {
      return flexEventListener(new flexEventClass(flexEventName, arguments));
    };
    if (eventDispatcher.isInstance) {
      var args = Array.prototype.slice.call(arguments, 4);
      args.splice(0, 0, extEventName, extEventListener);
      eventDispatcher.addListener.apply(eventDispatcher, args);
    } else {
      if (!eventDispatcher.listeners) {
        eventDispatcher.listeners = {};
      }
      eventDispatcher.listeners[extEventName] = extEventOptions
              ? Ext.apply({ fn: extEventListener }, extEventOptions)
              : extEventListener;
    }
  }
});

// Add accessors for several Date get/set methods, for all ActionScript API declared in Date.as that is missing in JS:
Object.defineProperties(Date.prototype, ["date", "fullYear", "day", "hours", "milliseconds", "minutes", "month", "seconds", "time", "timezoneOffset"].reduce(function (properties, name) {
  var methodSuffix = name.charAt(0).toUpperCase() + name.substr(1);
  ["", "UTC"].forEach(function createProperty(optUTC) {
    var getter = Date.prototype["get" + optUTC + methodSuffix];
    if (getter) {
      var setter = Date.prototype["set" + optUTC + methodSuffix];
      properties[name + optUTC] = { get: getter, set: setter };  // e.g. monthUTC = { get: getUTCMonth, set: setUTCMonth }
    }
  });
  return properties;
}, {}));
