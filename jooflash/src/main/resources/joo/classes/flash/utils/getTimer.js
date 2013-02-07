define(function() {
  var startTime = new Date().getTime();
  function getTimer() {
    return new Date().getTime() - startTime;
  }
  return getTimer;
});
