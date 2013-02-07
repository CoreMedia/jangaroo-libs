package ext.tree {
import ext.config.treeloader;
import ext.util.Observable;

/**
 * Fires before a network request is made to retrieve the Json text which specifies a node's children.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>This:Object</code>
 TreeLoader object.
 *       </li>

 *       <li>
 *           <code>node:Object</code>
 The <a href="Ext.tree.TreeNode.html">Ext.tree.TreeNode</a> object being loaded.
 *       </li>

 *       <li>
 *           <code>callback:Object</code>
 The callback function specified in the <a href="output/Ext.tree.TreeLoader.html#Ext.tree.TreeLoader-load">load</a> call.
 *       </li>

 * </ul>
 */
[Event(name="beforeload")]

/**
 * Fires when the node has been successfuly loaded.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>This:Object</code>
 TreeLoader object.
 *       </li>

 *       <li>
 *           <code>node:Object</code>
 The <a href="Ext.tree.TreeNode.html">Ext.tree.TreeNode</a> object being loaded.
 *       </li>

 *       <li>
 *           <code>response:Object</code>
 The response object containing the data from the server.
 *       </li>

 * </ul>
 */
[Event(name="load")]

/**
 * Fires if the network request failed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>This:Object</code>
 TreeLoader object.
 *       </li>

 *       <li>
 *           <code>node:Object</code>
 The <a href="Ext.tree.TreeNode.html">Ext.tree.TreeNode</a> object being loaded.
 *       </li>

 *       <li>
 *           <code>response:Object</code>
 The response object containing the data from the server.
 *       </li>

 * </ul>
 */
[Event(name="loadexception")]


/**
 * A TreeLoader provides for lazy loading of an <a href="Ext.tree.TreeNode.html">Ext.tree.TreeNode</a>'s child nodes from a specified URL. The response must be a JavaScript Array definition whose elements are node definition objects. e.g.: <pre><code>   [{
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
 </code></pre><br/><br/>A server request is sent, and child nodes are loaded only when a node is expanded. The loading node's id is passed to the server under the parameter name "node" to enable the server to produce the correct child nodes. <br/><br/>To pass extra parameters, an event handler may be attached to the "beforeload" event, and the parameters specified in the TreeLoader's baseParams property: <pre><code>   myTreeLoader.on("beforeload", function(treeLoader, node) {
 this.baseParams.category = node.attributes.category;
 }, this);
 </code></pre>This would pass an HTTP parameter called "category" to the server containing the value of the Node's "category" attribute.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.treeloader
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeLoader Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.tree.TreeLoader")]
public class TreeLoader extends Observable {

  /**
   * Creates a new Treeloader.
   *
   * @param config A config object containing config properties.
   * @see ext.config.treeloader
   */
  public function TreeLoader(config:treeloader) {
    super();
  }

  /**
   An object containing attributes to be added to all nodes created by this loader. If the attributes sent by the server have an attribute in this object, they take priority.
   */
  public native function get baseAttrs():Object;

  /**
   An object containing properties which specify HTTP parameters to be passed to each request for child nodes.
   */
  public native function get baseParams():Object;

  /**
   Default to true. Remove previously existing child nodes before loading.
   */
  public native function get clearOnLoad():Boolean;

  /**
   The URL from which to request a Json string which specifies an array of node definition objects representing the child nodes to be loaded.
   */
  public native function get dataUrl():String;

  /**
   The name of the parameter sent to the server which contains the identifier of the node. Defaults to <tt>'node'</tt>.
   */
  public native function get nodeParameter():String;

  /**
   Defaults to <tt>undefined</tt>. Only used when using directFn. Specifies the params in the order in which they must be passed to the server-side Direct method as either (1) an Array of String values, or (2) a String of params delimited by either whitespace, comma, or pipe. For example, any of the following would be acceptable:<pre><code>nodeParameter: 'node',
   paramOrder: ['param1','param2','param3']
   paramOrder: 'node param1 param2 param3'
   paramOrder: 'param1,node,param2,param3'
   paramOrder: 'param1|param2|param|node'
   </code></pre>
   */
  public native function get paramOrder():*;

  /**
   Only used when using directFn. Send parameters as a collection of named arguments (defaults to <tt>false</tt>). Providing a <tt><a href="output/Ext.tree.TreeLoader.html#Ext.tree.TreeLoader-paramOrder">paramOrder</a></tt> nullifies this configuration.
   */
  public native function get paramsAsHash():Boolean;

  /**
   If set to true, the loader recursively loads "children" attributes when doing the first load on nodes.
   */
  public native function get preloadChildren():Boolean;

  /**
   The HTTP request method for loading data (defaults to the value of <a href="output/Ext.Ajax.html#Ext.Ajax-method">Ext.Ajax.method</a>).
   */
  public native function get requestMethod():String;

  /**
   An object containing properties which specify custom <a href="Ext.tree.TreeNodeUI.html">Ext.tree.TreeNodeUI</a> implementations. If the optional <i>uiProvider</i> attribute of a returned child node is a string rather than a reference to a TreeNodeUI implementation, then that string value is used as a property name in the uiProviders object.
   */
  public native function get uiProviders():Object;

  /**
   Equivalent to <a href="output/Ext.tree.TreeLoader.html#Ext.tree.TreeLoader-dataUrl">dataUrl</a>.
   */
  public native function get url():String;

  /**
   * Override this function for custom TreeNode node implementation, or to modify the attributes at creation time.
   Example:<pre><code>new Ext.tree.TreePanel({
   ...
   loader: new Ext.tree.TreeLoader({
   url: 'dataUrl',
   createNode: function(attr) {
   //          Allow consolidation consignments to have
   //          consignments dropped into them.
   if (attr.isConsolidation) {
   attr.iconCls = 'x-consol',
   attr.allowDrop = true;
   }
   return Ext.tree.TreeLoader.prototype.createNode.call(this, attr);
   }
   }),
   ...
   });
   </code></pre>
   *
   * @param attr The attributes from which to create the new node.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeLoader-method-createNode Sencha Docs Ext JS 3.4
   */
  public native function createNode(attr:Object):void;

  /**
   * Load an <a href="Ext.tree.TreeNode.html">Ext.tree.TreeNode</a> from the URL specified in the constructor. This is called automatically when a node is expanded, but may be used to reload a node (or append new children if the <a href="output/Ext.tree.TreeLoader.html#Ext.tree.TreeLoader-clearOnLoad">clearOnLoad</a> option is false.)
   *
   * @param node
   * @param callback Function to call after the node has been loaded. The function is passed the TreeNode which was requested to be loaded.
   * @param scope The scope (<code>this</code> reference) in which the callback is executed. defaults to the loaded TreeNode.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.tree.TreeLoader-method-load Sencha Docs Ext JS 3.4
   */
  public native function load(node:TreeNode, callback:Function, scope:Object):void;

}
}
    