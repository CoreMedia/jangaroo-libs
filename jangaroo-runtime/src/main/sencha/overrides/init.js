// Claim to "override" Ext so that this code is loaded early
Ext.define("joo_runtime_init", {
  override: "Ext"
});

Ext.Class.registerPreprocessor('__accessors__', function (Class, data) {
  if (data.__accessors__) {
    if (data.__accessors__.statics) {
      Object.defineProperties(Class, data.__accessors__.statics);
      delete data.__accessors__.statics;
    }
    Object.defineProperties(Class.prototype, data.__accessors__);
    delete data.__accessors__;
  }
});

Ext.ClassManager.registerPostprocessor('__factory__', function(className, cls, data) {
  if (data.__factory__) {
    var value = data.__factory__();
    this.set(className, value);
    this.triggerCreated(className);
    return false;
  }
  return true;
});

Ext.ClassManager.registerPostprocessor('__lazyFactory__', function(className, cls, data) {
  if (data.__lazyFactory__) {
    this.set(className, undefined);
    var parts = className.split('.');
    var name = parts.pop();
    var scope = !parts.length ? Ext.ns() : Ext.ns(parts.join('.')); 
    Object.defineProperty(scope, name, {
      get: function() {
        if (joo.debug) {
          console.log("lazy init " + className);
        }
        return this[name] = data.__lazyFactory__();
      },
      set: function(value) {
        Object.defineProperty(this, name, {
          value: value,
          enumerable: true,
          writable: true,
          configurable: true
        });
      },
      configurable: true
    });
    this.triggerCreated(className);
    return false;
  }
  return true;
});

(function() {
  var wrapConstructor = function(Class) {
    return function() {
      // console.log("*** called constructor of " + Ext.getClassName(Class) + " for the first time.");
      Class.__doInit__();
      return Class.prototype.constructor.apply(this, arguments);
    };
  };
  var wrapStaticMember = function(staticMemberName) {
    return {
      get: function() {
        // console.log("*** read " + Ext.getClassName(this) + "." + staticMemberName + " for the first time.");
        this.__doInit__();
        return this[staticMemberName];
      },
      set: function(value) {
        // console.log("*** set " + Ext.getClassName(this) + "." + staticMemberName + " for the first time.");
        this.__doInit__();
        this[staticMemberName] = value;
      },
      enumerable: true,
      configurable: true
    };
  };
  Ext.Class.registerPreprocessor('statics', function (Class, data) {
    var statics = data.statics;
    if (statics) {
      var initStatics = statics.__initStatics__;
      if (!initStatics) {
        Class.addStatics(statics);
      } else {
        delete statics.__initStatics__;
        var originalConstructor = data.hasOwnProperty("constructor") ? data.constructor : null;
        data.constructor = wrapConstructor(Class);
        for (var staticMemberName in statics) {
          Object.defineProperty(Class, staticMemberName, wrapStaticMember(staticMemberName));
        }
        Class.__doInit__ = function () {
          delete this.__doInit__; // self-destruct!
          // remove all initializing interceptors:
          if (originalConstructor) {
            this.prototype.constructor = originalConstructor;
            data.constructor = originalConstructor;
          } else {
            delete this.prototype.constructor;
            delete data.constructor;
          }
          for (var staticMemberName in statics) {
            delete this[staticMemberName];
          }
          // now, define the real statics:
          this.addStatics(statics);
          initStatics();
        }
      }
      delete data.statics;
    }
  });
})();

