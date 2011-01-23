package flash.sampler {


/**
 * The StackFrame class provides access to the properties of a data block containing a function. For Flash Player debugger version only.
 * @see http://help.adobe.com/en_US/Flex/4.0/UsingFlashBuilder/WS6f97d7caa66ef6eb1e63e3d11b6c4d0d21-7edf.html How the Flex profiler works
 *
 */
public final class StackFrame {
  /**
   * Converts the StackFrame to a string of its properties.
   * @return A string containing the <code>name</code> property, and optionally the <code>file</code> and <code>line</code> properties (if a SWF file is being debugged) of the StackFrame object. For Flash Player debugger version only.
   *
   */
  public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The file name of the SWF file being debugged. For Flash Player debugger version only.
   */
  public function get file():String {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * The line number for the function in the SWF file being debugged. For Flash Player debugger version only.
   */
  public function get line():uint {
    throw new Error('not implemented'); // TODO: implement!
  }
  /**
   * The function name in the stack frame. For Flash Player debugger version only.
   */
  public function get name():String {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
