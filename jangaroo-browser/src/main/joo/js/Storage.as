package js {

/**
 * @see http://dev.w3.org/html5/webstorage/#storage-0 WhatWG Storage Interface 
 */
[Native("Storage")]
public interface Storage {

  function get length():uint;

  function key(index:uint):String;

  function setItem(key:String, value:String):void;

  function getItem(key:String):String;

  function removeItem(key:String):void;

  function clear():void;
}
}