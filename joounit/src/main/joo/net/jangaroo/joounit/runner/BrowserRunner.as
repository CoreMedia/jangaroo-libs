package net.jangaroo.joounit.runner {
import flexunit.textui.XmlResultPrinter;

import js.Element;

public class BrowserRunner {

  public static function main(testSuiteName:String):void {
    RunnerUtils.load(testSuiteName,   function runTests() :void{
      var xmlWriter:XmlResultPrinter = new XmlResultPrinter();
      RunnerUtils.run(testSuiteName,function():void {
        var result:String = xmlWriter.getXml();
        window["result"] = result;
        var pre:Element = window.document.createElement('pre');
        pre.appendChild(window.document.createTextNode(result));
        window.document.body.appendChild(pre);
      }, xmlWriter);
    });
  }
}
}