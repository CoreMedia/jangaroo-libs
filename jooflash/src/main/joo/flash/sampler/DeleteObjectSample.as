package flash.sampler {


/**
 * The DeleteObjectSample class represents objects that are created within a <code>getSamples()</code> stream; each DeleteObjectSample object corresponds to a NewObjectSample object. For Flash Player debugger version only.
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/sampler/DeleteObjectSample.html#includeExamplesSummary">View the examples</a></p>
 * @see package#getSamples()
 * @see http://help.adobe.com/en_US/Flex/4.0/UsingFlashBuilder/WS6f97d7caa66ef6eb1e63e3d11b6c4d0d21-7edf.html How the Flex profiler works
 *
 */
public final class DeleteObjectSample extends Sample {
  /**
   * The unique identification number that matches up with a NewObjectSample's identification number. For Flash Player debugger version only.
   */
  public function get id():Number {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * The size of the DeleteObjectSample object before it is deleted. For Flash Player debugger version only.
   */
  public function get size():Number {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
