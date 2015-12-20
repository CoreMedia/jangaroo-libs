Ext.ns("AS3.flash.utils").getTimer = (function() {
  var startTime = new Date().getTime();
  function getTimer() {
    return new Date().getTime() - startTime;
  }
  return getTimer;
})();
Ext.ClassManager.triggerCreated("AS3.flash.utils.getTimer");
