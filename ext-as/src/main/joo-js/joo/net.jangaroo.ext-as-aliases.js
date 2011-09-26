ext = Ext;
ext.Ext = Ext;
ext.ExtError = Ext.Error;
ext.listview = Ext.ListView;
ext.panel = Ext.Panel;
ext.splitbar = Ext.SplitBar;
ext.toolbar = Ext.Toolbar;
ext.updater = Ext.Updater;
ext.data.api = Ext.data.Api;
ext.data.dataproxy = Ext.data.DataProxy;
ext.data.datareader = Ext.data.DataReader;
ext.data.jsonreader = Ext.data.JsonReader;
ext.data.store = Ext.data.Store;
ext.form.action = Ext.form.Action;
ext.layout.borderlayout = Ext.layout.BorderLayout;
ext.util.DateUtil = Date;
// Forward all additional Date instance methods as static methods, since AS3 does not allow to extend a final class:
Ext.iterate({getTimezone: 0, getDayOfYear:0, getWeekOfYear:0, isLeapYear:0, getFirstDayOfMonth:0, getLastDayOfMonth:0,
  getFirstDateOfMonth:0, getLastDateOfMonth:0, getDaysInMonth:0, getSuffix:0, clone:0, isDST:0,
  getGMTOffset:1, clearTime:1, add:2, between:2, format:1},
  function(method, arity) {
    // We could do this in a general fashion, but that would mean using apply() combined with Array#slice(),
    // which is more runtime overhead.
    ext.util.DateUtil[method] =
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
ext.util.StringUtil = String;
// aliases for overloaded methods, renamed in Ext AS API:
ext.menu.Menu.prototype.showMenu = Ext.menu.Menu.prototype.show;
ext.Window.prototype.showWindow = Ext.Window.prototype.show;
ext.Component.prototype.addClasses = Ext.Component.prototype.addClass;
ext.Component.prototype.removeClasses = Ext.Component.prototype.removeClass;
// patch for Actions being added to a Component via config's baseAction:
ext.Action.prototype.addComponent = Ext.Action.prototype.addComponent.createInterceptor(function(component) {
  if (component.initialConfig !== this.initialConfig) {
    // Action has not been handed in as single constructor argument, thus initialConfig has not been reused:
    Ext.applyIf(component.initialConfig, this.initialConfig);
    // replay applying config over the component:
    Ext.apply(component, component.initialConfig);
  }
});
// patch for Actions being copied when added to a Container:
(function(ExtAction) {
  var Action = ext.Action = function Action(config) {
    config.baseAction = this; // self-reference, so that button references me, not my copy!
    ExtAction.call(this, config);
  };
  Action.prototype = ExtAction.prototype;
  Action.prototype.constructor = Action;
  Action.superclass = ExtAction.superclass;
})(Ext.Action);

// ---- handle ExtConfig annotation ----
joo.getOrCreatePackage("joo.meta").ExtConfig = (function(){

  var REGISTRATION_BY_TYPE = {
    xtype: ext.ComponentMgr.registerType,
    ptype: ext.ComponentMgr.registerPlugin,
    type:  function(layoutName, targetClass) {
      ext.Container.LAYOUTS[layoutName] = targetClass;
    }
  };

  function findTypeAttribute(parameters) {
    for (var m in parameters) {
      if (m in REGISTRATION_BY_TYPE) {
        return m;
      }
    }
    return null;
  }

  return function joo_meta_ExtConfig(classDeclaration/*:joo.JooClassDeclaration*/,
                                     memberDeclaration/*:joo.MemberDeclaration*/,
                                     parameters/*:Object*/) {
    var targetClassName = parameters['target'];
    var typeAttribute = findTypeAttribute(parameters);
    if (typeAttribute) { // if any type attribute is set...
      classDeclaration.getDependencies().push(targetClassName); // ...add target class dependency
      classDeclaration.addStateListener(joo.JooClassDeclaration.STATE_EVENT_AFTER_INIT_MEMBERS, function() {
        // config class is now initialized:
        var typeName = parameters[typeAttribute] || classDeclaration.fullClassName;
        // add [x|p|]type attribute to prototype and as a static field of the config class:
        classDeclaration.constructor_.prototype[typeAttribute] =
          classDeclaration.constructor_[typeAttribute] = typeName;

        var targetClass = joo.classLoader.getRequiredClassDeclaration(targetClassName);
        if (targetClass.addStateListener) { // is it a non-native Jangaroo class? Ext JS standard componentes are already registered!
          if (targetClass.state >= 4) { // TODO: workaround for JooClassDeclaration#addStateListener() bug; revert when fixed!
            REGISTRATION_BY_TYPE[typeAttribute](typeName, targetClass.constructor_);
          } else {
            REGISTRATION_BY_TYPE[typeAttribute](typeName, targetClass.publicConstructor);

            targetClass.addStateListener(joo.JooClassDeclaration.STATE_EVENT_AFTER_INIT_MEMBERS, function() {
              // re-register the now created "real" constructor:
              REGISTRATION_BY_TYPE[typeAttribute](typeName, targetClass.constructor_);
            });
          }
        }
      });
    }
  };
})();