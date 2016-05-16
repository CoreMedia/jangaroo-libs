Ext.application({
  name: "joounit unit tests",
  requires: [
    'net.jangaroo.joounit.runner.BrowserRunner',
    'flexunit.framework.AllFrameworkTests'
  ],

  launch: function() {
    net.jangaroo.joounit.runner.BrowserRunner.main(
            flexunit.framework.AllFrameworkTests
    );
  }
});
