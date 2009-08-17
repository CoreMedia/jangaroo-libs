package ext.direct {
/**
 * <p>Supporting Class for ext.Direct (not intended to be used directly).</p>
*/
public class Transaction extends Object {
/**
 * @constructor
 * @param config
 */
    public native function send(config : Object) : void;
    public native function retry() : void;
    public native function getProvider() : void;
}}
