package net.jangaroo.joounit.runner {
import flexunit.framework.TestSuite;

import joo.DynamicClassLoader;
import joo.getQualifiedObject;

internal class RunnerUtils {

  /**
   * Load class <code>testSuiteName</code> calling <code>onSuiteLoaded</code> when
   * the class is loaded.
   * @param testSuiteName
   * @param onSuiteLoaded
   */
  internal static function load(testSuiteName:String, onSuiteLoaded:Function):void{
    var classLoader:DynamicClassLoader = DynamicClassLoader.INSTANCE;
    classLoader.debug = true;
    classLoader.classLoadErrorHandler = function(fullClassName:String, url:String):void {
      window.classLoadingError = "Class " + fullClassName + " not found at URL [" + url + "].";
    };
    classLoader.import_(testSuiteName);
    classLoader.complete(onSuiteLoaded);
  }

  /**
   * Obtain test suite <code>testSuiteName</code>
   * @param testSuiteName
   * @return
   */
  internal static function getTestSuite(testSuiteName:String):TestSuite {
    var testSuite:Function = getQualifiedObject(testSuiteName);
    if (!(typeof testSuite == 'function' && typeof testSuite['suite'] == 'function')) {
      window.classLoadingError = testSuiteName + " is not a Class or does not have a static method 'suite'.";
      trace("[WARN]",window.classLoadingError);
      return null;
    }
    return testSuite['suite']();
  }
}
}