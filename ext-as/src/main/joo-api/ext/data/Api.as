package ext.data {
/**
 * ext.data.Api is a singleton designed to manage the data API including methods
 * for validating a developer's DataProxy API.  Defines variables for CRUD actions
 * create, read, update and destroy in addition to a mapping of RESTful HTTP methods
 * GET, POST, PUT and DELETE to CRUD actions.
*/
public class Api extends Object {
/**
 * @singleton
 */
        /**
         * Defined actions corresponding to remote actions:
         * <pre><code>
actions&#58; {
    create  : 'create',  // Text representing the remote-action to create records on server.
    read    : 'read',    // Text representing the remote-action to read/load data from server.
    update  : 'update',  // Text representing the remote-action to update records on server.
    destroy : 'destroy'  // Text representing the remote-action to destroy records on server.
}
         * </code></pre>
         * @property actions
         */
        public static var actions  : Object;
        /**
         * Defined {CRUD action}:{HTTP method} pairs to associate HTTP methods with the
         * corresponding actions for <b class='link' title='ext.data.DataProxy#restful RESTful'>proxies</b>.
         * Defaults to:
         * <pre><code>
restActions : {
    create  : 'POST',
    read    : 'GET',
    update  : 'PUT',
    destroy : 'DELETE'
},
         * </code></pre>
         */
        public static var restActions ;
        /**
         * Returns true if supplied action-name is a valid API action defined in <code><b class='link' title='#actions'>actions</b></code> constants
         * @param action
         * @param actions List of available CRUD actions.  Pass in list when executing multiple times for efficiency.
         * @return 
         */
        public static native function isAction(action : String, actions : Array = null) : Boolean;
        /**
         * Returns the actual CRUD action KEY "create", "read", "update" or "destroy" from the supplied action-name.  This method is used internally and shouldn't generally
         * need to be used directly.  The key/value pair of ext.data.Api.actions will often be identical but this is not necessarily true.  A developer can override this naming
         * convention if desired.  However, the framework internally calls methods based upon the KEY so a way of retrieving the the words "create", "read", "update" and "destroy" is
         * required.  This method will cache discovered KEYS into the private validActions hash.
         * @param name The runtime name of the action.
         * @return |null} returns the action-key, or verb of the user-action or null if invalid.
         * @nodoc
         */
        public static native function getVerb(name : String) : String;
        /**
         * Returns true if the supplied API is valid; that is, check that all keys match defined actions
         * otherwise returns an array of mistakes.
         * @return ]||true}
         */
        public static native function isValid(api) : String;
        /**
         * Returns true if the supplied verb upon the supplied proxy points to a unique url in that none of the other api-actions
         * point to the same url.  The question is important for deciding whether to insert the "xaction" HTTP parameter within an
         * Ajax request.  This method is used internally and shouldn't generally need to be called directly.
         * @param proxy
         * @param verb
         * @return 
         */
        public static native function hasUniqueUrl(proxy : DataProxy, verb : String) : Boolean;
        /**
         * This method is used internally by <code><b class='link' title='ext.data.DataProxy'>DataProxy</b></code> and should not generally need to be used directly.
         * Each action of a DataProxy api can be initially defined as either a String or an Object.  When specified as an object,
         * one can explicitly define the HTTP method (GET|POST) to use for each CRUD action.  This method will prepare the supplied API, setting
         * each action to the Object form.  If your API-actions do not explicitly define the HTTP method, the "method" configuration-parameter will
         * be used.  If the method configuration parameter is not specified, POST will be used.
         <pre><code>
new ext.data.HttpProxy({
    method&#58; "POST",     // <-- default HTTP method when not specified.
    api&#58; {
        create&#58; 'create.php',
        load&#58; 'read.php',
        save&#58; 'save.php',
        destroy&#58; 'destroy.php'
    }
});

&#47;/ Alternatively, one can use the object-form to specify the API
new ext.data.HttpProxy({
    api&#58; {
        load&#58; {url: 'read.php', method: 'GET'},
        create&#58; 'create.php',
        destroy&#58; 'destroy.php',
        save&#58; 'update.php'
    }
});
        </code></pre>
         *
         * @param proxy
         */
        public static native function prepare(proxy : DataProxy) : void;
        /**
         * Prepares a supplied Proxy to be RESTful.  Sets the HTTP method for each api-action to be one of
         * GET, POST, PUT, DELETE according to the defined <b class='link' title='#restActions'>restActions</b>.
         * @param proxy
         */
        public static native function restify(proxy : DataProxy) : void;
}}
