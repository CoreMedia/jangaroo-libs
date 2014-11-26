require(["lib/net/jangaroo/joounit", "lib/net/jangaroo/jangaroo-net"], function() {
require(["as3/net/jangaroo/joounit/runner/BrowserRunner", "as3/net/jangaroo/net/TestSuite"], function(BrowserRunner, TestSuite) {
  BrowserRunner._.main(TestSuite._);
});
});
