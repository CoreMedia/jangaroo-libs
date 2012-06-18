package ext.util {


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
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#cls-Ext.util.Observable Ext JS source
 */
[Native]
public class Observable {

  /**
   *
   *
   * @see ext.config.observable
   */
  public function Observable() {
    super();
  }

  /**
   A config object containing one or more event handlers to be added to this object during initialization. This should be a valid listeners config object as specified in the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> example for attaching multiple handlers at once.
   <br/><p style="font-weight: bold"><u>DOM events from ExtJs <a href="Ext.Component.html">Components</a></u></p><br/><p>While <i>some</i> ExtJs Component classes export selected DOM events (e.g. "click", "mouseover" etc), this is usually only done when extra value can be added. For example the <a href="Ext.DataView.html">DataView</a>'s <b><code><a href="output/Ext.DataView.html#Ext.DataView-click">click</a></code></b> event passing the node clicked on. To access DOM events directly from a child element of a Component, we need to specify the <code>element</code> option to identify the Component property to add a DOM listener to:</p><pre><code>new Ext.Panel({
   width: 400,
   height: 200,
   dockedItems: [{
   xtype: 'toolbar'
   }],
   listeners: {
   click: {
   element: 'el', //bind to the underlying el property on the panel
   fn: function(){ console.log('click el'); }
   },
   dblclick: {
   element: 'body', //bind to the underlying body property on the panel
   fn: function(){ console.log('dblclick body'); }
   }
   }
   });
   </code></pre><br/><br/>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get listeners():Object;

  /**
   * Adds the specified events to the list of events which this Observable may fire.
   *
   * @param o Either an object with event names as properties with a value of <code>true</code> or the first event name string if multiple event names are being passed as separate parameters.
   * @param Optional Event name if multiple event names are being passed as separate parameters. Usage:<pre><code>this.addEvents('storeloaded', 'storecleared');
   </code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-addEvents Ext JS source
   */
  public native function addEvents(o:*, Optional:String):void;

  /**
   * Appends an event handler to this object.
   *
   * @param eventName The name of the event to listen for. May also be an object who's property names are event names. See
   * @param handler The method the event invokes.
   * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to the object which fired the event.</b>
   * @param options An object containing handler configuration. properties. This may contain any of the following properties:<ul><li><b>scope</b> : Object<div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to the object which fired the event.</b></div></li><li><b>delay</b> : Number<div class="sub-desc">The number of milliseconds to delay the invocation of the handler after the event fires.</div></li><li><b>single</b> : Boolean<div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li><li><b>buffer</b> : Number<div class="sub-desc">Causes the handler to be scheduled to run in an <a href="Ext.util.DelayedTask.html">Ext.util.DelayedTask</a> delayed by the specified number of milliseconds. If the event fires again within that time, the original handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li><li><b>target</b> : Observable<div class="sub-desc">Only call the handler if the event was fired on the target Observable, <i>not</i> if the event was bubbled up from a child Observable.</div></li><li><b>element</b> : String<div class="sub-desc"><b>This option is only valid for listeners bound to <a href="Ext.Component.html">Components</a>.</b> The name of a Component property which references an element to add a listener to. <p>This option is useful during Component construction to add DOM event listeners to elements of <a href="Ext.Component.html">Components</a> which will exist only after the Component is rendered. For example, to add a click listener to a Panel's body:</p><pre><code>new Ext.Panel({
   title: 'The title',
   listeners: {
   click: this.handlePanelClick,
   element: 'body'
   }
   });
   </code></pre><br/><br/> <p>When added in this way, the options available are the options applicable to <a href="output/Ext.Element.html#Ext.Element-addListener">Ext.Element.addListener</a></p></div></li></ul><br/><p><b>Combining Options</b><br/>Using the options argument, it is possible to combine different types of listeners:<br/><br/>A delayed, one-time listener.</p><pre><code>myPanel.on('hide', this.handleClick, this, {
   single: true,
   delay: 100
   });</code></pre><p><b>Attaching multiple handlers in 1 call</b><br/>The method also allows for a single argument to be passed which is a config object containing properties which specify multiple events. For example:</p><pre><code>myGridPanel.on({
   cellClick: this.onCellClick,
   mouseover: this.onMouseOver,
   mouseout: this.onMouseOut,
   scope: this // Important. Ensure "this" is correct during handler execution
   });
   </code></pre>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-addListener Ext JS source
   */
  public native function addListener(eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Adds listeners to any Observable object (or Element) which are automatically removed when this Component is destroyed.

   *
   * @param item The item to which to add a listener/listeners.
   * @param ename The event name, or an object containing event name properties.
   * @param fn If the <code>ename</code> parameter was an event name, this is the handler function.
   * @param scope If the <code>ename</code> parameter was an event name, this is the scope (<code>this</code> reference) in which the handler function is executed.
   * @param opt If the <code>ename</code> parameter was an event name, this is the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> options.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-addManagedListener Ext JS source
   */
  public native function addManagedListener(item:*, ename:*, fn:Function = null, scope:Object = null, opt:Object = null):void;

  /**
   * Starts capture on the specified Observable. All events will be passed to the supplied function with the event name + standard signature of the event <b>before</b> the event is fired. If the supplied function returns false, the event will not fire.
   *
   * @param o The Observable to capture events from.
   * @param fn The function to call when an event is fired.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to the Observable firing the event.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-capture Ext JS source
   */
  public static native function capture(o:Observable, fn:Function, scope:Object = null):void;

  /**
   * Removes all listeners for this object including the managed listeners
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-clearListeners Ext JS source
   */
  public native function clearListeners():void;

  /**
   * Removes all managed listeners for this object.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-clearManagedListeners Ext JS source
   */
  public native function clearManagedListeners():void;

  /**
   * Enables events fired by this Observable to bubble up an owner hierarchy by calling <code>this.getBubbleTarget()</code> if present. There is no implementation in the Observable base class.
   <p>This is commonly used by Ext.Components to bubble events to owner Containers. See <a href="Ext.Component.getBubbleTarget.html">Ext.Component.getBubbleTarget</a>. The default implementation in Ext.Component returns the Component's immediate owner. But if a known target is required, this can be overridden to access the required target more quickly.</p><p>Example:</p><pre><code>Ext.override(Ext.form.Field, {
   //  Add functionality to Field's initComponent to enable the change event to bubble
   initComponent : Ext.createSequence(Ext.form.Field.prototype.initComponent, function() {
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
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-enableBubble Ext JS source
   */
  public native function enableBubble(events:*):void;

  /**
   * Fires the specified event with the passed parameters (minus the event name).
   <p>An event may be set to bubble up an Observable parent hierarchy (See <a href="output/Ext.Component.html#Ext.Component-getBubbleTarget">Ext.Component.getBubbleTarget</a>) by calling <a href="output/Ext.util.Observable.html#Ext.util.Observable-enableBubble">enableBubble</a>.</p>
   *
   * @param eventName The name of the event to fire.
   * @param args Variable number of parameters are passed to handlers.
   * @return returns false if any of the handlers return false otherwise it returns true.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-fireEvent Ext JS source
   */
  public native function fireEvent(eventName:String, ...args:Array):Boolean;

  /**
   * Checks to see if this object has any listeners for a specified event
   *
   * @param eventName The name of the event to check for
   * @return True if the event is being listened for, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-hasListener Ext JS source
   */
  public native function hasListener(eventName:String):Boolean;

  /**
   * Sets observability on the passed class constructor.<p>This makes any event fired on any instance of the passed class also fire a single event through the <i>class</i> allowing for central handling of events on many instances at once.</p><p>Usage:</p><pre><code>Ext.util.Observable.observe(Ext.data.Connection);
   Ext.data.Connection.on('beforerequest', function(con, options) {
   console.log('Ajax request made to ' + options.url);
   });</code></pre>
   *
   * @param c The class constructor to make observable.
   * @param listeners An object containing a series of listeners to add. See <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-observe Ext JS source
   */
  public static native function observe(c:Function, listeners:Object):void;

  /**
   * Appends an event handler to this object (shorthand for <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a>.)
   *
   * @param eventName The type of event to listen for
   * @param handler The method the event invokes
   * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed. <b>If omitted, defaults to the object which fired the event.</b>
   * @param options An object containing handler configuration.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-on Ext JS source
   */
  public native function on(eventName:String, handler:Function, scope:Object = null, options:Object = null):void;

  /**
   * Relays selected events from the specified Observable as if the events were fired by <tt><b>this</b></tt>.
   *
   * @param o The Observable whose events this object is to relay.
   * @param events Array of event names to relay.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-relayEvents Ext JS source
   */
  public native function relayEvents(o:Object, events:Array):void;

  /**
   * Removes <b>all</b> added captures from the Observable.
   *
   * @param o The Observable to release
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-releaseCapture Ext JS source
   */
  public static native function releaseCapture(o:Observable):void;

  /**
   * Removes an event handler.
   *
   * @param eventName The type of event the handler was associated with.
   * @param handler The handler to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> call.</b>
   * @param scope The scope originally specified for the handler.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-removeListener Ext JS source
   */
  public native function removeListener(eventName:String, handler:Function, scope:Object = null):void;

  /**
   * Removes listeners that were added by the <a href="output/Ext.util.Observable.html#Ext.util.Observable-mon">mon</a> method.
   *
   * @param item The item from which to remove a listener/listeners.
   * @param ename The event name, or an object containing event name properties.
   * @param fn If the <code>ename</code> parameter was an event name, this is the handler function.
   * @param scope If the <code>ename</code> parameter was an event name, this is the scope (<code>this</code> reference) in which the handler function is executed.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-removeManagedListener Ext JS source
   */
  public native function removeManagedListener(item:*, ename:*, fn:Function = null, scope:Object = null):void;

  /**
   * Resume firing events. (see <a href="output/Ext.util.Observable.html#Ext.util.Observable-suspendEvents">suspendEvents</a>) If events were suspended using the <tt><b>queueSuspended</b></tt> parameter, then all events fired during event suspension will be sent to any listeners now.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-resumeEvents Ext JS source
   */
  public native function resumeEvents():void;

  /**
   * Suspend the firing of all events. (see <a href="output/Ext.util.Observable.html#Ext.util.Observable-resumeEvents">resumeEvents</a>)
   *
   * @param queueSuspended Pass as true to queue up suspended events to be fired after the <a href="output/Ext.util.Observable.html#Ext.util.Observable-resumeEvents">resumeEvents</a> call instead of discarding all suspended events;
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-suspendEvents Ext JS source
   */
  public native function suspendEvents(queueSuspended:Boolean):void;

  /**
   * Removes an event handler (shorthand for <a href="output/Ext.util.Observable.html#Ext.util.Observable-removeListener">removeListener</a>.)
   *
   * @param eventName The type of event the handler was associated with.
   * @param handler The handler to remove. <b>This must be a reference to the function passed into the <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener</a> call.</b>
   * @param scope The scope originally specified for the handler.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Observable.html#method-Ext.util.Observable-un Ext JS source
   */
  public native function un(eventName:String, handler:Function, scope:Object = null):void;

}
}
    