var testConfig = {
  timeout: 3000,
  freq: 250
};
function doTryCatch(f){try {return f();} catch(e){error(e);}}
function error(msg){console.error("phantomjs-joounit> "+ msg);phantom.exit(1);}
doTryCatch(
        function (){
          for(var i = 0; i < phantom.args.length ; i++){
            var arg = phantom.args[i];
            if(arg.indexOf('test=') > -1){
              testConfig.testSuiteName = arg.substring(5);
            } else if(arg.indexOf('timeout=') > -1){
              testConfig.timeout = parseInt(arg.substring(8));
            } else if(arg.indexOf('freq=') > -1){
              testConfig.freq = parseInt(arg.substring(5));
            } else {
              console.error("unsupported argument: " + arg);
            }
          }

          if(testConfig.testSuiteName === undefined) {
            error("USAGE: phantomjs-joounit-page-runner.js test=TestName [timeout=Timeout] [freq=Frequency]");
          }
        }
);

var joo = {
  debug: false,
  _loadScript:function(src/*:String*/){
    // console.log("loading script '" + src + "'");
    phantom.injectJs(src);
  },
  loadScriptAsync:this._loadScript,
  baseUrl:""
};
phantom.injectJs("joo/jangaroo-application.js");

var fs = require('fs');
var outputDir = '../surefire-reports';

window.setTimeout(function(){
  error("test timed out after " + testConfig.timeout + " ms");
},testConfig.timeout);
runTest();

function runTest() {
  var page = new WebPage();

  // Echo the output of the tests to the Standard Output
  page.onConsoleMessage = function(msg, source, linenumber) {
    console.log(msg);
  };

  if (!fs.isFile('tests.html')) {
    // Write default tests.html invoking BrowserRunner on provided testSuiteName.
    var testHtml = fs.open("tests.html", "w");
    const h = '<html><head><script type="text/javascript" src="joo/jangaroo-application.js"></script>' +
            '<script type="text/javascript">\njoo.classLoader.run("net.jangaroo.joounit.runner.BrowserRunner", "' +
            testConfig.testSuiteName + '");\n</script>' +
            '</head><body></body></html>';
    testHtml.write(h);
    testHtml.close();
  }

  page.open("tests.html", function(status) {
    console.log("runner> status: "+status);
    if (status === "success") {
      waitForCondition(function() { // wait for this to be true
        return page.evaluate(function() {
          return typeof(window["result"]) !== "undefined";
        });
      }, function() { // once done...
        // Retrieve the result of the test suite
        var resultXml = page.evaluate(function(){
          return window["result"];
        });
        console.log("result: \n"+resultXml);
        writeResult(resultXml);
        var success = (resultXml.indexOf('errors="0" failures="0"') > 0);
        phantom.exit(success ? 0 : 1);
      });
    } else {
      error("Could not load tests.html");
    }
  });

  function waitForCondition(condition,callback){
    window.setInterval(function(){if(condition()){doTryCatch(callback);}},testConfig.freq);
  }
}

function writeResult(testResult){
  doTryCatch(
          function(){
            var f = fs.open(outputDir + '/TEST-' + testConfig.testSuiteName + '.xml', "w");
            f.write(testResult);
            f.close();
          });
}