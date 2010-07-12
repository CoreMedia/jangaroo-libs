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

import flash.events.Event;

/**
 *  Dispatched when the ICollectionView has been updated in some way.
 *
 *  @eventType mx.events.CollectionEvent.COLLECTION_CHANGE
 */
[Event(name="collectionChange", type="mx.events.CollectionEvent")]

/**
 * The ListCollectionView class adds the properties and methods of the
 * <code>ICollectionView</code> interface to an object that conforms to the
 * <code>IList</code> interface. As a result, you can pass an object of this class
 * to anything that requires an <code>IList</code> or <code>ICollectionView</code>.
 *
 * <p>This class also lets you use [ ] array notation
 * to access the <code>getItemAt()</code> and <code>setItemAt()</code> methods.
 * If you use code such as <code>myListCollectionView[index]</code>
 * Flex calls the <code>myListCollectionView</code> object's
 * <code>getItemAt()</code> or <code>setItemAt()</code> method.</p>
 * 
 * @mxml
 *
 *  <p>The <code>&lt;mx:ListCollectionView&gt;</code> has the following attributes,
 *  which all of its subclasses inherit:</p>
 *
 *  <pre>
 *  &lt;mx:ListCollectionView
 *  <b>Properties</b>
 *  filterFunction="null"
 *  list="null"
 *  sort="null"
 *  <b>Events</b>
 *  collectionChange="<i>No default</i>"
 *  /&gt;
 *  </pre>
 */
public class ListCollectionView
       implements IList
{
    include "../core/Version.asfragment";

    //--------------------------------------------------------------------------
    //
    // IList Methods
    //
    //--------------------------------------------------------------------------

    public function get length():int {
      throw new Error("not implemented");
    }

    public function getItemAt(index:int, prefetch:int = 0):Object {
      throw new Error("not implemented");
    }

    public function addItem(item:Object):void {
      throw new Error("not implemented");
    }

    public function toArray():Array {
      throw new Error("not implemented");
    }

    public function addItemAt(item:Object, index:int):void {
      throw new Error("not implemented");
    }

    public function getItemIndex(item:Object):int {
      throw new Error("not implemented");
    }

    public function itemUpdated(item:Object, property:Object = null, oldValue:Object = null, newValue:Object = null):void {
      throw new Error("not implemented");
    }

    public function removeAll():void {
      throw new Error("not implemented");
    }

    public function removeItemAt(index:int):Object {
      throw new Error("not implemented");
    }

    public function setItemAt(item:Object, index:int):Object {
      throw new Error("not implemented");
    }

    public function dispatchEvent(event:Event):Boolean {
      throw new Error("not implemented");
    }

    public function hasEventListener(type:String):Boolean {
      throw new Error("not implemented");
    }

    public function willTrigger(type:String):Boolean {
      throw new Error("not implemented");
    }

    public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void {
      throw new Error("not implemented");
    }

    public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void {
      throw new Error("not implemented");
    }
}
}
