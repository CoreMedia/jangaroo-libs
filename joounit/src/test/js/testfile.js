var Browser = require("zombie");
var assert = require("assert");

browser = new Browser({ debug: true });
browser.on("error", function(err) {
  console.log("Error:", err);
});
browser.on("loaded", function() {
  console.log("Loaded:" + browser.statusCode + ", Landed on: \"" + browser.text("title") + "\"");
});
browser.visit("http://localhost:10100/joounit/target/test-classes/?cache").then(function(){
  assert(browser.error == null);
  assert.ok(browser.success);
  console.log("correct Website found");
});
console.log('complete');