package js {

/**
 * A file-like object of immutable, raw data. Blobs represent data that isn't necessarily in a JavaScript-native format.
 * The File interface is based on Blob, inheriting blob functionality and expanding it to support files on the user's
 * system.
 */
[Native("Blob")]
public class Blob {
  public native function get size(): Number;

  //noinspection ReservedWordAsName
  public native function get type(): String;

  /**
   * Returns a promise which will provide a {@link ArrayBuffer}
   */
  public native function arrayBuffer(): *;

  public native function slice(start: Number = undefined, end: Number = undefined, contentType: String = undefined): Blob;

  /**
   * Returns a readable stream.
   */
  public native function stream(): *;

  /**
   * Returns a promise which will provide a {@link String}
   */
  public native function text(): *;
}
}
