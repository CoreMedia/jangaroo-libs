Ext.application({
  name: "joounit unit tests",
  requires: [
    'AS3.net.jangaroo.joounit.runner.BrowserRunner',
    'AS3.flexunit.framework.AllFrameworkTests'
  ],

  launch: function() {
    AS3.net.jangaroo.joounit.runner.BrowserRunner.main(
            AS3.flexunit.framework.AllFrameworkTests
    );
  }
});
