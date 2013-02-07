package ext {


/**
 * This class encapsulates a <i>collection</i> of DOM elements, providing methods to filter members, or to perform collective actions upon the whole set.
 <p>Although they are not listed, this class supports all of the methods of <a href="Ext.Element.html">Ext.Element</a> and <a href="Ext.Fx.html">Ext.Fx</a>. The methods from these classes will be performed on all the elements in this collection.</p>Example:<pre><code>var els = Ext.select("#some-el div.some-class");
 // or select directly from an existing element
 var el = Ext.get('some-el');
 el.select('div.some-class');

 els.setWidth(100); // all elements become 100 width
 els.hide(true); // all elements fade out and hide
 // or
 els.setWidth(100).hide(true);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.CompositeElementLite")]
public class CompositeElementLite
 {

  /**
   *
   *
   */
  public function CompositeElementLite() {
    super();
  }

  /**
   The Array of DOM elements which this CompositeElement encapsulates.
   <p>This will not <i>usually</i> be accessed in developers' code, but developers wishing to augment the capabilities of the CompositeElementLite class may use it when adding methods to the class.</p><p>For example to add the <code>nextAll</code> method to the class to <b>add</b> all following siblings of selected elements, the code would be</p><pre><code>Ext.override(Ext.CompositeElementLite, {
   nextAll: function() {
   var els = this.elements, i, l = els.length, n, r = [], ri = -1;

   //      Loop through all elements in this Composite, accumulating
   //      an Array of all siblings.
   for (i = 0; i &lt; l; i++) {
   for (n = els[i].nextSibling; n; n = n.nextSibling) {
   r[++ri] = n;
   }
   }

   //      Add all found siblings to this Composite
   return this.add(r);
   }
   });</code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-property-elements Sencha Docs Ext JS 3.4
   */
  public native function get elements():Array;

  /**
   * Adds elements to this Composite object.
   *
   * @param els Either an Array of DOM elements to add, or another Composite object who's elements should be added.
   * @return This Composite object.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-add Sencha Docs Ext JS 3.4
   */
  public native function add(els:*):CompositeElement;

  /**
   * Removes all elements.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-clear Sencha Docs Ext JS 3.4
   */
  public native function clear():void;

  /**
   * Returns true if this composite contains the passed element
   *
   * @param el The id of an element, or an Ext.Element, or an HtmlElement to find within the composite collection.
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-contains Sencha Docs Ext JS 3.4
   */
  public native function contains(el:*):Boolean;

  /**
   * Calls the passed function for each element in this composite.

   *
   * @param fn The function to call. The function is passed the following parameters:<ul><li><b>el</b> : Element<div class="sub-desc">The current Element in the iteration. <b>This is the flyweight (shared) Ext.Element instance, so if you require a a reference to the dom node, use el.dom.</b></div></li><li><b>c</b> : Composite<div class="sub-desc">This Composite object.</div></li><li><b>idx</b> : Number<div class="sub-desc">The zero-based index in the iteration.</div></li></ul>
   * @param scope The scope (<i>this</i> reference) in which the function is executed. (defaults to the Element)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-each Sencha Docs Ext JS 3.4
   */
  public native function each(fn:Function, scope:Object = null):CompositeElement;

  /**
   * Clears this Composite and adds the elements passed.
   *
   * @param els Either an array of DOM elements, or another Composite from which to fill this Composite.
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-fill Sencha Docs Ext JS 3.4
   */
  public native function fill(els:*):CompositeElement;

  /**
   * Filters this composite to only elements that match the passed selector.
   *
   * @param selector A string CSS selector or a comparison function. The comparison function will be called with the following arguments:<ul><li><code>el</code> : Ext.Element<div class="sub-desc">The current DOM element.</div></li><li><code>index</code> : Number<div class="sub-desc">The current index within the collection.</div></li></ul>
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-filter Sencha Docs Ext JS 3.4
   */
  public native function filter(selector:*):CompositeElement;

  /**
   * Returns the first Element
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-first Sencha Docs Ext JS 3.4
   */
  public native function first():Element;

  /**
   * Returns the number of elements in this Composite.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-getCount Sencha Docs Ext JS 3.4
   */
  public native function getCount():Number;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-importElementMethods Sencha Docs Ext JS 3.4
   */
  public native function importElementMethods():void;

  /**
   * Find the index of the passed element within the composite collection.
   *
   * @param el The id of an element, or an Ext.Element, or an HtmlElement to find within the composite collection.
   * @return The index of the passed Ext.Element in the composite collection, or -1 if not found.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-indexOf Sencha Docs Ext JS 3.4
   */
  public native function indexOf(el:*):Number;

  /**
   * Returns a flyweight Element of the dom element object at the specified index
   *
   * @param index
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-item Sencha Docs Ext JS 3.4
   */
  public native function item(index:Number):Element;

  /**
   * Returns the last Element
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-last Sencha Docs Ext JS 3.4
   */
  public native function last():Element;

  /**
   * Removes the specified element(s).
   *
   * @param el The id of an element, the Element itself, the index of the element in this composite or an array of any of those.
   * @param removeDom True to also remove the element from the document
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-removeElement Sencha Docs Ext JS 3.4
   */
  public native function removeElement(el:*, removeDom:Boolean = false):CompositeElement;

  /**
   * Replaces the specified element with the passed element.
   *
   * @param el The id of an element, the Element itself, the index of the element in this composite to replace.
   * @param replacement The id of an element or the Element itself.
   * @param domReplace True to remove and replace the element in the document too.
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElementLite-method-replaceElement Sencha Docs Ext JS 3.4
   */
  public native function replaceElement(el:*, replacement:*, domReplace:Boolean = false):CompositeElement;

}
}
    