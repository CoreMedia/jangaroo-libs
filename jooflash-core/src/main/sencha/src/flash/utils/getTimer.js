Ext.define("flash.utils.getTimer", {
  __factory__: function() {
    var startTime = new Date().getTime();
    return function () {
      return new Date().getTime() - startTime;
    };
  }
});
