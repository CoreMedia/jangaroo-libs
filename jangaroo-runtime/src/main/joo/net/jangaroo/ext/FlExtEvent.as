/**
 * Abstract base class of all Jangaroo Ext event classes.
 */
package net.jangaroo.ext {

public class FlExtEvent {

  public function FlExtEvent(type:String, arguments:Array) {
    this['type'] = type;
    var parameterSequence:Array = this['self'].__PARAMETER_SEQUENCE__;
    for (var i:int = 0; i < parameterSequence.length; i++) {
      this[parameterSequence[i]] = arguments[i];
    }
  }

  /**
   * The type of event. The type is case-sensitive.
   * @see http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7e55.html Event objects
   *
   */
  public native function get type():String;

  /**
   * The options object passed to <a href="#!/api/Ext.util.Observable-method-addListener" rel="Ext.util.Observable-method-addListener" class="docClass">Ext.util.Observable.addListener</a>.
   */
  public native function get eOpts():Object;
}
}
