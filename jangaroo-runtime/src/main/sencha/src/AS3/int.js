Ext.require("AS3_override");
Ext.define("AS3.int", {
  __factory__: function() {
    var int_ = function(num) {
      return num >> 0;
    };
    int_.MAX_VALUE =  2147483647;
    int_.MIN_VALUE = -2147483648;
    int_.$className = "AS3.int";
    int_.__isInstance__ = function(object) {
      return (object instanceof Number || typeof object === 'number') &&
              object >> 0 === object + 0; // "+ 0" converts Number to number!
    };
    return int_;
  }
});
