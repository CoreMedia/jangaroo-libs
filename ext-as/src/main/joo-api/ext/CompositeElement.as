package ext {

/**
 * Standard composite class. Creates a ext.Element for every element in the collection.
 * <br><br>
 * <b>NOTE: Although they are not listed, this class supports all of the set/update methods of ext.Element. All ext.Element
 * actions will be performed on all the elements in this collection.</b>
 * <br><br>
 * All methods return <i>this</i> and can be chained.
 <pre><code>
 var els = Ext.select("#some-el div.some-class", true);
 // or select directly from an existing element
 var el = Ext.get('some-el');
 el.select('div.some-class', true);

 els.setWidth(100); // all elements become 100 width
 els.hide(true); // all elements fade out and hide
 // or
 els.setWidth(100).hide(true);
 </code></pre>
 */
public class CompositeElement extends CompositeElementLite {
    override public native function invoke(fn, args) : void;
    /**
    * Adds elements to this composite.
    * @param els A string CSS selector, an array of elements or an element
    * @return this
    */
    override public native function add(els : *) : CompositeElementLite;
    /**
     * Returns the Element object at the specified index
     * @param index
     * @return 
     */
    override public native function item(index : Number) : Element;
    override public native function indexOf(el : *) : Number;
    override public native function filter(selector : String) : CompositeElement;
	/**
    * Calls the passed function passing (el, this, index) for each element in this composite.
    * @param fn The function to call
    * @param scope The <i>this</i> object (defaults to the element)
    * @return this
    */
    override public native function each(fn : Function, scope : Object = undefined) : CompositeElement;

}}
