package ext.config {

import joo.JavaScriptObject;

/**
 * Base class that provides a common interface for publishing events. Subclasses are expected to to have a property "events" with all the events defined, and, optionally, a property "listeners" with configured listeners defined.<br/>For example: <pre><code>Employee = Ext.extend(Ext.util.Observable, {
 constructor: function(config){
 this.name = config.name;
 this.addEvents({
 "fired" : true,
 "quit" : true
 });

 // Copy configured listeners into &#42;this&#42; object so that the base class's
 // constructor will add them.
 this.listeners = config.listeners;

 // Call our superclass constructor to complete construction process.
 Employee.superclass.constructor.call(this, config)
 }
 });
 </code></pre>This could then be used like this:<pre><code>var newEmployee = new Employee({
 name: employeeName,
 listeners: {
 quit: function() {
 // By default, "this" will be the object that fired the event.
 alert(this.name + " has quit!");
 }
 }
 });
 </code></pre>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Observable.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.util.Observable
 */
[ExtConfig(target="ext.util.Observable")]
public class observable extends JavaScriptObject {

  public function observable(config:Object = null) {
    super(config);
  }


  /**
   A config object containing one or more event handlers to be added to this object during initialization. This should be a valid listeners config object as specified in the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> example for attaching multiple handlers at once.
   <br/><p style="font-weight: bold"><u>DOM events from ExtJs <a href="Ext.Component.html">Components</a></u></p><br/><p>While <i>some</i> ExtJs Component classes export selected DOM events (e.g. "click", "mouseover" etc), this is usually only done when extra value can be added. For example the <a href="Ext.DataView.html">DataView</a>'s <b><code><a href="output/Ext.DataView.html#Ext.DataView-click">click</a></code></b> event passing the node clicked on. To access DOM events directly from a Component's HTMLElement, listeners must be added to the <i><a href="output/Ext.Component.html#Ext.Component-getEl">Element</a></i> after the Component has been rendered. A plugin can simplify this step:</p><pre><code>// Plugin is configured with a listeners config object.
   // The Component is appended to the argument list of all handler functions.
   Ext.DomObserver = Ext.extend(Object, {
   constructor: function(config) {
   this.listeners = config.listeners ? config.listeners : config;
   },

   // Component passes itself into plugin's init method
   init: function(c) {
   var p, l = this.listeners;
   for (p in l) {
   if (Ext.isFunction(l[p])) {
   l[p] = this.createHandler(l[p], c);
   } else {
   l[p].fn = this.createHandler(l[p].fn, c);
   }
   }

   // Add the listeners to the Element immediately following the render call
   c.render = c.render.<a href="output/Function.html#Function-createSequence">createSequence</a>(function() {
   var e = c.getEl();
   if (e) {
   e.on(l);
   }
   });
   },

   createHandler: function(fn, c) {
   return function(e) {
   fn.call(this, e, c);
   };
   }
   });

   var combo = new Ext.form.ComboBox({

   // Collapse combo when its element is clicked on
   plugins: [ new Ext.DomObserver({
   click: function(evt, comp) {
   comp.collapse();
   }
   })],
   store: myStore,
   typeAhead: true,
   mode: 'local',
   triggerAction: 'all'
   });
   </code></pre><br/><br/>
   */
  public native function get listeners():Object;

  /**
   * @private
   */
  public native function set listeners(value:Object):void;


}
}
    