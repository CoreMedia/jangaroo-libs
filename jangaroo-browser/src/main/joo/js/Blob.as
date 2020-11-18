package js {

/**
 * A file-like object of immutable, raw data. Blobs represent data that isn't necessarily in a JavaScript-native format.
 * The File interface is based on Blob, inheriting blob functionality and expanding it to support files on the user's
 * system.
 */
[Native("Blob")]
public class Blob {

  /**
   * Returns a newly created Blob object which contains a concatenation of all of the data in the array passed into the constructor.
   *
   * @param array An Array of ArrayBuffer, ArrayBufferView, Blob, USVString objects, or a mix of any of such objects,
   *              that will be put inside the Blob. USVString objects are encoded as UTF-8.
   * @param options An optional object of type BlobPropertyBag which may specify any of the following properties:<ul>
   *                  <li><code>type</code> - The MIME type of the data that will be stored into the blob. The default
   *                                          value is the empty string, ("").</li>
   *                  <li><code>endings</code> - How to interpret newline characters (\n) within the contents, if the
   *                                             data is text. The default value, transparent, copies newline characters
   *                                             into the blob without changing them. To convert newlines to the host
   *                                             system's native convention, specify the value native.
   *                </ul>
   */
  public native function Blob(array:Array, options:*);

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
