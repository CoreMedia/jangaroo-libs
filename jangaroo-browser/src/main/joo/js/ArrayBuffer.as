package js {

/**
 * Represents a raw buffer of binary data, which is used to store data for the
 * different typed arrays. ArrayBuffers cannot be read from or written to directly,
 * but can be passed to a typed array or DataView Object to interpret the raw
 * buffer as needed.
 */
[Native("ArrayBuffer")]
public class ArrayBuffer {
  /**
   * Read-only. The length of the ArrayBuffer (in bytes).
   */
  public native function get byteLength(): Number;

  /**
   * Returns a section of an ArrayBuffer.
   */
  public native function slice(begin: Number, end: Number = undefined): ArrayBuffer;
}
}
