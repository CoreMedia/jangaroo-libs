/**
 * Parse the given argument String into a config object or
 * parse arguments test=<testSuiteClass> timeout=<timeout> into a config object
 * and launch a suitable <code>tests.html</code>
 */
phantom.injectJs("./phantomjs-joo-config.js");
function parseConfig(){
  var testConfig = joo._parseConfig();
  if(!testConfig['timeout']){
    testConfig['timeout'] = 10000;
  }
  if(!testConfig['freq']){
    testConfig['freq'] = 250;
  }
  if(!testConfig['outputDir']) {
    testConfig['outputDir'] = '../surefire-reports';
  }
  return testConfig;
}

function run() {
  var testConfig = parseConfig();
  joo._initWindow(testConfig);
  var page = new WebPage();

  // onerror handler doesn't work with phantomjs 1.3.0, but let's attach anyways
  page.onerror = function(e){origDie(e)};

  // Echo the output of the tests to the Standard Output
  page.onConsoleMessage = function(msg, line, source) {
    // onerror handler doesn't work, so let's check if the msg results from an exception
    var loglevel = 'info';
    if((msg && msg.indexOf("TypeError:") == 0) || (source == "undefined" && line < 1)){
      if(!testConfig.ignoreErrorMessages) {
        origDie("phantomjs> ERROR: "+ msg);
      } else {
        loglevel = 'error';
      }
    }

    console[loglevel]("phantomjs> "+ msg + " "+ source + ":"+ line);
  };

  page.onAlert = function(msg) {
    console.info("phantomjs> alert:"+msg);
  };

  if (!fs.isFile('tests.html')) {
    console.info("phantomjs> writing tests.html ...");
    // Write default tests.html invoking BrowserRunner on provided testSuiteName.
    var testHtml = fs.open("tests.html", "w");
    const h = '<html><head><script type="text/javascript" src="joo/jangaroo-application.js"></script>' +
            '<script type="text/javascript">\njoo.classLoader.run("net.jangaroo.joounit.runner.BrowserRunner", "' +
            testConfig.testSuiteName + '");\n</script>' +
            '</head><body></body></html>';
    testHtml.write(h);
    testHtml.close();
  }

  console.log("phantomjs> opening tests.html in page sandbox");
  page.open("tests.html", function(status) {
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
        console.info("phantomjs> result: \n"+resultXml);
        joo._writeTestResult(testConfig.outputDir + '/TEST-' + testConfig.testSuiteName + '.xml',resultXml);
        joo._exit(resultXml.indexOf('errors="0" failures="0"') > 0);
      });
    } else {
      origDie("Could not load tests.html");
    }
  });

  function waitForCondition(condition,callback){
    console.info("phantomjs> polling for test result every " + testConfig.freq + " ms");
    window.setInterval(function(){
      if(condition()){
        try{
          callback();
        } catch(e){
          origDie(e);
        }
      }
    },testConfig.freq);
  }
}

var origDie = die;
die = function (e){
  console.error("USAGE: phantomjs-joounit-page-runner.js  test=TestClassName [timeout=Timeout] [freq=Frequency]");
  origDie(e);
};
