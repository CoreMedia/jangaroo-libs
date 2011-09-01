package ext {


/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#cls-Ext.CompositeElementLite Ext JS source
 */
public class CompositeElementLite {

  /**
   *
   *
   */
  public function CompositeElementLite() {
    super();
  }

  /**
   * Removes the specified element(s).
   *
   * @param el The id of an element, the Element itself, the index of the element in this composite or an array of any of those.
   * @param removeDom True to also remove the element from the document
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElementLite-removeElement Ext JS source
   */
  public native function removeElement(el:*, removeDom:Boolean = false):CompositeElement;

  /**
   * Replaces the specified element with the passed element.
   *
   * @param el The id of an element, the Element itself, the index of the element in this composite to replace.
   * @param replacement The id of an element or the Element itself.
   * @param domReplace True to remove and replace the element in the document too.
   * @return this
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/CompositeElement.html#method-Ext.CompositeElementLite-replaceElement Ext JS source
   */
  public native function replaceElement(el:*, replacement:*, domReplace:Boolean = false):CompositeElement;

}
}
    