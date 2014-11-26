require(["lib/net/jangaroo/joounit"], function() {
  require(["as3/net/jangaroo/joounit/runner/BrowserRunner", "as3/flexunit/framework/AllFrameworkTests"], function(BrowserRunner, AllFrameworkTests) {
    BrowserRunner._.main(AllFrameworkTests._);
  });
});