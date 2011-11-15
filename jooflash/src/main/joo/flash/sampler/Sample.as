package flash.sampler {


/**
 * The Sample class creates objects that hold memory analysis information over distinct durations. For Flash Player debugger version only.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/sampler/Sample.html#includeExamplesSummary">View the examples</a></p>
 * @see package#getSamples()
 *
 */
public class Sample {
  /**
   * Contains information about the methods executed by Flash Player over a specified period of time. The format for the stack trace is similiar to the content shown in the exception dialog box of the Flash Player debugger version. For Flash Player debugger version only.
   */
  public native function get stack():Array;
  /**
   * The microseconds that define the duration of the Sample instance. For Flash Player debugger version only.
   */
  public native function get time():Number;
}
}
