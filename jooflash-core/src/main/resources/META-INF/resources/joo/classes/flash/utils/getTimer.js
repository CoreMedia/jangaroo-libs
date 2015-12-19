Ext.ns("flash.utils").getTimer = (function() {
  var startTime = new Date().getTime();
  function getTimer() {
    return new Date().getTime() - startTime;
  }
  return getTimer;
})();
Ext.ClassManager.triggerCreated("flash.utils.getTimer");
