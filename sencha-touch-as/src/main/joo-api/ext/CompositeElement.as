package ext {

import ext.form.Number;

/**
 * This class encapsulates a <i>collection</i> of DOM elements, providing methods to filter members, or to perform collective actions upon the whole set.
 Example:<pre><code>var els = Ext.select("#some-el div.some-class");
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

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#cls-Ext.CompositeElement Ext JS source
 */
[Native]
public class CompositeElement {

  /**
   *
   *
   */
  public function CompositeElement() {
    super();
  }

  /**
   The Array of DOM elements which this CompositeElement encapsulates.
   <p>This will not <i>usually</i> be accessed in developers' code, but developers wishing to augment the capabilities of the CompositeElement class may use it when adding methods to the class.</p><p>For example to add the <code>nextAll</code> method to the class to <b>add</b> all following siblings of selected elements, the code would be</p><pre><code>Ext.override(Ext.CompositeElement, {
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#prop-Ext.CompositeElement-elements Ext JS source
   */
  public native function get elements():Array;

  /**
   * Adds elements to this Composite object.
   *
   * @param els Either an Array of DOM elements to add, or another Composite object who's elements should be added.
   * @return This Composite object.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-add Ext JS source
   */
  public native function add(els:*):CompositeElement;

  /**
   * Removes all elements.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-clear Ext JS source
   */
  public native function clear():void;

  /**
   * Returns true if this composite contains the passed element
   *
   * @param el The id of an element, or an Ext.Element, or an HtmlElement to find within the composite collection.
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-contains Ext JS source
   */
  public native function contains(el:*):Boolean;

  /**
   * Calls the passed function for each element in this composite.

   *
   * @param fn The function to call. The function is passed the following parameters:<ul><li><b>el</b> : Element<div class="sub-desc">The current Element in the iteration. <b>This is the flyweight (shared) Ext.Element instance, so if you require a a reference to the dom node, use el.dom.</b></div></li><li><b>c</b> : Composite<div class="sub-desc">This Composite object.</div></li><li><b>idx</b> : Number<div class="sub-desc">The zero-based index in the iteration.</div></li></ul>
   * @param scope The scope (<i>this</i> reference) in which the function is executed. (defaults to the Element)
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-each Ext JS source
   */
  public native function each(fn:Function, scope:Object = null):CompositeElement;

  /**
   * Clears this Composite and adds the elements passed.
   *
   * @param els Either an array of DOM elements, or another Composite from which to fill this Composite.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-fill Ext JS source
   */
  public native function fill(els:*):CompositeElement;

  /**
   * Filters this composite to only elements that match the passed selector.
   *
   * @param selector A string CSS selector or a comparison function. The comparison function will be called with the following arguments:<ul><li><code>el</code> : Ext.Element<div class="sub-desc">The current DOM element.</div></li><li><code>index</code> : Number<div class="sub-desc">The current index within the collection.</div></li></ul>
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-filter Ext JS source
   */
  public native function filter(selector:*):CompositeElement;

  /**
   * Returns the first Element
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-first Ext JS source
   */
  public native function first():Element;

  /**
   * Returns the number of elements in this Composite.
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-getCount Ext JS source
   */
  public native function getCount():ext.form.Number;

  /**
   * Find the index of the passed element within the composite collection.
   *
   * @param el The id of an element, or an Ext.Element, or an HtmlElement to find within the composite collection.
   * @return The index of the passed Ext.Element in the composite collection, or -1 if not found.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-indexOf Ext JS source
   */
  public native function indexOf(el:*):ext.form.Number;

  /**
   * Returns a flyweight Element of the dom element object at the specified index
   *
   * @param index
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-item Ext JS source
   */
  public native function item(index:ext.form.Number):Element;

  /**
   * Returns the last Element
   *
   * @return
    * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElement-last Ext JS source
   */
  public native function last():Element;

}
}
    