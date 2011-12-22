package net.jangaroo.phantomjs {
import flexunit.framework.TestCase;

public class TestRequireWebPage extends TestCase {

  public function testWebPageLoaded() :void {
    assertNotNull(window.location.href.match(/^.*?:\/\/[^\/]*/))
  }
}
}