package ext.util {
/**
 * Fires when an item is added to the collection.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>index:Number</code>
 The index at which the item was added.
 *       </li>

 *       <li>
 *           <code>o:Object</code>
 The item added.
 *       </li>

 *       <li>
 *           <code>key:String</code>
 The key associated with the added item.
 *       </li>

 * </ul>
 */
[Event(name="add")]

/**
 * Fires when the collection is cleared.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>None.</li>
 *
 * </ul>
 */
[Event(name="clear")]

/**
 * Fires when an item is removed from the collection.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>o:Object</code>
 The item being removed.
 *       </li>

 *       <li>
 *           <code>key:String</code>
 The key associated with the removed item.
 *       </li>

 * </ul>
 */
[Event(name="remove")]

/**
 * Fires when an item is replaced in the collection.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>key:String</code>
 he key associated with the new added.
 *       </li>

 *       <li>
 *           <code>old:Object</code>
 The item being replaced.
 *       </li>

 *       <li>
 *           <code>new:Object</code>
 The new item.
 *       </li>

 * </ul>
 */
[Event(name="replace")]


/**
 * A Collection class that maintains both numeric indexes and keys and exposes events.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.mixedcollection
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "util.MixedCollection")]
public class MixedCollection extends Observable {

  /**
   *
   *
   * @param allowFunctions Specify <tt>true</tt> if the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-addAll">addAll</a> function should add function references to the collection. Defaults to <tt>false</tt>.
   * @param keyFn A function that can accept an item of the type(s) stored in this MixedCollection and return the key value for that item. This is used when available to look up the key on items that were passed without an explicit key parameter to a MixedCollection method. Passing this parameter is equivalent to providing an implementation for the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-getKey">getKey</a> method.
   * @see ext.config.mixedcollection
   */
  public function MixedCollection(allowFunctions:Boolean = false, keyFn:Function = null) {
    super();
  }

  /**
   Specify <tt>true</tt> if the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-addAll">addAll</a> function should add function references to the collection. Defaults to <tt>false</tt>.
   */
  public native function get allowFunctions():Boolean;

  /**
   *
   *
   * @param property Property to sort by ('key', 'value', or 'index')
   * @param dir Direction to sort 'ASC' or 'DESC'. Defaults to 'ASC'.
   * @param fn Comparison function that defines the sort order. Defaults to sorting by numeric value.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-_sort Sencha Docs Ext JS 3.4
   */
  public native function _sort(property:String, dir:String = null, fn:Function = null):void;

  /**
   * Adds an item to the collection. Fires the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-add">add</a> event when complete.
   *
   * @param key The key to associate with the item, or the new item.
   <p>If a <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-getKey">getKey</a> implementation was specified for this MixedCollection, or if the key of the stored items is in a property called <tt><b>id</b></tt>, the MixedCollection will be able to <i>derive</i> the key for the new item. In this case just pass the new item in this parameter.</p>
   * @param o The item to add.
   * @return The item added.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-add Sencha Docs Ext JS 3.4
   */
  public native function add(key:*, o:Object = null):Object;

  /**
   * Adds all elements of an Array or an Object to the collection.
   *
   * @param objs An Object containing properties which will be added to the collection, or an Array of values, each of which are added to the collection. Functions references will be added to the collection if <code><a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-allowFunctions">allowFunctions</a></code> has been set to <tt>true</tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-addAll Sencha Docs Ext JS 3.4
   */
  public native function addAll(objs:*):void;

  /**
   * Removes all items from the collection. Fires the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-clear">clear</a> event when complete.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-clear Sencha Docs Ext JS 3.4
   */
  public native function clear():void;

  /**
   * Creates a shallow copy of this collection
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-clone Sencha Docs Ext JS 3.4
   */
  public native function clone():MixedCollection;

  /**
   * Returns true if the collection contains the passed Object as an item.
   *
   * @param o The Object to look for in the collection.
   * @return True if the collection contains the Object as an item.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-contains Sencha Docs Ext JS 3.4
   */
  public native function contains(o:Object):Boolean;

  /**
   * Returns true if the collection contains the passed Object as a key.
   *
   * @param key The key to look for in the collection.
   * @return True if the collection contains the Object as a key.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-containsKey Sencha Docs Ext JS 3.4
   */
  public native function containsKey(key:String):Boolean;

  /**
   * Returns a regular expression based on the given value and matching options. This is used internally for finding and filtering, and by Ext.data.Store#filter
   *
   * @param value The value to create the regex for. This is escaped using Ext.escapeRe
   * @param anyMatch True to allow any match - no regex start/end line anchors will be added. Defaults to false
   * @param caseSensitive True to make the regex case sensitive (adds 'i' switch to regex). Defaults to false.
   * @param exactMatch True to force exact match (^ and $ characters added to the regex). Defaults to false. Ignored if anyMatch is true.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-createValueMatcher Sencha Docs Ext JS 3.4
   */
  public native function createValueMatcher(value:String, anyMatch:Boolean, caseSensitive:Boolean, exactMatch:Boolean):void;

  /**
   * Executes the specified function once for every item in the collection, passing the following arguments: <div class="mdetail-params"><ul><li><b>item</b> : Mixed<p class="sub-desc">The collection item</p></li><li><b>index</b> : Number<p class="sub-desc">The item's index</p></li><li><b>length</b> : Number<p class="sub-desc">The total number of items in the collection</p></li></ul></div>The function should return a boolean value. Returning false from the function will stop the iteration.
   *
   * @param fn The function to execute for each item.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the current item in the iteration.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-each Sencha Docs Ext JS 3.4
   */
  public native function each(fn:Function, scope:Object = null):void;

  /**
   * Executes the specified function once for every key in the collection, passing each key, and its associated item as the first two parameters.
   *
   * @param fn The function to execute for each item.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the browser window.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-eachKey Sencha Docs Ext JS 3.4
   */
  public native function eachKey(fn:Function, scope:Object = null):void;

  /**
   * Filter the <i>objects</i> in this collection by a specific property. Returns a new collection that has been filtered.
   *
   * @param property A property on your objects
   * @param value Either string that the property values should start with or a RegExp to test against the property
   * @param anyMatch True to match any part of the string, not just the beginning
   * @param caseSensitive True for case sensitive comparison (defaults to False).
   * @return The new filtered collection
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-filter Sencha Docs Ext JS 3.4
   */
  public native function filter(property:String, value:*, anyMatch:Boolean = false, caseSensitive:Boolean = false):MixedCollection;

  /**
   * Filter by a function. Returns a <i>new</i> collection that has been filtered. The passed function will be called with each object in the collection. If the function returns true, the value is included otherwise it is filtered.
   *
   * @param fn The function to be called, it will receive the args o (the object), k (the key)
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this MixedCollection.
   * @return The new filtered collection
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-filterBy Sencha Docs Ext JS 3.4
   */
  public native function filterBy(fn:Function, scope:Object = null):MixedCollection;

  /**
   * Returns the first item in the collection which elicits a true return value from the passed selection function.
   *
   * @param fn The selection function to execute for each item.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the browser window.
   * @return The first item in the collection which returned true from the selection function.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-find Sencha Docs Ext JS 3.4
   */
  public native function find(fn:Function, scope:Object = null):Object;

  /**
   * Finds the index of the first matching object in this collection by a specific property/value.
   *
   * @param property The name of a property on your objects.
   * @param value A string that the property values should start with or a RegExp to test against the property.
   * @param start The index to start searching at (defaults to 0).
   * @param anyMatch True to match any part of the string, not just the beginning.
   * @param caseSensitive True for case sensitive comparison.
   * @return The matched index or -1
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-findIndex Sencha Docs Ext JS 3.4
   */
  public native function findIndex(property:String, value:*, start:Number = undefined, anyMatch:Boolean = false, caseSensitive:Boolean = false):Number;

  /**
   * Find the index of the first matching object in this collection by a function. If the function returns <i>true</i> it is considered a match.
   *
   * @param fn The function to be called, it will receive the args o (the object), k (the key).
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this MixedCollection.
   * @param start The index to start searching at (defaults to 0).
   * @return The matched index or -1
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-findIndexBy Sencha Docs Ext JS 3.4
   */
  public native function findIndexBy(fn:Function, scope:Object = null, start:Number = undefined):Number;

  /**
   * Returns the first item in the collection.
   *
   * @return the first item in the collection..
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-first Sencha Docs Ext JS 3.4
   */
  public native function first():Object;

  /**
   * This method calls <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-item">item()</a>. Returns the item associated with the passed key OR index. Key has priority over index. This is the equivalent of calling <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-key">key</a> first, then if nothing matched calling <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-itemAt">itemAt</a>.
   *
   * @param key The key or index of the item.
   * @return If the item is found, returns the item. If the item was not found, returns <tt>undefined</tt>. If an item was found, but is a Class, returns <tt>null</tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-get Sencha Docs Ext JS 3.4
   */
  public native function get(key:*):Object;

  /**
   * Returns the number of items in the collection.
   *
   * @return the number of items in the collection.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-getCount Sencha Docs Ext JS 3.4
   */
  public native function getCount():Number;

  /**
   * MixedCollection has a generic way to fetch keys if you implement getKey. The default implementation simply returns <b><code>item.id</code></b> but you can provide your own implementation to return a different value as in the following examples:<pre><code>// normal way
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
   *
   * @param item The item for which to find the key.
   * @return The key for the passed item.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-getKey Sencha Docs Ext JS 3.4
   */
  public native function getKey(item:Object):Object;

  /**
   * Returns a range of items in this collection
   *
   * @param startIndex The starting index. Defaults to 0.
   * @param endIndex The ending index. Defaults to the last item.
   * @return An array of items
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-getRange Sencha Docs Ext JS 3.4
   */
  public native function getRange(startIndex:Number = undefined, endIndex:Number = undefined):Array;

  /**
   * Returns index within the collection of the passed Object.
   *
   * @param o The item to find the index of.
   * @return index of the item. Returns -1 if not found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-indexOf Sencha Docs Ext JS 3.4
   */
  public native function indexOf(o:Object):Number;

  /**
   * Returns index within the collection of the passed key.
   *
   * @param key The key to find the index of.
   * @return index of the key.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-indexOfKey Sencha Docs Ext JS 3.4
   */
  public native function indexOfKey(key:String):Number;

  /**
   * Inserts an item at the specified index in the collection. Fires the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-add">add</a> event when complete.
   *
   * @param index The index to insert the item at.
   * @param key The key to associate with the new item, or the item itself.
   * @param o If the second parameter was a key, the new item.
   * @return The item inserted.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-insert Sencha Docs Ext JS 3.4
   */
  public native function insert(index:Number, key:String, o:Object = null):Object;

  /**
   * Returns the item associated with the passed key OR index. Key has priority over index. This is the equivalent of calling <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-key">key</a> first, then if nothing matched calling <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-itemAt">itemAt</a>.
   *
   * @param key The key or index of the item.
   * @return If the item is found, returns the item. If the item was not found, returns <tt>undefined</tt>. If an item was found, but is a Class, returns <tt>null</tt>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-item Sencha Docs Ext JS 3.4
   */
  public native function item(key:*):Object;

  /**
   * Returns the item at the specified index.
   *
   * @param index The index of the item.
   * @return The item at the specified index.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-itemAt Sencha Docs Ext JS 3.4
   */
  public native function itemAt(index:Number):Object;

  /**
   * Returns the item associated with the passed key.
   *
   * @param key The key of the item.
   * @return The item associated with the passed key.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-key Sencha Docs Ext JS 3.4
   */
  public native function key(key:*):Object;

  /**
   * Sorts this collection by <b>key</b>s.
   *
   * @param direction 'ASC' or 'DESC'. Defaults to 'ASC'.
   * @param fn Comparison function that defines the sort order. Defaults to sorting by case insensitive string.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-keySort Sencha Docs Ext JS 3.4
   */
  public native function keySort(direction:String = null, fn:Function = null):void;

  /**
   * Returns the last item in the collection.
   *
   * @return the last item in the collection..
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-last Sencha Docs Ext JS 3.4
   */
  public native function last():Object;

  /**
   * Remove an item from the collection.
   *
   * @param o The item to remove.
   * @return The item removed or false if no item was removed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-remove Sencha Docs Ext JS 3.4
   */
  public native function remove(o:Object):Object;

  /**
   * Remove an item from a specified index in the collection. Fires the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-remove">remove</a> event when complete.
   *
   * @param index The index within the collection of the item to remove.
   * @return The item removed or false if no item was removed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-removeAt Sencha Docs Ext JS 3.4
   */
  public native function removeAt(index:Number):Object;

  /**
   * Removed an item associated with the passed key fom the collection.
   *
   * @param key The key of the item to remove.
   * @return The item removed or false if no item was removed.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-removeKey Sencha Docs Ext JS 3.4
   */
  public native function removeKey(key:String):Object;

  /**
   * Reorders each of the items based on a mapping from old index to new index. Internally this just translates into a sort. The 'sort' event is fired whenever reordering has occurred.
   *
   * @param mapping Mapping from old item index to new item index
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-reorder Sencha Docs Ext JS 3.4
   */
  public native function reorder(mapping:Object):void;

  /**
   * Replaces an item in the collection. Fires the <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-replace">replace</a> event when complete.
   *
   * @param key The key associated with the item to replace, or the replacement item.
   <p>If you supplied a <a href="output/Ext.util.MixedCollection.html#Ext.util.MixedCollection-getKey">getKey</a> implementation for this MixedCollection, or if the key of your stored items is in a property called <tt><b>id</b></tt>, then the MixedCollection will be able to <i>derive</i> the key of the replacement item. If you want to replace an item with one having the same key value, then just pass the replacement item in this parameter.</p>
   * @param o o (optional) If the first parameter passed was a key, the item to associate with that key.
   * @return The new item.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-replace Sencha Docs Ext JS 3.4
   */
  public native function replace(key:String, o:Object):Object;

  /**
   * Sorts this collection by <b>item</b> value with the passed comparison function.
   *
   * @param direction 'ASC' or 'DESC'. Defaults to 'ASC'.
   * @param fn Comparison function that defines the sort order. Defaults to sorting by numeric value.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.MixedCollection-method-sort Sencha Docs Ext JS 3.4
   */
  public native function sort(direction:String = null, fn:Function = null):void;

}
}
    