Ext.require("AS3_override");
Ext.define("AS3.uint", {
  __factory__: function () {
    var uint_ = function (num) {
      return num >>> 0;
    };
    uint_.MAX_VALUE = 4294967295;
    uint_.MIN_VALUE = 0;
    uint_.$className = "AS3.uint";
    uint_.__isInstance__ = function (object) {
      return (object instanceof Number || typeof object === 'number') &&
              object >>> 0 === object + 0; // "+ 0" converts Number to number!
    };
    return uint_;
  }
});
