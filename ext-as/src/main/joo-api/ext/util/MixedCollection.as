package ext.util {

/**
 * A Collection class that maintains both numeric indexes and keys and exposes events.
*/
public class MixedCollection extends Observable {
/**
 * @constructor
 * @param allowFunctions True if the addAll function should add function references to the
 * collection (defaults to false)
 * @param keyFn A function that can accept an item of the type(s) stored in this MixedCollection
 * and return the key value for that item.  This is used when available to look up the key on items that
 * were passed without an explicit key parameter to a MixedCollection method.  Passing this parameter is
 * equivalent to providing an implementation for the <b class='link'>#getKey</b> method.
 */
public function MixedCollection(allowFunctions : Boolean = false, keyFn : Function = null) {
  super();
  this.allowFunctions = allowFunctions;
  this.getKey = keyFn;
}
    public native function get items() : Array;
    public native function get map() : Object;
    public native function get keys() : Array;
    public native function get length() : int;
    public var allowFunctions : Boolean;
/**
 * Adds an item to the collection. Fires the <b class='link'>#add</b> event when complete.
 * @param key <p>The key to associate with the item, or the new item.</p>
 * <p>If you supplied a <b class='link'>#getKey</b> implementation for this MixedCollection, or if the key
 * of your stored items is in a property called <tt><b>id</b></tt>, then the MixedCollection
 * will be able to <i>derive</i> the key for the new item. In this case just pass the new item in
 * this parameter.</p>
 * @param o The item to add.
 * @return The item added.
 */
    public native function add(key : *, o : Object = undefined) : Object;
/**
  * MixedCollection has a generic way to fetch keys if you implement getKey.  The default implementation
  * simply returns <tt style="font-weight:bold;">item.id</tt> but you can provide your own implementation
  * to return a different value as in the following examples:
<pre><code>
// normal way
var mc = new Ext.util.MixedCollection();
mc.add(someEl.dom.id, someEl);
mc.add(otherEl.dom.id, otherEl);
//and so on

// using getKey
var mc = new Ext.util.MixedCollection();
mc.getKey = function(el){
   return el.dom.id;
};
mc.add(someEl);
mc.add(otherEl);

// or via the constructor
var mc = new Ext.util.MixedCollection(false, function(el){
   return el.dom.id;
});
mc.add(someEl);
mc.add(otherEl);
</code></pre>
 * @param item The item for which to find the key.
 * @return The key for the passed item.
 */
    public native function getKey(item : Object) : Object;
/**
 * Replaces an item in the collection. Fires the <b class='link'>#replace</b> event when complete.
 * @param key <p>The key associated with the item to replace, or the replacement item.</p>
 * <p>If you supplied a <b class='link'>#getKey</b> implementation for this MixedCollection, or if the key
 * of your stored items is in a property called <tt><b>id</b></tt>, then the MixedCollection
 * will be able to <i>derive</i> the key of the replacement item. If you want to replace an item
 * with one having the same key value, then just pass the replacement item in this parameter.</p>
 * @param o {Object} o (optional) If the first parameter passed was a key, the item to associate
 * with that key.
 * @return  The new item.
 */
    public native function replace(key : String, o) : Object;
/**
 * Adds all elements of an Array or an Object to the collection.
 * @param objs An Object containing properties which will be added to the collection, or
 * an Array of values, each of which are added to the collection.
 */
    public native function addAll(objs : *) : void;
/**
 * Executes the specified function once for every item in the collection, passing the following arguments:
 * <div class="mdetail-params"><ul>
 * <li><b>item</b> : Mixed<p class="sub-desc">The collection item</p></li>
 * <li><b>index</b> : Number<p class="sub-desc">The item's index</p></li>
 * <li><b>length</b> : Number<p class="sub-desc">The total number of items in the collection</p></li>
 * </ul></div>
 * The function should return a boolean value. Returning false from the function will stop the iteration.
 * @param fn The function to execute for each item.
 * @param scope The scope in which to execute the function.
 */
    public native function each(fn : Function, scope : Object = undefined) : void;
/**
 * Executes the specified function once for every key in the collection, passing each
 * key, and its associated item as the first two parameters.
 * @param fn The function to execute for each item.
 * @param scope The scope in which to execute the function.
 */
    public native function eachKey(fn : Function, scope : Object = undefined) : void;
    /**
     * Returns the first item in the collection which elicits a true return value from the
     * passed selection function.
     * @param fn The selection function to execute for each item.
     * @param scope The scope in which to execute the function.
     * @return The first item in the collection which returned true from the selection function.
     */
    public native function find(fn : Function, scope : Object = undefined) : Object;
/**
 * Inserts an item at the specified index in the collection. Fires the <b class='link'>#add</b> event when complete.
 * @param index The index to insert the item at.
 * @param key The key to associate with the new item, or the item itself.
 * @param o If the second parameter was a key, the new item.
 * @return The item inserted.
 */
    public native function insert(index : Number, key : String, o : Object = undefined) : Object;
/**
 * Remove an item from the collection.
 * @param o The item to remove.
 * @return The item removed or false if no item was removed.
 */
    public native function remove(o : Object) : Object;
/**
 * Remove an item from a specified index in the collection. Fires the <b class='link'>#remove</b> event when complete.
 * @param index The index within the collection of the item to remove.
 * @return The item removed or false if no item was removed.
 */
    public native function removeAt(index : Number) : Object;
/**
 * Removed an item associated with the passed key fom the collection.
 * @param key The key of the item to remove.
 * @return The item removed or false if no item was removed.
 */
    public native function removeKey(key : String) : Object;
/**
 * Returns the number of items in the collection.
 * @return the number of items in the collection.
 */
    public native function getCount() : Number;
/**
 * Returns index within the collection of the passed Object.
 * @param o The item to find the index of.
 * @return index of the item. Returns -1 if not found.
 */
    public native function indexOf(o : Object) : Number;
/**
 * Returns index within the collection of the passed key.
 * @param key The key to find the index of.
 * @return index of the key.
 */
    public native function indexOfKey(key : String) : Number;
/**
 * Returns the item associated with the passed key OR index. Key has priority over index.  This is the equivalent
 * of calling <b class='link'>#key</b> first, then if nothing matched calling <b class='link'>#itemAt</b>.
 * @param key The key or index of the item.
 * @return If the item is found, returns the item.  If the item was not found, returns <tt>undefined</tt>.
 * If an item was found, but is a Class, returns <tt>null</tt>.
 */
    public native function item(key : *) : Object;
/**
 * Returns the item at the specified index.
 * @param index The index of the item.
 * @return The item at the specified index.
 */
    public native function itemAt(index : Number) : Object;
/**
 * Returns the item associated with the passed key.
 * @param key The key of the item.
 * @return The item associated with the passed key.
 */
    public native function key(key : *) : Object;
/**
 * Returns true if the collection contains the passed Object as an item.
 * @param o  The Object to look for in the collection.
 * @return True if the collection contains the Object as an item.
 */
    public native function contains(o : Object) : Boolean;
/**
 * Returns true if the collection contains the passed Object as a key.
 * @param key The key to look for in the collection.
 * @return True if the collection contains the Object as a key.
 */
    public native function containsKey(key : String) : Boolean;
/**
 * Removes all items from the collection.  Fires the <b class='link'>#clear</b> event when complete.
 */
    public native function clear() : void;
/**
 * Returns the first item in the collection.
 * @return the first item in the collection..
 */
    public native function first() : Object;
/**
 * Returns the last item in the collection.
 * @return the last item in the collection..
 */
    public native function last() : Object;
    protected native function _sort(property, dir, fn) : void;
    /**
     * Sorts this collection with the passed comparison function
     * @param direction "ASC" or "DESC"
     * @param fn comparison function
     */
    public native function sort(direction : String = undefined, fn : Function = undefined) : void;
    /**
     * Sorts this collection by keys
     * @param direction "ASC" or "DESC"
     * @param fn a comparison function (defaults to case insensitive string)
     */
    public native function keySort(direction : String = undefined, fn : Function = undefined) : void;
    /**
     * Returns a range of items in this collection
     * @param startIndex defaults to 0
     * @param endIndex default to the last item
     * @return An array of items
     */
    public native function getRange(startIndex : Number = undefined, endIndex : Number = undefined) : Array;
    /**
     * Filter the <i>objects</i> in this collection by a specific property.
     * Returns a new collection that has been filtered.
     * @param property A property on your objects
     * @param value Either string that the property values
     * should start with or a RegExp to test against the property
     * @param anyMatch True to match any part of the string, not just the beginning
     * @param caseSensitive True for case sensitive comparison (defaults to False).
     * @return The new filtered collection
     */
    public native function filter(property : String, value : *, anyMatch : Boolean = undefined, caseSensitive : Boolean = undefined) : MixedCollection;
    /**
     * Filter by a function. Returns a <i>new</i> collection that has been filtered.
     * The passed function will be called with each object in the collection.
     * If the function returns true, the value is included otherwise it is filtered.
     * @param fn The function to be called, it will receive the args o (the object), k (the key)
     * @param scope The scope of the function (defaults to this)
     * @return The new filtered collection
     */
    public native function filterBy(fn : Function, scope : Object = undefined) : MixedCollection;
    /**
     * Finds the index of the first matching object in this collection by a specific property/value.
     * @param property The name of a property on your objects.
     * @param value A string that the property values
     * should start with or a RegExp to test against the property.
     * @param start The index to start searching at (defaults to 0).
     * @param anyMatch True to match any part of the string, not just the beginning.
     * @param caseSensitive True for case sensitive comparison.
     * @return The matched index or -1
     */
    public native function findIndex(property : String, value : *, start : Number = undefined, anyMatch : Boolean = undefined, caseSensitive : Boolean = undefined) : Number;
    /**
     * Find the index of the first matching object in this collection by a function.
     * If the function returns <i>true</i> it is considered a match.
     * @param fn The function to be called, it will receive the args o (the object), k (the key).
     * @param scope The scope of the function (defaults to this).
     * @param start The index to start searching at (defaults to 0).
     * @return The matched index or -1
     */
    public native function findIndexBy(fn : Function, scope : Object = undefined, start : Number = undefined) : Number;
    protected native function createValueMatcher(value, anyMatch, caseSensitive) : void;
    /**
     * Creates a shallow copy of this collection
     * @return 
     */
    public native function clone() : MixedCollection;
    /**
     * This method calls {@link #item item()}.
     * Returns the item associated with the passed key OR index. Key has priority over index.  This is the equivalent
     * of calling {@link #key} first, then if nothing matched calling {@link #itemAt}.
     * @param {String/Number} key The key or index of the item.
     * @return {Object} If the item is found, returns the item.  If the item was not found, returns <tt>undefined</tt>.
     * If an item was found, but is a Class, returns <tt>null</tt>.
     */
    public native function get(key : *) : Object;
}}
