////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2005-2007 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.collections
{

/**
 *  The ArrayCollection class is a wrapper class that exposes an Array as
 *  a collection that can be accessed and manipulated using the methods
 *  and properties of the <code>ICollectionView</code> or <code>IList</code>
 *  interfaces. Operations on a ArrayCollection instance modify the data source;
 *  for example, if you use the <code>removeItemAt()</code> method on an
 *  ArrayCollection, you remove the item from the underlying Array.
 *
 *  @mxml
 *
 *  <p>The <code>&lt;mx:ArrayCollection&gt;</code> tag inherits all the attributes of its
 *  superclass, and adds the following attributes:</p>
 *
 *  <pre>
 *  &lt;mx:ArrayCollection
 *  <b>Properties</b>
 *  source="null"
 *  /&gt;
 *  </pre>
 *
 *  @example The following code creates a simple ArrayCollection object that
 *  accesses and manipulates an array with a single Object element.
 *  It retrieves the element using the IList interface <code>getItemAt</code>
 *  method and an IViewCursor object that it obtains using the ICollectionView
 *  <code>createCursor</code> method.
 *  <pre>
 *  var myCollection:ArrayCollection = new ArrayCollection([ { first: 'Matt', last: 'Matthews' } ]);
 *  var myCursor:IViewCursor = myCollection.createCursor();
 *  var firstItem:Object = myCollection.getItemAt(0);
 *  var firstItemFromCursor:Object = myCursor.current;
 *  if (firstItem == firstItemFromCursor)
 *        doCelebration();
 *  </pre>
 */
public class ArrayCollection extends ListCollectionView
{
  include "../core/Version.asfragment";

  //--------------------------------------------------------------------------
  //
  //  Constructor
  //
  //--------------------------------------------------------------------------

  /**
   *  Constructor.
   *
   *  <p>Creates a new ArrayCollection using the specified source array.
   *  If no array is specified an empty array will be used.</p>
   */
  public function ArrayCollection(source:Array = undefined)
  {
    super();

    if (source) {
      for (var i:uint = 0; i < source.length; ++i) {
        this[i] = source[i];
      }
      this.length = source.length;
    }
  }

  //--------------------------------------------------------------------------
  //
  // IList Methods
  //
  //--------------------------------------------------------------------------

  /**
   * @inheritDoc
   */
  override public function getItemAt(index:int, prefetch:int = 0):Object {
    if (index < 0 || index >= length)
    {
      throw new /*Range*/Error("[collections] outOfBounds: " + index);
    }

    return this[index];
  }

  /**
   * @inheritDoc
   */
  override public function addItem(item:Object):void {
    this[length++] = item;
  }

  /**
   * @inheritDoc
   */
  override public function toArray():Array {
    var result:Array = [];
    for (var i:uint = 0; i < length; ++i) {
      result[i] = this[i];
    }
    return result;
  }

  /**
   * @inheritDoc
   */
  override public function getItemIndex(item:Object):int {
    return indexOf(item);
  }

  /**
   * @inheritDoc
   */
  override public function removeAll():void {
    length = 0;
  }

  /**
   * @inheritDoc
   */
  override public function setItemAt(item:Object, index:int):Object {
    var oldItem:Object = getItemAt(index);
    this[index] = item;
    return oldItem;
  }

}
}
