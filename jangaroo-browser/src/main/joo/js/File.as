package js {

/**
 * Provides information about files and allows JavaScript in a web page to access their content.
 */
[Native("File")]
public class File extends Blob {
  public native function get lastModified(): uint;

  public native function get name(): String;
}
}
