package js {

/**
 * The WeakMap object is a collection of key/value pairs in which the keys are weakly referenced. The keys must be
 * objects and the values can be arbitrary values.
 */
[Native("Weak")]
public class WeakMap {

  /**
   * The WeakMap() constructor creates WeakMap objects which are a collections of key/value pairs in which the keys are
   * weakly referenced. The keys must be objects and the values can be arbitrary values.
   *
   * @param iterable Iterable is an Array or other iterable object whose elements are key-value pairs (2-element
   *                 Arrays). Each key-value pair will be added to the new WeakMap. null is treated as undefined.
   */
  public native function WeakMap(iterable:* = undefined);

  /**
   * Removes any value associated to the key. WeakMap.prototype.has(key) will return false afterwards.
   *
   * Aliased by Jangaroo with an underscore suffix to avoid clash with ActionScript keyword
   * <code>delete</code>. To make this alias work, generated JavaScript calling this API
   * uses 'delete'.
   *
   * @param key The key of the element to remove from the WeakMap object.
   * @return true if an element in the WeakMap object has been removed successfully. false if the key is not found in
   *         the WeakMap or if the key is not an object.
   */
  [Native("delete")]
  public native function delete_(key:Object):Boolean;

  /**
   * Returns the value associated to the key, or undefined if there is none.
   *
   * @param key The key of the element to return from the WeakMap object.
   * @return The element associated with the specified key in the WeakMap object. If the key can't be found, undefined
   *         is returned.
   */
  public native function get(key:Object):*;

  /**
   * Returns a Boolean asserting whether a value has been associated to the key in the WeakMap object or not.
   *
   * @param key The key of the element to test for presence in the WeakMap object.
   * @return Returns true if an element with the specified key exists in the WeakMap object; otherwise false.
   */
  public native function has(key:Object):Boolean;

  /**
   * Sets the value for the key in the WeakMap object. Returns the WeakMap object.
   *
   * @param key Must be object. The key of the element to add to the WeakMap object.
   * @param value Any value. The value of the element to add to the WeakMap object.
   * @return The WeakMap object.
   */
  public native function set(key:Object, value:*):WeakMap;
}
}
