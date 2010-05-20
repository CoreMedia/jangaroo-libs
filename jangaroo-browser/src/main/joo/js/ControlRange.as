package js {

public interface ControlRange extends TextRange {

  /**
   * Adds an element to the areas, controlRange, or options  collection.
   * <p>New for Internet Explorer 8 Internet Explorer 8. In IE8 mode, oBefore  also accepts an Object that specifies
   * the object before which to insert the element. For more information, see Defining Document Compatibility.
   * <p>Before you can add an element to a collection, you must create it first by using the createElement method.
   * @param element
   * @param before specifies the index position in the collection where the element is placed. If no value is given,
   *   the method places the element at the end of the collection.
   */
  function add(element:Element, before:int = undefined):void;

  function addElement(element:Element):void;

}
}