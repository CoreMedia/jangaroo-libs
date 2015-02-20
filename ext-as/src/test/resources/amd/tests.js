require(["lib/net/jangaroo/ext-as"], function() {
  require(["as3/net/jangaroo/joounit/runner/BrowserRunner", "as3/net/jangaroo/ext/TestSuite"], function(BrowserRunner, TestSuite) {
    BrowserRunner._.main(TestSuite._);
  });
});
