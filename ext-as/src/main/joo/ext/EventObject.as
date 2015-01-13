package ext {


/**
 * Just as <a href="Ext.Element.html">Ext.Element</a> wraps around a native DOM node, Ext.EventObject wraps the browser's native event-object normalizing cross-browser differences, such as which mouse button is clicked, keys pressed, mechanisms to stop event-propagation along with a method to prevent default actions from taking place. <p>For example:</p><pre><code>function handleClick(e, t){ // e is not a standard event object, it is a Ext.EventObject
 e.preventDefault();
 var target = e.getTarget(); // same as t (the target HTMLElement)
 ...
 }
 var myDiv = <a href="output/Ext.html#Ext-get">Ext.get</a>("myDiv");  // get reference to an <a href="Ext.Element.html">Ext.Element</a>
 myDiv.on(         // 'on' is shorthand for addListener
 "click",      // perform an action on click of myDiv
 handleClick   // reference to the action handler
 );
 // other methods to do the same:
 Ext.EventManager.on("myDiv", 'click', handleClick);
 Ext.EventManager.addListener("myDiv", 'click', handleClick);
 </code></pre>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *
 * @see ext.IEventObject
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.EventObject Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "EventObject")]
public const EventObject:IEventObject;

}
