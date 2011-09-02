ext = Ext;
ext.Ext = Ext;
ext.picker = Ext.Picker;
ext.carousel = Ext.Carousel;
ext.util.Observable.prototype.hasListener = (function(oldHasListener) {
  return function(name) {
    return this.events[name] && oldHasListener(name);
  };
})(ext.util.Observable.prototype.hasListener);
ext.util.DateUtil = Date;
// Forward all additional Date instance methods as static methods, since AS3 does not allow to extend a final class:
ext.util.StringUtil = String;
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

// ---- handle ExtConfig annotation ----
joo.getOrCreatePackage("joo.meta").ExtConfig =
  function joo_meta_ExtConfig(classDeclaration/*:joo.JooClassDeclaration*/,
                              memberDeclaration/*:joo.MemberDeclaration*/,
                              parameters/*:Object*/) {
    var targetClassName = parameters.target;
    if ('xtype' in parameters) { // if xtype is set...
      classDeclaration.getDependencies().push(targetClassName); // ...add target class dependency
      classDeclaration.addStateListener(joo.JooClassDeclaration.STATE_EVENT_AFTER_INIT_MEMBERS, function() {
        // config class is now initialized:
        var typeName = parameters.xtype || classDeclaration.fullClassName;
        // add xtype attribute to prototype and as a static field of the config class:
        classDeclaration.constructor_.prototype.xtype =
          classDeclaration.constructor_.xtype = typeName;

        var targetClass = joo.classLoader.getRequiredClassDeclaration(targetClassName);
        if (targetClass.addStateListener) { // is it a non-native Jangaroo class? Ext JS standard componentes are already registered!
          ext.ComponentMgr.registerType(typeName, targetClass.publicConstructor);

          targetClass.addStateListener(joo.JooClassDeclaration.STATE_EVENT_AFTER_INIT_MEMBERS, function() {
            // re-register the now created "real" constructor:
            ext.ComponentMgr.registerType(typeName, targetClass.constructor_);
          });
        }
      });
    }
  };
