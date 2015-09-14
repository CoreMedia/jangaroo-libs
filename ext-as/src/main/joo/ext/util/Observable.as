package ext.util {
import flash.events.Event;
import flash.events.IEventDispatcher;

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
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.observable
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable Sencha Docs Ext JS 3.4
 */
[Native]
public class Observable implements IEventDispatcher {

  /**
   *
   *
   * @see ext.config.observable
   */
  public function Observable() {
    super();
  }

  /**
   * @inheritDoc
   */
  public native function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void;

  /**
   * @inheritDoc
   */
  public native function dispatchEvent(event:Event):Boolean;

  /**
   * @inheritDoc
   */
  public native function hasEventListener(type:String):Boolean;

  /**
   * @inheritDoc
   */
  public native function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void;

  /**
   * @inheritDoc
   */
  public native function willTrigger(type:String):Boolean;

  /**

   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-property-events Sencha Docs Ext JS 3.4
   */
  public native function get events():Object;

  /**
   * @private
   */
  public native function set events(value:Object):void;

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
   * Adds the specified events to the list of events which this Observable may fire.
   *
   * @param o Either an object with event names as properties with a value of <code>true</code> or the first event name string if multiple event names are being passed as separate parameters.
   * @param eventNames Event name if multiple event names are being passed as separate parameters. Usage:<pre><code>this.addEvents('storeloaded', 'storecleared');
   </code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-addEvents Sencha Docs Ext JS 3.4
   */
  public native function addEvents(o:*, ...eventNames:Array):void;

  /**
   * Appends an event handler to this object.
   *
   * @param eventName The name of the event to listen for.
   * @param handler The method the event invokes.
   * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to the object which fired the event.</b>
   * @param options An object containing handler configuration. properties. This may contain any of the following properties:<ul><li><b>scope</b> : Object<div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to the object which fired the event.</b></div></li><li><b>delay</b> : Number<div class="sub-desc">The number of milliseconds to delay the invocation of the handler after the event fires.</div></li><li><b>single</b> : Boolean<div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li><li><b>buffer</b> : Number<div class="sub-desc">Causes the handler to be scheduled to run in an <a href="Ext.util.DelayedTask.html">Ext.util.DelayedTask</a> delayed by the specified number of milliseconds. If the event fires again within that time, the original handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li><li><b>target</b> : Observable<div class="sub-desc">Only call the handler if the event was fired on the target Observable, <i>not</i> if the event was bubbled up from a child Observable.</div></li></ul><br/><p><b>Combining Options</b><br/>Using the options argument, it is possible to combine different types of listeners:<br/><br/>A delayed, one-time listener.</p><pre><code>myDataView.on('click', this.onClick, this, {
   single: true,
   delay: 100
   });</code></pre><p><b>Attaching multiple handlers in 1 call</b><br/>The method also allows for a single argument to be passed which is a config object containing properties which specify multiple handlers.</p><pre><code>myGridPanel.on({
   'click' : {
   fn: this.onClick,
   scope: this,
   delay: 100
   },
   'mouseover' : {
   fn: this.onMouseOver,
   scope: this
   },
   'mouseout' : {
   fn: this.onMouseOut,
   scope: this
   }
   });</code></pre><p>Or a shorthand syntax:<br/></p><pre><code>myGridPanel.on({
   'click' : this.onClick,
   'mouseover' : this.onMouseOver,
   'mouseout' : this.onMouseOut,
   scope: this
   });</code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-addListener Sencha Docs Ext JS 3.4
   */
  public native function addListener(eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Experimental: Adds a 'sequence' called after the original method.
   *
   * @param method name of the method after that the sequence is added
   * @param fn sequence function
   * @param scope scope in that the sequence function is called (default: this)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-afterMethod Sencha Docs Ext JS 3.4
   */
  public native function afterMethod(method:String, fn:Function, scope:Object = null):void;

  /**
   * Experimental: Adds an 'interceptor' called before the original method.
   *
   * @param method name of the method to intercept
   * @param fn interceptor function
   * @param scope scope in that the interceptor function is called (default: this)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-beforeMethod Sencha Docs Ext JS 3.4
   */
  public native function beforeMethod(method:String, fn:Function, scope:Object = null):void;

  /**
   * Starts capture on the specified Observable. All events will be passed to the supplied function with the event name + standard signature of the event <b>before</b> the event is fired. If the supplied function returns false, the event will not fire.
   *
   * @param o The Observable to capture events from.
   * @param fn The function to call when an event is fired.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the Observable firing the event.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-capture Sencha Docs Ext JS 3.4
   */
  public static native function capture(o:Observable, fn:Function, scope:Object = null):void;

  /**
   * Enables events fired by this Observable to bubble up an owner hierarchy by calling <code>this.getBubbleTarget()</code> if present. There is no implementation in the Observable base class.
   <p>This is commonly used by Ext.Components to bubble events to owner Containers. See <a href="Ext.Component.getBubbleTarget.html">Ext.Component.getBubbleTarget</a>. The default implementation in Ext.Component returns the Component's immediate owner. But if a known target is required, this can be overridden to access the required target more quickly.</p><p>Example:</p><pre><code>Ext.override(Ext.form.Field, {
   //  Add functionality to Field's initComponent to enable the change event to bubble
   initComponent : Ext.form.Field.prototype.initComponent.createSequence(function() {
   this.enableBubble('change');
   }),

   //  We know that we want Field's events to bubble directly to the FormPanel.
   getBubbleTarget : function() {
   if (!this.formPanel) {
   this.formPanel = this.findParentByType('form');
   }
   return this.formPanel;
   }
   });

   var myForm = new Ext.formPanel({
   title: 'User Details',
   items: [{
   ...
   }],
   listeners: {
   change: function() {
   // Title goes red if form has been modified.
   myForm.header.setStyle('color', 'red');
   }
   }
   });
   </code></pre>
   *
   * @param events The event name to bubble, or an Array of event names.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-enableBubble Sencha Docs Ext JS 3.4
   */
  public native function enableBubble(events:*):void;

  /**
   * Fires the specified event with the passed parameters (minus the event name).
   <p>An event may be set to bubble up an Observable parent hierarchy (See <a href="output/Ext.Component.html#Ext.Component-getBubbleTarget">Ext.Component.getBubbleTarget</a>) by calling <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">enableBubble</a>.</p>
   *
   * @param eventName The name of the event to fire.
   * @param args Variable number of parameters are passed to handlers.
   * @return returns false if any of the handlers return false otherwise it returns true.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-fireEvent Sencha Docs Ext JS 3.4
   */
  public native function fireEvent(eventName:String, ...args:Array):Boolean;

  /**
   * Checks to see if this object has any listeners for a specified event
   *
   * @param eventName The name of the event to check for
   * @return True if the event is being listened for, else false
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-hasListener Sencha Docs Ext JS 3.4
   */
  public native function hasListener(eventName:String):Boolean;

  /**
   * Sets observability on the passed class constructor.<p>This makes any event fired on any instance of the passed class also fire a single event through the <i>class</i> allowing for central handling of events on many instances at once.</p><p>Usage:</p><pre><code>Ext.util.Observable.observeClass(Ext.data.Connection);
   Ext.data.Connection.on('beforerequest', function(con, options) {
   console.log('Ajax request made to ' + options.url);
   });</code></pre>
   *
   * @param c The class constructor to make observable.
   * @param listeners An object containing a series of listeners to add. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-observeClass Sencha Docs Ext JS 3.4
   */
  public static native function observeClass(c:Class, listeners:Object = undefined):void;

  /**
   * Appends an event handler to this object (shorthand for <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a>.)
   *
   * @param eventName The type of event to listen for
   * @param handler The method the event invokes
   * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to the object which fired the event.</b>
   * @param options An object containing handler configuration.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-on Sencha Docs Ext JS 3.4
   */
  public native function on(eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Removes all listeners for this object
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-purgeListeners Sencha Docs Ext JS 3.4
   */
  public native function purgeListeners():void;

  /**
   * Relays selected events from the specified Observable as if the events were fired by <tt><b>this</b></tt>.
   *
   * @param o The Observable whose events this object is to relay.
   * @param events Array of event names to relay.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-relayEvents Sencha Docs Ext JS 3.4
   */
  public native function relayEvents(o:Object, events:Array):void;

  /**
   * Removes <b>all</b> added captures from the Observable.
   *
   * @param o The Observable to release
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-releaseCapture Sencha Docs Ext JS 3.4
   */
  public static native function releaseCapture(o:Observable):void;

  /**
   * Removes an event handler.
   *
   * @param eventName The type of event the handler was associated with.
   * @param handler The handler to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> call.</b>
   * @param scope The scope originally specified for the handler.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-removeListener Sencha Docs Ext JS 3.4
   */
  public native function removeListener(eventName:String, handler:Function, scope:Object = null):void;

  /**
   * Experimental: Remove an interceptor or a 'sequence'.
   *
   * @param method name of the method the interceptor or sequence function had been attached
   * @param fn interceptor or sequence function to remove
   * @param scope scope of the interceptor or sequence function (default: this)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-removeMethodListener Sencha Docs Ext JS 3.4
   */
  public native function removeMethodListener(method:String, fn:Function, scope:Object = null):void;

  /**
   * Resume firing events. (see <a href="output/Ext.util.Observable.html#Ext.util.Observable-suspendEvents">suspendEvents</a>) If events were suspended using the <tt><b>queueSuspended</b></tt> parameter, then all events fired during event suspension will be sent to any listeners now.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-resumeEvents Sencha Docs Ext JS 3.4
   */
  public native function resumeEvents():void;

  /**
   * Suspend the firing of all events. (see <a href="output/Ext.util.Observable.html#Ext.util.Observable-resumeEvents">resumeEvents</a>)
   *
   * @param queueSuspended Pass as true to queue up suspended events to be fired after the <a href="output/Ext.util.Observable.html#Ext.util.Observable-resumeEvents">resumeEvents</a> call instead of discarding all suspended events;
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-suspendEvents Sencha Docs Ext JS 3.4
   */
  public native function suspendEvents(queueSuspended:Boolean):void;

  /**
   * Removes an event handler (shorthand for <a href="output/Ext.util.Observable.html#Ext.util.Observable-removeListener">removeListener</a>.)
   *
   * @param eventName The type of event the handler was associated with.
   * @param handler The handler to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> call.</b>
   * @param scope The scope originally specified for the handler.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.Observable-method-un Sencha Docs Ext JS 3.4
   */
  public native function un(eventName:String, handler:Function, scope:Object = null):void;

}
}
    