package ext {
public class CompositeElementLite {
	public native function addElements(els, root) : void;
    /**
    * Clears this composite and adds the elements returned by the passed selector.
    * @param els A string CSS selector, an array of elements or an element
    * @return this
    */
    public native function fill(els : *) : CompositeElement;
    /**
     * Returns the first Element
     * @return 
     */
    public native function first() : Element;
    /**
     * Returns the last Element
     * @return 
     */
    public native function last() : Element;
    /**
     * Returns true if this composite contains the passed element
     * @param el The id of an element, or an ext.Element, or an HtmlElement to find within the composite collection.
     * @return 
     */
    public native function contains(el : *) : Boolean;
    /**
    * Filters this composite to only elements that match the passed selector.
    * @param selector A string CSS selector
    * @return this
    */
    public native function filter(selector : String) : CompositeElement;
    /**
    * Removes the specified element(s).
    * @param el The id of an element, the Element itself, the index of the element in this composite
    * or an array of any of those.
    * @param removeDom True to also remove the element from the document
    * @return this
    */
    public native function removeElement(el : *, removeDom : Boolean = undefined) : CompositeElement;
/**
 * Flyweight composite class. Reuses the same ext.Element for element operations.
 <pre><code>
 var els = Ext.select("#some-el div.some-class");
 // or select directly from an existing element
 var el = Ext.get('some-el');
 el.select('div.some-class');

 els.setWidth(100); // all elements become 100 width
 els.hide(true); // all elements fade out and hide
 // or
 els.setWidth(100).hide(true);
 </code></pre><br><br>
 * <b>NOTE: Although they are not listed, this class supports all of the set/update methods of ext.Element. All ext.Element
 * actions will be performed on all the elements in this collection.</b>
 */
	public var isComposite;
	/**
     * Returns the number of elements in this composite
     * @return 
     */
    public native function getCount() : Number;
	public native function add(els) : CompositeElementLite;
    public native function invoke(fn, args) : void;
    /**
     * Returns a flyweight Element of the dom element object at the specified index
     * @param index
     * @return 
     */
    public native function item(index : Number) : Element;
    public native function addListener(eventName, handler, scope, opt) : void;
    /**
    * Calls the passed function passing (el, this, index) for each element in this composite. <b>The element
    * passed is the flyweight (shared) ext.Element instance, so if you require a
    * a reference to the dom node, use el.dom.</b>
    * @param fn The function to call
    * @param scope The <i>this</i> object (defaults to the element)
    * @return this
    */
    public native function each(fn : Function, scope : Object = undefined) : CompositeElement;
    /**
     * Find the index of the passed element within the composite collection.
     * @param el The id of an element, or an ext.Element, or an HtmlElement to find within the composite collection.
     * @return The index of the passed ext.Element in the composite collection, or -1 if not found.
     */
    public native function indexOf(el : *) : Number;
    /**
    * Replaces the specified element with the passed element.
    * @param el The id of an element, the Element itself, the index of the element in this composite
    * to replace.
    * @param replacement The id of an element or the Element itself.
    * @param domReplace True to remove and replace the element in the document too.
    * @return this
    */    
    public native function replaceElement(el : *, replacement : *, domReplace : Boolean = undefined) : CompositeElement;
    /**
     * Removes all elements.
     */
    public native function clear() : void;
}}
