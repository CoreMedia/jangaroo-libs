package ext.tree {

import ext.util.Observable;

/**
 * A TreeLoader provides for lazy loading of an <b class='link'>Ext.tree.TreeNode</b>'s child
 * nodes from a specified URL. The response must be a JavaScript Array definition
 * whose elements are node definition objects. e.g.:
 * <pre><code>
    [{
        id: 1,
        text: 'A leaf Node',
        leaf: true
    },{
        id: 2,
        text: 'A folder Node',
        children: [{
            id: 3,
            text: 'A child Node',
            leaf: true
        }]
   }]
</code></pre>
 * <br><br>
 * A server request is sent, and child nodes are loaded only when a node is expanded.
 * The loading node's id is passed to the server under the parameter name "node" to
 * enable the server to produce the correct child nodes.
 * <br><br>
 * To pass extra parameters, an event handler may be attached to the "beforeload"
 * event, and the parameters specified in the TreeLoader's baseParams property:
 * <pre><code>
    myTreeLoader.on("beforeload", function(treeLoader, node) {
        this.baseParams.category = node.attributes.category;
    }, this);
</code></pre>
 * This would pass an HTTP parameter called "category" to the server containing
 * the value of the Node's "category" attribute.
*/
public class TreeLoader extends Observable {
/**
 * @constructor
 * Creates a new Treeloader.
 * @param config A config object containing config properties.
 */
public native function TreeLoader(config : Object);
    /**
    * @cfg {String} dataUrl The URL from which to request a Json string which
    * specifies an array of node definition objects representing the child nodes
    * to be loaded.
    */
    /**
     * @cfg {String} requestMethod The HTTP request method for loading data (defaults to the value of <b class='link'>ext.Ajax#method</b>).
     */
    /**
     * @cfg {String} url Equivalent to <b class='link' title='#dataUrl'>dataUrl</b>.
     */
    /**
     * @cfg {Boolean} preloadChildren If set to true, the loader recursively loads "children" attributes when doing the first load on nodes.
     */
    /**
    * @cfg {Object} baseParams (optional) An object containing properties which
    * specify HTTP parameters to be passed to each request for child nodes.
    */
    /**
    * @cfg {Object} baseAttrs (optional) An object containing attributes to be added to all nodes
    * created by this loader. If the attributes sent by the server have an attribute in this object,
    * they take priority.
    */
    /**
    * @cfg {Object} uiProviders (optional) An object containing properties which
    * specify custom <b class='link'>Ext.tree.TreeNodeUI</b> implementations. If the optional
    * <i>uiProvider</i> attribute of a returned child node is a string rather
    * than a reference to a TreeNodeUI implementation, then that string value
    * is used as a property name in the uiProviders object.
    */
    public var uiProviders  : Object;
    /**
    * @cfg {Boolean} clearOnLoad (optional) Default to true. Remove previously existing
    * child nodes before loading.
    */
    public var clearOnLoad  : Boolean;
    /**
     * @cfg {Array/String} paramOrder Defaults to <code>undefined</code>. Only used when using directFn.
     * A list of params to be executed
     * server side.  Specify the params in the order in which they must be executed on the server-side
     * as either (1) an Array of String values, or (2) a String of params delimited by either whitespace,
     * comma, or pipe. For example,
     * any of the following would be acceptable:<pre><code>
paramOrder: ['param1','param2','param3']
paramOrder: 'param1 param2 param3'
paramOrder: 'param1,param2,param3'
paramOrder: 'param1|param2|param'
     </code></pre>
     */
    public var paramOrder : *;
    /**
     * @cfg {Boolean} paramsAsHash Only used when using directFn.
     * Send parameters as a collection of named arguments (defaults to <code>false</code>). Providing a
     * <code><b class='link' title='#paramOrder'>paramOrder</b></code> nullifies this configuration.
     */
    public var paramsAsHash : Boolean;
    /**
     * @cfg {Function} directFn
     * Function to call when executing a request.
     */
    public var directFn  : Function;
    /**
     * Load an <b class='link'>Ext.tree.TreeNode</b> from the URL specified in the constructor.
     * This is called automatically when a node is expanded, but may be used to reload
     * a node (or append new children if the <b class='link' title='#clearOnLoad'>clearOnLoad</b> option is false.)
     * @param node
     * @param callback
     * @param scope
     */
    public native function load(node : TreeNode, callback : Function, scope : Object) : void;
    public native function doPreload(node) : void;
    public native function getParams(node) : void;

  /**
   * Not documented in ExtJS 
   * @param node
   * @param callback
   * @param scope
   */
    public native function requestData(node : TreeNode, callback : Function, scope : Object) : void;
    public native function processDirectResponse(result, response, args) : void;
    protected native function runCallback(cb, scope, args) : void;
    public native function isLoading() : void;
    public native function abort() : void;
    /**
    * <p>Override this function for custom TreeNode node implementation, or to
    * modify the attributes at creation time.</p>
    * Example:<pre><code>
new Ext.tree.TreePanel({
    ...
    new Ext.tree.TreeLoader({
        url: 'dataUrl',
        createNode: function(attr) {
//          Allow consolidation consignments to have
//          consignments dropped into them.
            if (attr.isConsolidation) {
                attr.iconCls = 'x-consol',
                attr.allowDrop = true;
            }
            return Ext.tree.TreeLoader.prototype.call(this, attr);
        }
    }),
    ...
});
</code></pre>
    * @param attr {Object} The attributes from which to create the new node.
    */
    public native function createNode(attr) : void;
    public native function processResponse(response, node, callback, scope) : void;
    public native function handleResponse(response) : void;
    public native function handleFailure(response) : void;
}}
