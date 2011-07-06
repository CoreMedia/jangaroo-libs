package ext.config {


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
 * <p>This class serves as a typed config object for constructor of class TreeLoader.</p>
 *
 * @see ext.tree.TreeLoader
 */
[ExtConfig(target="ext.tree.TreeLoader")]
public class treeloader extends observable {

  public function treeloader(config:Object = null) {

    super(config);
  }


  /**
   An object containing attributes to be added to all nodes created by this loader. If the attributes sent by the server have an attribute in this object, they take priority.
   */
  public native function get baseAttrs():Object;

  /**
   * @private
   */
  public native function set baseAttrs(value:Object):void;

  /**
   An object containing properties which specify HTTP parameters to be passed to each request for child nodes.
   */
  public native function get baseParams():Object;

  /**
   * @private
   */
  public native function set baseParams(value:Object):void;

  /**
   Default to true. Remove previously existing child nodes before loading.
   */
  public native function get clearOnLoad():Boolean;

  /**
   * @private
   */
  public native function set clearOnLoad(value:Boolean):void;

  /**
   The URL from which to request a Json string which specifies an array of node definition objects representing the child nodes to be loaded.
   */
  public native function get dataUrl():String;

  /**
   * @private
   */
  public native function set dataUrl(value:String):void;

  /**
   Function to call when executing a request.
   */
  public native function get directFn():Function;

  /**
   * @private
   */
  public native function set directFn(value:Function):void;

  /**
   The name of the parameter sent to the server which contains the identifier of the node. Defaults to <tt>'node'</tt>.
   */
  public native function get nodeParameter():String;

  /**
   * @private
   */
  public native function set nodeParameter(value:String):void;

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
   * @private
   */
  public native function set paramOrder(value:*):void;

  /**
   Only used when using directFn. Send parameters as a collection of named arguments (defaults to <tt>false</tt>). Providing a <tt><a href="output/Ext.tree.TreeLoader.html#Ext.tree.TreeLoader-paramOrder">paramOrder</a></tt> nullifies this configuration.
   */
  public native function get paramsAsHash():Boolean;

  /**
   * @private
   */
  public native function set paramsAsHash(value:Boolean):void;

  /**
   If set to true, the loader recursively loads "children" attributes when doing the first load on nodes.
   */
  public native function get preloadChildren():Boolean;

  /**
   * @private
   */
  public native function set preloadChildren(value:Boolean):void;

  /**
   The HTTP request method for loading data (defaults to the value of <a href="output/Ext.Ajax.html#Ext.Ajax-method">Ext.Ajax.method</a>).
   */
  public native function get requestMethod():String;

  /**
   * @private
   */
  public native function set requestMethod(value:String):void;

  /**
   An object containing properties which specify custom <a href="Ext.tree.TreeNodeUI.html">Ext.tree.TreeNodeUI</a> implementations. If the optional <i>uiProvider</i> attribute of a returned child node is a string rather than a reference to a TreeNodeUI implementation, then that string value is used as a property name in the uiProviders object.
   */
  public native function get uiProviders():Object;

  /**
   * @private
   */
  public native function set uiProviders(value:Object):void;

  /**
   Equivalent to <a href="output/Ext.tree.TreeLoader.html#Ext.tree.TreeLoader-dataUrl">dataUrl</a>.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;


}
}
    