package ext.util {

import ext.config.hashmap;
import ext.form.Number;

/**
 * Fires when a new item is added to the hash
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.HashMap</code>

 *       </li>

 *       <li>
 *           <code>key:String</code>
 The key of the added item.
 *       </li>

 *       <li>
 *           <code>value:Object</code>
 The value of the added item.
 *       </li>

 * </ul>
 */
[Event(name="add")]

/**
 * Fires when the hash is cleared.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.HashMap</code>

 *       </li>

 * </ul>
 */
[Event(name="clear")]

/**
 * Fires when an item is removed from the hash.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.HashMap</code>

 *       </li>

 *       <li>
 *           <code>key:String</code>
 The key of the removed item.
 *       </li>

 *       <li>
 *           <code>value:Object</code>
 The value of the removed item.
 *       </li>

 * </ul>
 */
[Event(name="remove")]

/**
 * Fires when an item is replaced in the hash.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.util.HashMap</code>

 *       </li>

 *       <li>
 *           <code>key:String</code>
 The key of the replaced item.
 *       </li>

 *       <li>
 *           <code>value:Object</code>
 The new value for the item.
 *       </li>

 *       <li>
 *           <code>old:Object</code>
 The old value for the item.
 *       </li>

 * </ul>
 */
[Event(name="replace")]


/**
 * A simple unordered dictionary implementation to store key/value pairs.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.hashmap
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#cls-Ext.util.HashMap Ext JS source
 */
[Native]
public class HashMap extends Observable {

  /**
   *
   *
   * @param config The configuration options
   * @see ext.config.hashmap
   */
  public function HashMap(config:hashmap) {
    super();
  }

  /**
   * Add a new item to the hash. An exception will be thrown if the key already exists.
   *
   * @param key The key of the new item.
   * @param value The value of the new item.
   * @return The value of the new item added.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-add Ext JS source
   */
  public native function add(key:String, value:Object):Object;

  /**
   * Removes all items from the hash.
   *
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-clear Ext JS source
   */
  public native function clear():HashMap;

  /**
   * Performs a shallow copy on this hash.
   *
   * @return The new hash object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-clone Ext JS source
   */
  public native function clone():HashMap;

  /**
   * Checks whether a value exists in the hash.
   *
   * @param value The value to check for.
   * @return True if the value exists in the dictionary.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-contains Ext JS source
   */
  public native function contains(value:Object):Boolean;

  /**
   * Checks whether a key exists in the hash.
   *
   * @param key The key to check for.
   * @return True if they key exists in the hash.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-containsKey Ext JS source
   */
  public native function containsKey(key:String):Boolean;

  /**
   * Executes the specified function once for each item in the hash. Returning false from the function will cease iteration. The paramaters passed to the function are: <div class="mdetail-params"><ul><li><b>key</b> : String<p class="sub-desc">The key of the item</p></li><li><b>value</b> : Number<p class="sub-desc">The value of the item</p></li><li><b>length</b> : Number<p class="sub-desc">The total number of items in the hash</p></li></ul></div>
   *
   * @param fn The function to execute.
   * @param scope The scope to execute in. Defaults to <tt>this</tt>.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-each Ext JS source
   */
  public native function each(fn:Function, scope:Object):HashMap;

  /**
   *
   *
   * @param value The value to find.
   * @return The value of the item. Returns <tt>undefined</tt> if not found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-findKey Ext JS source
   */
  public native function findKey(value:Object):Object;

  /**
   * Retrieves an item with a particular key.
   *
   * @param key The key to lookup.
   * @return The value at that key. If it doesn't exist, <tt>undefined</tt> is returned.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-get Ext JS source
   */
  public native function get(key:String):Object;

  /**
   * Gets either the keys/values in an array from the hash.
   *
   * @param isKey True to extract the keys, otherwise, the value
   * @return An array of either keys/values from the hash.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-getArray Ext JS source
   */
  public native function getArray(isKey:Boolean):Array;

  /**
   * Gets the number of items in the hash.
   *
   * @return The number of items in the hash.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-getCount Ext JS source
   */
  public native function getCount():ext.form.Number;

  /**
   * Implementation for being able to extract the key from an object if only a single argument is passed.
   *
   * @param key The key
   * @param value The value
   * @return [key, value]
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-getData Ext JS source
   */
  public native function getData(key:String, value:Object):Array;

  /**
   * Extracts the key from an object. This is a default implementation, it may be overridden
   *
   * @param o The object to get the key from
   * @return The key to use.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-getKey Ext JS source
   */
  public native function getKey(o:Object):String;

  /**
   * Return all of the keys in the hash.
   *
   * @return An array of keys.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-getKeys Ext JS source
   */
  public native function getKeys():Array;

  /**
   * Return all of the values in the hash.
   *
   * @return An array of values.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-getValues Ext JS source
   */
  public native function getValues():Array;

  /**
   * Remove an item from the hash.
   *
   * @param o The value of the item to remove.
   * @return True if the item was successfully removed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-remove Ext JS source
   */
  public native function remove(o:Object):Boolean;

  /**
   * Remove an item from the hash.
   *
   * @param key The key to remove.
   * @return True if the item was successfully removed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-removeByKey Ext JS source
   */
  public native function removeByKey(key:String):Boolean;

  /**
   * Replaces an item in the hash. If the key doesn't exist, the <a href="output/Ext.util.HashMap.html#Ext.util.HashMap-add">add</a> method will be used.
   *
   * @param key The key of the item.
   * @param value The new value for the item.
   * @return The new value of the item.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/HashMap.html#method-Ext.util.HashMap-replace Ext JS source
   */
  public native function replace(key:String, value:Object):Object;

}
}
    