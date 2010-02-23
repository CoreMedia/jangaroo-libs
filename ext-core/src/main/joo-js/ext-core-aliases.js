ext = Ext;
ext.Ext = Ext;
// Patch upper-case-bug of ext.util.Observable:
ext.util.Observable.prototype.hasListener = (function(oldHasListener) {
  return function(eventName) {
    return oldHasListener.call(this, eventName.toLowerCase());
  };
})(ext.util.Observable.prototype.hasListener);
