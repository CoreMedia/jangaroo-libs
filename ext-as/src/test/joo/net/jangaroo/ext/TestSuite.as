package net.jangaroo.ext {

import flexunit.framework.TestSuite;

public class TestSuite {

  public static function suite():flexunit.framework.TestSuite {
    var suite:flexunit.framework.TestSuite = new flexunit.framework.TestSuite(ExmlTest);
    return suite;
  }
}
}