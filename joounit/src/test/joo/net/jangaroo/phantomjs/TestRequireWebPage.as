package net.jangaroo.phantomjs {

import flexunit.framework.TestCase;
import flexunit.framework.TestSuite;

public class TestRequireWebPage extends TestCase {

  public function testWebPageLoaded() :void {
    assertNotNull(window.location.href.match(/^.*?:\/\/[^\/]*/))
  }

  public static function suite():TestSuite {
    return new TestSuite(TestRequireWebPage);
  }
}
}