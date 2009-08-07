package flexunit.textui {
import flexunit.framework.TestResult;

public interface Printer {
  function print( result:TestResult, runTime:Number ):void;
}
}