package net.jangaroo.joounit.runner {
import flexunit.framework.TestSuite;
import flexunit.textui.TestRunner;
import flexunit.textui.XmlResultPrinter;

import js.Element;

public class BrowserRunner {

  public static function main(testSuiteName:String):void {
    RunnerUtils.load(testSuiteName, function runTests() :void{
      var suite:TestSuite = RunnerUtils.getTestSuite(testSuiteName);
      if(suite) {
        var xmlWriter:XmlResultPrinter = new XmlResultPrinter();
        TestRunner.run(suite, function():void {
          var result:String = xmlWriter.getXml();
          window["result"] = result;
          var pre:Element = window.document.createElement('pre');
          pre.appendChild(window.document.createTextNode(result));
          window.document.body.appendChild(pre);
        }, xmlWriter);
      }
    });
  }
}
}