package net.jangaroo.phantomjs
{
import flexunit.framework.*;

public class AllTests
   {
   	public static function suite() : TestSuite
   	{
   		var testSuite:TestSuite = AllFrameworkTests.suite();
   		
   		testSuite.addTestSuite( TestRequireWebPage );

   		return testSuite;
   	}
   }
}