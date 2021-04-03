package js {

/**
 * The FormData interface provides a way to easily construct a set of key/value pairs representing form fields and their
 * values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would
 * use if the encoding type were set to "multipart/form-data".
 *
 * You can also pass it directly to the <code>URLSearchParams</code> constructor if you want to generate query
 * parameters in the way a &lt;form> would do if it were using simple GET submission.
 *
 * An object implementing FormData can directly be used in a for...of structure, instead of entries(): for (var p of
 * myFormData) is equivalent to for (var p of myFormData.entries()).
 *
 * @see js.URLSearchParams
 */
[Native("FormData")]
public class FormData {

  /**
   * Creates a new FormData object.
   * @param form
   */
  public native function FormData(form: HTMLFormElement = undefined);

  /**
   * Appends a new value onto an existing key inside a FormData object, or adds the key if it does not already exist.
   *
   * @param name The name of the field whose data is contained in value.
   * @param value The field's value. This can be a String or <code>Blob</code> (including subclasses such as
   *              <code>File</code>). If none of these are specified the value is converted to a string.
   * @param fileName The filename reported to the server (a String), when a <code>Blob</code> or <code>File</code> is
   *                 passed as the second parameter. The default filename for <code>Blob</code> objects is "blob". The
   *                 default filename for <code>File</code> objects is the file's filename.
   *
   * @see js.Blob
   * @see js.File
   */
  public native function append(name: String, value: *, fileName: String = undefined): void;

  /**
   * Deletes a key/value pair from a FormData object.
   *
   * Aliased by Jangaroo with an underscore suffix to avoid clash with ActionScript keyword
   * <code>delete</code>. To make this alias work, generated JavaScript calling this API
   * uses 'delete'.
   *
   * @param name The name of the key you want to delete.
   */
  [Native("delete")]
  public native function delete_(name: String): void;

  /**
   * Returns the first value associated with a given key from within a FormData object.
   *
   * @param name A String representing the name of the key you want to retrieve.
   * @return A String or <code>File</code> containing the value. If the key doesn't exist, the method returns null.
   *
   * @see js.File
   */
  public native function get(name: String): *;

  /**
   * Returns an array of all the values associated with a given key from within a FormData.
   * @param name A String representing the name of the key you want to retrieve.
   * @return An array of Strings or <code>File</code>s whose key matches the value passed in the name parameter. If the
   *         key doesn't exist, the method returns an empty list.
   *
   * @see js.File
   */
  public native function getAll(name: String): Array;

  /**
   * Returns a boolean stating whether a FormData object contains a certain key.
   *
   * @param name A String representing the name of the key you want to test for.
   * @return TRUE if the form contains the key, otherwise FALSE
   */
  public native function has(name: String): Boolean;

  /**
   * Sets a new value for an existing key inside a FormData object, or adds the key/value if it does not already exist.
   *
   * @param name The name of the field whose data is contained in value.
   * @param value The field's value. This can be a String or <code>Blob</code> (including subclasses such as
   *              <code>File</code>). If none of these are specified the value is converted to a String.
   * @param fileName The filename reported to the server (a String), when a <code>Blob</code> or <code>File</code> is
   *                 passed as the second parameter. The default filename for <code>Blob</code> objects is "blob". The
   *                 default filename for <code>File</code> objects is the file's filename.
   *
   * @see js.Blob
   * @see js.File
   */
  public native function set(name: String, value: *, fileName: String = undefined): void;

  /**
   * Executes a provided function once for each array element.
   *
   * @param callbackfn the callback function called for each array element.
   * @param thisArg the value provided in the "this" scope
   */
  public native function forEach(callbackfn: Function, thisArg: * = undefined): void;
}
}
