(function() {
function isGetterOrSetter(object, propertyName) {
  if (typeof Object.prototype.__lookupGetter__!="function")
    return false;
  return object.__lookupGetter__(propertyName) || object.__lookupSetter__(propertyName);
}
var flash_utils = joo.getOrCreatePackage("flash.utils");
flash_utils.getQualifiedClassName = function getQualifiedClassName(value) {
      var type = typeof value=="function" ? value : value.constructor;
      return typeof type["$class"]=="object" ? type["$class"]["fullClassName"].replace(/\.([^\.]+$)/,"::$1") : String(type);
    };
flash_utils.describeType = function(value) {
      var type = typeof value=="function" ? value : value.constructor;
      // fake collection:
      var len = 0;
      var methods = {
        length: function() {
          return len;
        }
      };
      if (type && type.prototype) {
        for (var p in type.prototype) {
          if (p.match(/^[a-zA-Z_]/) && !isGetterOrSetter(type.prototype,p)
              && typeof type.prototype[p]=="function") {
            methods[len++] = p;
          }
        }
      }
      return {
        attribute: function(attr) { if(attr=="name") return flash.utils.getQualifiedClassName(value); },
        method: {
          "@name": methods
        }
      };
    };
var startTime = new Date().getTime();
flash_utils.getTimer = function() {
      return new Date().getTime()-startTime;
};
})();
