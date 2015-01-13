package ext {


/**
 * This class encapsulates a <i>collection</i> of DOM elements, providing methods to filter members, or to perform collective actions upon the whole set.
 <p>Although they are not listed, this class supports all of the methods of <a href="Ext.Element.html">Ext.Element</a> and <a href="Ext.Fx.html">Ext.Fx</a>. The methods from these classes will be performed on all the elements in this collection.</p><p>All methods return <i>this</i> and can be chained.</p>Usage: <pre><code>var els = Ext.select("#some-el div.some-class", true);
 // or select directly from an existing element
 var el = Ext.get('some-el');
 el.select('div.some-class', true);

 els.setWidth(100); // all elements become 100 width
 els.hide(true); // all elements fade out and hide
 // or
 els.setWidth(100).hide(true);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.CompositeElement Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "CompositeElement")]
public class CompositeElement extends CompositeElementLite {

  /**
   *
   *
   */
  public function CompositeElement() {
    super();
  }

}
}
    