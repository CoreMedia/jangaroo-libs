package net.jangaroo.phantomjs
{
import flexunit.framework.*;

public class SimpleSuite
   {
   	public static function suite() : TestSuite
   	{
   		var testSuite:TestSuite = new TestSuite();
   		testSuite.addTestSuite( TestTestCase );
   		return testSuite;
   	}
   }
}