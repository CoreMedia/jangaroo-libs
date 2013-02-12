requirejs.config({
  paths: {
    "ext-js": "../ext-js"
  },
  shim: {
    "ext-js/ext-all": {
      deps: ["ext-js/adapter/ext/ext-base"],
      exports: "Ext"
    },
    "ext-js/ext-all-debug": {
      deps: ["ext-js/adapter/ext/ext-base-debug"],
      exports: "Ext"
    }
  }
});

(function() {
  var debug = "false";
  if (typeof location === "object" && typeof location.hash === "string") {
    var match = location.hash.match(/(?:^#|&)joo.debug(?:=(true|false|linked)|&|$)/);
    if (match) {
      debug = match[1] || "true";
    }
  }
  if (debug === "true") {
    requirejs.config({
      map: {
        "*": {
          "ext-js/ext-all": "ext-js/ext-all-debug"
        }
      }
    })
  }
})();
define(["ext-js/ext-all"], function(Ext) {
  Ext.EventManager.fireDocReady();
  Ext.util.DateUtil = Date;
  // Forward all additional Date instance methods as static methods, since AS3 does not allow to extend a final class:
  Ext.iterate({getTimezone: 0, getDayOfYear:0, getWeekOfYear:0, isLeapYear:0, getFirstDayOfMonth:0, getLastDayOfMonth:0,
    getFirstDateOfMonth:0, getLastDateOfMonth:0, getDaysInMonth:0, getSuffix:0, clone:0, isDST:0,
    getGMTOffset:1, clearTime:1, add:2, between:2, format:1},
    function(method, arity) {
      // We could do this in a general fashion, but that would mean using apply() combined with Array#slice(),
      // which is more runtime overhead.
      Ext.util.DateUtil[method] =
        arity === 0 ?
          function(date) {
            return date[method]();
          }
          : arity === 1 ?
          function(date, arg1) {
            return date[method](arg1);
          }
          : // arity can only be 2
          function(date, arg1, arg2) {
            return date[method](arg1, arg2);
          };
    });
  Ext.util.StringUtil = String;
  // aliases for overloaded methods, renamed in Ext AS API:
  Ext.menu.Menu.prototype.showMenu = Ext.menu.Menu.prototype.show;
  Ext.Window.prototype.showWindow = Ext.Window.prototype.show;
  Ext.Component.prototype.addClasses = Ext.Component.prototype.addClass;
  Ext.Component.prototype.removeClasses = Ext.Component.prototype.removeClass;
  // patch for intermediate component superclasses without xtype:
  Ext.Component.prototype.getXTypes = function () {
    var tc = this.constructor;
    if (!tc.xtypes) {
      var c = [], sc = this;
      // while (sc && sc.constructor.xtype) {
      while (sc) { // patch: if  sc.constructor has no xtype, don't stop, but just skip this class level:
        if (sc.constructor.xtype) {
          c.unshift(sc.constructor.xtype);
        }
        sc = sc.constructor.superclass;
      }
      tc.xtypeChain = c;
      tc.xtypes = c.join("/");
    }
    return tc.xtypes;
  };
  // patch for Actions being added to a Component via config's baseAction:
  Ext.Action.prototype.addComponent = Ext.Action.prototype.addComponent.createInterceptor(function(component) {
    if (component.initialConfig !== this.initialConfig) {
      // Action has not been handed in as single constructor argument, thus initialConfig has not been reused:
      Ext.applyIf(component.initialConfig, this.initialConfig);
      // replay applying config over the component:
      Ext.apply(component, component.initialConfig);
    }
  });
  // patch for Actions being copied when added to a Container:
  (function(ExtAction) {
    var Action = Ext.Action = function Action(config) {
      config.baseAction = this; // self-reference, so that button references me, not my copy!
      ExtAction.call(this, config);
    };
    Action.prototype = ExtAction.prototype;
    Action.prototype.constructor = Action;
    Action.superclass = ExtAction.superclass;
  })(Ext.Action);

  return Ext;
});
