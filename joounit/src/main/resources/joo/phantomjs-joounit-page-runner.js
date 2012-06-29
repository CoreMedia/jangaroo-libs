/**
 * Parse config object and either launch existing
 * <code>tests.html</code> or generate
 * a tests html file to load a test suite in a sandbox.
 */
phantom.injectJs("./phantomjs-joo-config.js");
joo._usageHint = "USAGE: phantomjs-joounit-page-runner.js  {testSuiteName:<TestSuiteName>, outputTestResult:<OutputTestResult>, timeout:<Timeout>, freq:<Frequency>}";

const joounit = {
  writeTestHtml: function (testHtmlName, testConfig) {
    // Write html file invoking BrowserRunner on provided testSuiteName.
    var testHtml = '<html><head>\n<script type="text/javascript" src="joo/jangaroo-application.js"></script>\n' +
            '<script type="text/javascript" src="joo-test-addon.js"></script>\n' +
            '<script type="text/javascript">\n' +
            'joo._outputTestResult = function(s){alert(s)};\n' +
            'joo.classLoader.run("net.jangaroo.joounit.runner.BrowserRunner",\n' +
            '{testSuiteName:"' + testConfig.testSuiteName + '"';
    if(testConfig.outputTestResult){
      testHtml = testHtml + ',\n outputTestResult: ' + testConfig.outputTestResult;
    }
    // end classLoader.run
    testHtml = testHtml + '\n});\n</script></head>\n<body></body>\n</html>';
    joo._writeToFile(testHtmlName, testHtml);
    // also write addon file
    const addonFileName = 'joo-test-addon.js';
    if(!fs.isFile(addonFileName)){
      joo._writeToFile(addonFileName, 'joo._exit = function(b){alert("javascript:joo._exit("+b+")");}');
    }
  },
  setupPage: function (testConfig) {
    var page = new WebPage();

    // onerror handler doesn't work with phantomjs 1.3.0, but let's attach anyways
    page.onerror = function(e){joo._die(e)};

    // Echo the output of the tests to the Standard Output
    page.onConsoleMessage = function(msg, line, source) {
      // onerror handler doesn't work, so let's check if the msg results from an exception
      var loglevel = 'info';
      if((msg && msg.indexOf("TypeError:") == 0) || (source == "undefined" && line < 1)){
        if(!testConfig.ignoreErrorMessages) {
          joo._die("phantomjs> ERROR: "+ msg);
        } else {
          loglevel = 'error';
        }
      }

      console[loglevel]("phantomjs> "+ msg + " "+ source + ":"+ line);
    };

    page.onAlert = function(msg) {
      if(msg.indexOf('javascript:') == 0){
        const script = msg.substring(11);
        console.info("phantomjs> evaluating "+script);
        eval(script);
      } else {
        console.error("phantomjs> alert:"+msg);
      }
    };
    return page;
  }
};

(function () {
  const config = joo._parseConfig();
  joo._initWindow(config);
  var page = joounit.setupPage(config);

  var testHtmlName = 'tests.html';
  if(!fs.isFile(testHtmlName)) {
    testHtmlName = config.testSuiteName + '.html';
    if(!fs.isFile(testHtmlName)){
      joounit.writeTestHtml(testHtmlName, config);
    }
  }

  const testHtmlUrl = "file:///"+ fs.workingDirectory+ "/"+ testHtmlName;
  console.info("phantomjs> opening " + testHtmlUrl + " in page sandbox");
  page.open(testHtmlUrl, function(status) {
      if (status === "success") {
        console.info("phantomjs> successfully loaded " + testHtmlName + " in page sandbox");
        if(testHtmlName === 'tests.html' && window['testInterval'] === undefined){
          const freq = config.freq ? config.freq : 250;
          console.info("phantomjs> polling for test result every " + freq + " ms");

          window['testInterval'] = window.setInterval(function() {
            // wait for this to be true
            if(page.evaluate(function() {return typeof(window["result"]) !== "undefined";})) {
              // once done...
              try{
                // Retrieve the result of the test suite
                var resultXml = page.evaluate(function(){return window["result"];});

                if(config.outputTestResult){
                  config.outputTestResult(resultXml);
                } else {
                  console.info("phantomjs> result: \n"+resultXml);
                }
                window.clearInterval(window['testInterval']);
                phantom.exit(0);
              } catch(e){
                joo._die(e);
              }
            }
          }, freq);
        }
      } else {
        joo._die("Could not load "+ testHtmlName);
      }
  });
})();