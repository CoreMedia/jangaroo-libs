package flash.sampler {


/**
 * The StackFrame class provides access to the properties of a data block containing a function. For Flash Player debugger version only.
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
  public native function get file():String;
  /**
   * The line number for the function in the SWF file being debugged. For Flash Player debugger version only.
   */
  public native function get line():uint;
  /**
   * The function name in the stack frame. For Flash Player debugger version only.
   */
  public native function get name():String;
  /**

   * The identifier for the script function in the application being profiled.
   */
  public native function get scriptID():Number;
}
}
