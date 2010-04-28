ext = Ext;
ext.Ext = Ext;
ext.listview = Ext.ListView;
ext.panel = Ext.Panel;
ext.splitbar = Ext.SplitBar;
ext.toolbar = Ext.Toolbar;
ext.updater = Ext.Updater;
ext.data.api = Ext.data.Api;
ext.data.dataproxy = Ext.data.DataProxy;
ext.data.datareader = Ext.data.DataReader;
ext.data.jsonreader = Ext.data.JsonReader;
ext.data.store = Ext.data.Store;
ext.form.action = Ext.form.Action;
ext.layout.borderlayout = Ext.layout.BorderLayout;
// Patch upper-case-bug of ext.util.Observable:
ext.util.Observable.prototype.hasListener = (function(oldHasListener) {
  return function(eventName) {
    return oldHasListener.call(this, eventName.toLowerCase());
  };
})(ext.util.Observable.prototype.hasListener);
