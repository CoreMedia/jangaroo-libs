package ext.config {

import joo.JavaScriptObject;

/**
 * Represents a filter that can be applied to a <a href="Ext.data.MixedCollection.html">MixedCollection</a>. Can either simply filter on a property/value pair or pass in a filter function with custom logic. Filters are always used in the context of MixedCollections, though <a href="Ext.data.Store.html">Store</a>s frequently create them when filtering and searching on their records. Example usage:
 <pre><code>//set up a fictional MixedCollection containing a few people to filter on
 var allNames = new Ext.util.MixedCollection();
 allNames.addAll([
 {id: 1, name: 'Ed',    age: 25},
 {id: 2, name: 'Jamie', age: 37},
 {id: 3, name: 'Abe',   age: 32},
 {id: 4, name: 'Aaron', age: 26},
 {id: 5, name: 'David', age: 32}
 ]);

 var ageFilter = new Ext.util.Filter({
 property: 'age',
 value   : 32
 });

 var longNameFilter = new Ext.util.Filter({
 filterFn: function(item) {
 return item.name.length &gt; 4;
 }
 });

 //a new MixedCollection with the 3 names longer than 4 characters
 var longNames = allNames.filter(longNameFilter);

 //a new MixedCollection with the 2 people of age 24:
 var youngFolk = allNames.filter(ageFilter);
 </code></pre>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Filter.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Filter
 */
[ExtConfig(target="ext.util.Filter")]
public class filter extends JavaScriptObject {

  public function filter(config:Object = null) {

    super(config);
  }


  /**
   True to allow any match - no regex start/end line anchors will be added. Defaults to false
   */
  public native function get anyMatch():Boolean;

  /**
   * @private
   */
  public native function set anyMatch(value:Boolean):void;

  /**
   True to make the regex case sensitive (adds 'i' switch to regex). Defaults to false.
   */
  public native function get caseSensitive():Boolean;

  /**
   * @private
   */
  public native function set caseSensitive(value:Boolean):void;

  /**
   True to force exact match (^ and $ characters added to the regex). Defaults to false. Ignored if anyMatch is true.
   */
  public native function get exactMatch():Boolean;

  /**
   * @private
   */
  public native function set exactMatch(value:Boolean):void;

  /**
   A custom filter function which is passed each item in the <a href="Ext.util.MixedCollection.html">Ext.util.MixedCollection</a> in turn. Should return true to accept each item or false to reject it
   */
  public native function get filterFn():Function;

  /**
   * @private
   */
  public native function set filterFn(value:Function):void;

  /**
   The property to filter on. Required unless a <a href="output/Ext.util.Filter.html#Ext.util.Filter-filter">filter</a> is passed
   */
  public native function get property():String;

  /**
   * @private
   */
  public native function set property(value:String):void;

  /**
   Optional root property. This is mostly useful when filtering a Store, in which case we set the root to 'data' to make the filter pull the <a href="output/Ext.util.Filter.html#Ext.util.Filter-property">property</a> out of the data object of each item
   */
  public native function get root():String;

  /**
   * @private
   */
  public native function set root(value:String):void;


}
}
    