Ext.application({
  name: "jangaroo-net unit tests",
  requires: [
    'net.jangaroo.joounit.runner.BrowserRunner',
    'net.jangaroo.net.TestSuite'
  ],

  launch: function() {
    net.jangaroo.joounit.runner.BrowserRunner.main(
            net.jangaroo.net.TestSuite
    );
  }
});
