package net.jangaroo.joounit.runner {
import flexunit.textui.TestRunner;
import flexunit.textui.XmlResultPrinter;

import joo.DynamicClassLoader;
import joo.getQualifiedObject;

import js.Element;

public class BrowserRunner {

  public static function main(testSuiteName:String):void {
    var classLoader:DynamicClassLoader = DynamicClassLoader.INSTANCE;
    classLoader.debug = true;
    classLoader.classLoadErrorHandler = function(fullClassName:String, url:String):void {
      window.classLoadingError = "Class " + fullClassName + " not found at URL [" + url + "].";
    };
    classLoader.import_(testSuiteName);
    classLoader.complete(function():void {
      var testSuite:Function = getQualifiedObject(testSuiteName);
      if (!(typeof testSuite == 'function' && typeof testSuite['suite'] == 'function')) {
        window.classLoadingError = testSuiteName + " is not a Class or does not have a static method 'suite'.";
        return;
      }
      var xmlWriter:XmlResultPrinter = new XmlResultPrinter();
      TestRunner.run(testSuite['suite'](), function():void {
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