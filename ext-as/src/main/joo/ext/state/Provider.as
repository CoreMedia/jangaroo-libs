package ext.state {

/**
 * Fires when a state change occurs.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:Provider</code>
 This state provider
 *       </li>

 *       <li>
 *           <code>key:String</code>
 The state key which was changed
 *       </li>

 *       <li>
 *           <code>value:String</code>
 The encoded value for the state
 *       </li>

 * </ul>
 */
[Event(name="statechange")]


/**
 * Abstract base class for state provider implementations. This class provides methods for encoding and decoding <b>typed</b> variables including dates and defines the Provider interface.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Provider Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.state.Provider")]
public class Provider {

  /**
   *
   *
   */
  public function Provider() {
    super();
  }

  /**
   * Clears a value from the state
   *
   * @param name The key name
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Provider-method-clear Sencha Docs Ext JS 3.4
   */
  public native function clear(name:String):void;

  /**
   * Decodes a string previously encoded with <a href="output/Ext.state.Provider.html#Ext.state.Provider-encodeValue">encodeValue</a>.
   *
   * @param value The value to decode
   * @return The decoded value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Provider-method-decodeValue Sencha Docs Ext JS 3.4
   */
  public native function decodeValue(value:String):*;

  /**
   * Encodes a value including type information. Decode with <a href="output/Ext.state.Provider.html#Ext.state.Provider-decodeValue">decodeValue</a>.
   *
   * @param value The value to encode
   * @return The encoded value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Provider-method-encodeValue Sencha Docs Ext JS 3.4
   */
  public native function encodeValue(value:*):String;

  /**
   * Returns the current value for a key
   *
   * @param name The key name
   * @param defaultValue A default value to return if the key's value is not found
   * @return The state data
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Provider-method-get Sencha Docs Ext JS 3.4
   */
  public native function get(name:String, defaultValue:*):*;

  /**
   * Sets the value for a key
   *
   * @param name The key name
   * @param value The value to set
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.state.Provider-method-set Sencha Docs Ext JS 3.4
   */
  public native function set(name:String, value:*):void;

}
}
    