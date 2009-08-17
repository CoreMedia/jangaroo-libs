package ext.state {
/**
 * Abstract base class for state provider implementations. This class provides methods
 * for encoding and decoding <b>typed</b> variables including dates and defines the
 * Provider interface.
 */
public class Provider {
    /**
     * Returns the current value for a key
     * @param name The key name
     * @param defaultValue A default value to return if the key's value is not found
     * @return The state data
     */
    public native function get(name : String, defaultValue : *) : *;
    /**
     * Clears a value from the state
     * @param name The key name
     */
    public native function clear(name : String) : void;
    /**
     * Sets the value for a key
     * @param name The key name
     * @param value The value to set
     */
    public native function set(name : String, value : *) : void;
    /**
     * Decodes a string previously encoded with <b class='link'>#encodeValue</b>.
     * @param value The value to decode
     * @return The decoded value
     */
    public native function decodeValue(value : String) : *;
    /**
     * Encodes a value including type information.  Decode with <b class='link'>#decodeValue</b>.
     * @param value The value to encode
     * @return The encoded value
     */
    public native function encodeValue(value : *) : String;
}}
