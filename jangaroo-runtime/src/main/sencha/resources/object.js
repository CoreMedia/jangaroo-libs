if (typeof Object.values !== "function") {
  Object.defineProperty(Object, "values", {
    value: function (obj) {
      "use strict";
      if (obj === null || obj === undefined) {
        throw new TypeError("Cannot convert undefined or null to object");
      }
      return Object.keys(obj).map(function(e) {
        return obj[e];
      });
    },
    writable: true,
    configurable: true
  });
}
if (typeof Object.assign !== "function") {
  // Must be writable: true, enumerable: false, configurable: true
  Object.defineProperty(Object, "assign", {
    value: function assign(target, varArgs) { // .length of function is 2
      "use strict";
      if (target === null || target === undefined) {
        throw new TypeError("Cannot convert undefined or null to object");
      }

      var to = Object(target);

      for (var index = 1; index < arguments.length; index++) {
        var nextSource = arguments[index];

        if (nextSource !== null && nextSource !== undefined) {
          for (var nextKey in nextSource) {
            // Avoid bugs when hasOwnProperty is shadowed
            if (Object.prototype.hasOwnProperty.call(nextSource, nextKey)) {
              to[nextKey] = nextSource[nextKey];
            }
          }
        }
      }
      return to;
    },
    writable: true,
    configurable: true
  });
}