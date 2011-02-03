ext = Ext;
ext.Ext = Ext;
ext.ExtError = Ext.Error;
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
ext.util.DateUtil = Date;
// Forward all additional Date instance methods as static methods, since AS3 does not allow to extend a final class:
Ext.iterate({getTimezone: 0, getDayOfYear:0, getWeekOfYear:0, isLeapYear:0, getFirstDayOfMonth:0, getLastDayOfMonth:0,
  getFirstDateOfMonth:0, getLastDateOfMonth:0, getDaysInMonth:0, getSuffix:0, clone:0, isDST:0,
  getGMTOffset:1, clearTime:1, add:2, between:2, format:1},
  function(method, arity) {
    // We could do this in a general fashion, but that would mean using apply() combined with Array#slice(),
    // which is more runtime overhead.
    Date[method] =
      arity === 0 ?
        function(date) {
          return date[method]();
        }
        : arity === 1 ?
        function(date, arg1) {
          return date[method](arg1);
        }
        : // arity can only be 2
        function(date, arg1, arg2) {
          return date[method](arg1, arg2);
        };
  });
ext.util.StringUtil = String;
// aliases for overloaded methods, renamed in Ext AS API:
ext.menu.Menu.prototype.showMenu = Ext.menu.Menu.prototype.show;
ext.Component.prototype.addClasses = Ext.Component.prototype.addClass;
ext.Component.prototype.removeClasses = Ext.Component.prototype.removeClass;
