package js {

/**
 * The Map object holds key-value pairs and remembers the original insertion order of the keys.
 *
 * Any value (both objects and primitive values) may be used as either a key or a value.
 */
[Native("Map")]
public class Map {

  /**
   * Creates a new Map object.
   * @param entries An Array or other iterable object whose elements are key-value pairs. (For example, arrays with two
   *                elements, such as [[ 1, 'one' ],[ 2, 'two' ]].) Each key-value pair is added to the new Map.
   */
  public native function Map(entries: * = undefined);

  /**
   * Removes all key-value pairs from the Map object.
   */
  public native function clear(): void;

  /**
   * Returns true if an element in the Map object existed and has been removed, or false if the element does not exist.
   * {@link #has} will return false afterwards.
   *
   * @param key The key of the element to remove from the Map object.
   * @return true if an element in the Map object existed and has been removed, or false if the element does not exist.
   */
  public native function delete_(key: *): Boolean;

  /**
   * Calls callbackFn once for each key-value pair present in the Map object, in insertion order. If a thisArg parameter
   * is provided to forEach, it will be used as the this value for each callback.
   *
   * @param callbackfn Function to execute for each entry of myMap. It takes the following arguments:
   *                   value (optional): Value of each iteration.
   *                   key (optional): Key of each iteration.
   *                   map (optional): The map being iterated.
   * @param thisArg Value to use as this when executing callback.
   */
  public native function forEach(callbackfn: Function, thisArg: * = undefined): void;

  /**
   * Returns the value associated to the key, or undefined if there is none.
   *
   * @param key The key of the element to return from the Map object.
   * @return The element associated with the specified key, or undefined if the key can't be found in the Map object.
   */
  public native function get(key: *): *;

  /**
   * Returns a boolean asserting whether a value has been associated to the key in the Map object or not.
   *
   * @param key The key of the element to test for presence in the Map object.
   * @return true if an element with the specified key exists in the Map object; otherwise false.
   */
  public native function has(key: *): Boolean;

  /**
   * Sets the value for the key in the Map object. Returns the Map object.
   *
   * @param key The key of the element to add to the Map object.
   * @param value The value of the element to add to the Map object.
   * @return The Map object.
   */
  public native function set(key: *, value: *): Map;

  /**
   * Returns the number of key/value pairs in the Map object.
   */
  public native function get size(): uint;

  /**
   * Returns a new Iterator object that contains an array of [key, value] for each element in the Map object in
   * insertion order.
   */
  public native function entries(): *;

  /**
   * Returns a new Iterator object that contains the keys for each element in the Map object in insertion order.
   */
  public native function keys(): *;

  /**
   * Returns a new Iterator object that contains the values for each element in the Map object in insertion order.
   */
  public native function values(): *;
}
}
