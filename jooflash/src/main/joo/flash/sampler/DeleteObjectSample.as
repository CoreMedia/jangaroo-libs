package flash.sampler {


/**
 * The DeleteObjectSample class represents objects that are created within a <code>getSamples()</code> stream; each DeleteObjectSample object corresponds to a NewObjectSample object. For Flash Player debugger version only.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/sampler/DeleteObjectSample.html#includeExamplesSummary">View the examples</a></p>
 * @see package#getSamples()
 *
 */
public final class DeleteObjectSample extends Sample {
  /**
   * The unique identification number that matches up with a NewObjectSample's identification number. For Flash Player debugger version only.
   * @see NewObjectSample#id
   *
   */
  public native function get id():Number;
  /**
   * The size of the DeleteObjectSample object before it is deleted. For Flash Player debugger version only.
   * @see NewObjectSample#id
   *
   */
  public native function get size():Number;

}
}
