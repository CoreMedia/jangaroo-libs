package js {

/**
 * A file-like object of immutable, raw data. Blobs represent data that isn't necessarily in a JavaScript-native format.
 * The File interface is based on Blob, inheriting blob functionality and expanding it to support files on the user's
 * system.
 */
[Native("Blob")]
public class Blob {
  public native function get size(): uint;

  //noinspection ReservedWordAsName
  public native function get type(): String;

  /**
   * Returns a promise which will provide a <code>ArrayBuffer</code>
   *
   * @see js.ArrayBuffer
   */
  public native function arrayBuffer(): *;

  public native function slice(start: uint = undefined, end: uint = undefined, contentType: String = undefined): Blob;

  /**
   * Returns a readable stream.
   */
  public native function stream(): *;

  /**
   * Returns a promise which will provide a String.
   */
  public native function text(): *;
}
}
