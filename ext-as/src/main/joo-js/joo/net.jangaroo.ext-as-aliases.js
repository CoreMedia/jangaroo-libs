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
    Ext.applyIf(component, this.initialConfig);
    component.disabled = this.initialConfig.disabled; // special case: 'disabled' should always be determined by Action! 
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
  var TYPE_TO_TYPE_ATTRIBUTE = {
    'component': 'xtype',
    'plugin': 'ptype',
    'layout': 'type'
  };

  var EXT_CONFIG_PACKAGE_PATTERN = /^ext\.config\.([a-z]+)$/;

  return function joo_meta_ExtConfig(classDeclaration/*:joo.JooClassDeclaration*/,
                                     memberDeclaration/*:joo.MemberDeclaration*/,
                                     parameters/*:Object*/) {
    var targetClassName = parameters['target'];
    var type = parameters['type'] || 'component';
    // determine type attribute name from annotation parameter "type":
    var typeAttribute = TYPE_TO_TYPE_ATTRIBUTE[type];
    if (!typeAttribute) {
      throw new ArgumentError("Unknown type attribute value '" + type + "' in ExtConfig annotation of class " + classDeclaration.fullClassName + ".");
    }
    if (!classDeclaration.isComplete()) {
      // called before completion: only add target class dependency!
      classDeclaration.getDependencies().push(targetClassName);
    } else {
      // called within init:
      // special case original Ext config classes:
      var typeName = classDeclaration.fullClassName;
      var result = typeName.match(EXT_CONFIG_PACKAGE_PATTERN); // if it is an Ext config class...
      if (result) {
        typeName = result[1]; // ...use the simple class name (without namespace/package)!
      }
      // add [x|p|]type attribute to prototype and as a static field:
      classDeclaration.constructor_.prototype[typeAttribute] = typeName;
      classDeclaration.constructor_[typeAttribute] = typeName;
      var targetClass = joo.getQualifiedObject(targetClassName);
      switch (type) {
        case 'component': ext.ComponentMgr.registerType(typeName, targetClass); break;
        case 'plugin':    ext.ComponentMgr.registerPlugin(typeName, targetClass); break;
        // TODO: anything to do for 'layout' or 'action'?
      }
    }
  }
})();