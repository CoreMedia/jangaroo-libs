package js {

/**
 * The FormData interface provides a way to easily construct a set of key/value pairs representing form fields and their
 * values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would
 * use if the encoding type were set to "multipart/form-data".
 *
 * You can also pass it directly to the URLSearchParams constructor if you want to generate query parameters in the way
 * a <form> would do if it were using simple GET submission.
 *
 * An object implementing FormData can directly be used in a for...of structure, instead of entries(): for (var p of
 * myFormData) is equivalent to for (var p of myFormData.entries()).
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
   * @param value The field's value. This can be a {@link String} or {@link Blob} (including subclasses such as
   *              {@link File}). If none of these are specified the value is converted to a string.
   * @param fileName The filename reported to the server (a {@link String}), when a {@link Blob} or {@link File} is
   *                 passed as the second parameter. The default filename for {@link Blob} objects is "blob". The
   *                 default filename for {@link File} objects is the file's filename.
   */
  public native function append(name: String, value: *, fileName: String = undefined): void;

  /**
   * Deletes a key/value pair from a FormData object.
   *
   * @param name The name of the key you want to delete.
   */
  public native function delete_(name: String): void;

  /**
   * Returns the first value associated with a given key from within a FormData object.
   *
   * @param name A {@link String} representing the name of the key you want to retrieve.
   * @return A {@link String} or {@link File} containing the value. If the key doesn't exist, the method returns null.
   */
  public native function get(name: String): *;

  /**
   * Returns an array of all the values associated with a given key from within a FormData.
   * @param name A {@link String} representing the name of the key you want to retrieve.
   * @return An array of {@link String}s or {@link File}s whose key matches the value passed in the name parameter. If
   *         the key doesn't exist, the method returns an empty list.
   */
  public native function getAll(name: String): Array;

  /**
   * Returns a boolean stating whether a FormData object contains a certain key.
   *
   * @param name A {@link String} representing the name of the key you want to test for.
   * @return TRUE if the form contains the key, otherwise FALSE
   */
  public native function has(name: String): Boolean;

  /**
   * Sets a new value for an existing key inside a FormData object, or adds the key/value if it does not already exist.
   *
   * @param name The name of the field whose data is contained in value.
   * @param value The field's value. This can be a {@link String} or {@link Blob} (including subclasses such as
   *              {@link File}). If none of these are specified the value is converted to a string.
   * @param fileName The filename reported to the server (a {@link String}), when a {@link Blob} or {@link File} is
   *                 passed as the second parameter. The default filename for {@link Blob} objects is "blob". The
   *                 default filename for {@link File} objects is the file's filename.
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
