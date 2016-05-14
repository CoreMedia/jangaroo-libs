Ext.application({
  name: "jangaroo-net unit tests",
  requires: [
    'AS3.net.jangaroo.joounit.runner.BrowserRunner',
    'AS3.net.jangaroo.net.TestSuite'
  ],

  launch: function() {
    AS3.net.jangaroo.joounit.runner.BrowserRunner.main(
            AS3.net.jangaroo.net.TestSuite
    );
  }
});
