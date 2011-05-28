package ext.util {
/**
 * Base class that provides a common interface for publishing events. Subclasses are expected to
 * to have a property "events" with all the events defined, and, optionally, a property "listeners"
 * with configured listeners defined.<br>
 * For example:
 * <pre><code>
Employee = Ext.extend(Ext.util.Observable, {
    constructor: function(config){
        this.name = config.name;
        this.addEvents({
            "fired" : true,
            "quit" : true
        });

        // Copy configured listeners into *this* object so that the base class&#39;s
        // constructor will add them.
        this.listeners = config.listeners;

        // Call our superclass constructor to complete construction process.
        Employee.superclass.constructor.call(config)
    }
});
</code></pre>
 * This could then be used like this:<pre><code>
var newEmployee = new Employee({
    name: employeeName,
    listeners: {
        quit: function() {
            // By default, "this" will be the object that fired the event.
            alert(this.name + " has quit!");
        }
    }
});
</code></pre>
 */
public class Observable {
/**
     * @cfg {Object} listeners (optional) <p>A config object containing one or more event handlers to be added to this
     * object during initialization.  This should be a valid listeners config object as specified in the
     * <b class='link' title='#addListener'>addListener</b> example for attaching multiple handlers at once.</p>
     * <br><p><b><u>DOM events from ExtJs <b class='link' title='ext.Component'>Components</b></u></b></p>
     * <br><p>While <i>some</i> ExtJs Component classes export selected DOM events (e.g. "click", "mouseover" etc), this
     * is usually only done when extra value can be added. For example the <b class='link' title='ext.DataView'>DataView</b>'s
     * <b><code><b class='link' title='ext.DataView#click'>click</b></code></b> event passing the node clicked on. To access DOM
     * events directly from a Component's HTMLElement, listeners must be added to the <i><b class='link' title='ext.Component#getEl'>Element</b></i> after the Component
     * has been rendered. A plugin can simplify this step:<pre><code>
// Plugin is configured with a listeners config object.
// The Component is appended to the argument list of all handler functions.
ext.DomObserver = Ext.extend(Object, {
    constructor: function(config) {
        this.listeners = config.listeners ? config.listeners : config;
    },

    // Component passes itself into plugin&#39;s init method
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
        c.render = c.render.<b class='link' title='Function#createSequence'>createSequence</b>(function() {
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

var combo = new ext.form.ComboBox({

    // Collapse combo when its element is clicked on
    plugins: [ new ext.DomObserver({
        click: function(evt, comp) {
            comp.collapse();
        }
    })],
    store: myStore,
    typeAhead: true,
    mode: 'local',
    triggerAction: 'all'
});
     * </code></pre></p>
     */
     public native function Observable(config:Object = undefined);
        /**
         * This Objects contains all supported event names as its keys.
         */
        public native function get events() : Object;
        /**
         * <p>Fires the specified event with the passed parameters (minus the event name).</p>
         * <p>An event may be set to bubble up an Observable parent hierarchy (See <b class='link'>ext.Component#getBubbleTarget</b>)
         * by calling <b class='link' title='#enableBubble'>enableBubble</b>.</p>
         * @param eventName The name of the event to fire.
         * @param args Variable number of parameters are passed to handlers.
         * @return returns false if any of the handlers return false otherwise it returns true.
         */
        public native function fireEvent(eventName : String, ...args) : Boolean;
        /**
         * Appends an event handler to this object.
         * @param eventName The name of the event to listen for.
         * @param handler The method the event invokes.
         * @param scope The scope (<code><b>this</b></code> reference) in which the handler function is executed.
         * <b>If omitted, defaults to the object which fired the event.</b>
         * @param options An object containing handler configuration.
         * properties. This may contain any of the following properties:<ul>
         * <li><b>scope</b> : Object<div class="sub-desc">The scope (<code><b>this</b></code> reference) in which the handler function is executed.
         * <b>If omitted, defaults to the object which fired the event.</b></div></li>
         * <li><b>delay</b> : Number<div class="sub-desc">The number of milliseconds to delay the invocation of the handler after the event fires.</div></li>
         * <li><b>single</b> : Boolean<div class="sub-desc">True to add a handler to handle just the next firing of the event, and then remove itself.</div></li>
         * <li><b>buffer</b> : Number<div class="sub-desc">Causes the handler to be scheduled to run in an <b class='link'>Ext.util.DelayedTask</b> delayed
         * by the specified number of milliseconds. If the event fires again within that time, the original
         * handler is <em>not</em> invoked, but the new handler is scheduled in its place.</div></li>
         * <li><b>target</b> : Observable<div class="sub-desc">Only call the handler if the event was fired on the target Observable, <i>not</i>
         * if the event was bubbled up from a child Observable.</div></li>
         * </ul><br>
         * <p>
         * <b>Combining Options</b><br>
         * Using the options argument, it is possible to combine different types of listeners:<br>
         * <br>
         * A delayed, one-time listener.
         * <pre><code>
myDataView.on('click', this.onClick, this, {
    single: true,
    delay: 100
});</code></pre>
         * <p>
         * <b>Attaching multiple handlers in 1 call</b><br>
         * The method also allows for a single argument to be passed which is a config object containing properties
         * which specify multiple handlers.
         * <p>
         * <pre><code>
myGridPanel.on({
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
});</code></pre>
     * <p>
     * Or a shorthand syntax:<br>
     * <pre><code>
myGridPanel.on({
    'click' : this.onClick,
    'mouseover' : this.onMouseOver,
    'mouseout' : this.onMouseOut,
     scope: this
});</code></pre>
         */
        public native function addListener(eventName : String, handler : Function, scope : Object = undefined, options : Object = undefined) : void;
        /**
         * Removes an event handler.
         * @param eventName The type of event the handler was associated with.
         * @param handler   The handler to remove. <b>This must be a reference to the function passed into the <b class='link' title='#addListener'>addListener</b> call.</b>
         * @param scope The scope originally specified for the handler.
         */
        public native function removeListener(eventName : String, handler : Function, scope : Object = undefined) : void;
        /**
         * Removes all listeners for this object
         */
        public native function purgeListeners() : void;
        /**
         * Used to define events on this Observable
         * @param object The object with the events defined
         */
        public native function addEvents(object : Object) : void;
        /**
         * Checks to see if this object has any listeners for a specified event
         * @param eventName The name of the event to check for
         * @return True if the event is being listened for, else false
         */
        public native function hasListener(eventName : String) : Boolean;
        /**
         * Suspend the firing of all events. (see <b class='link' title='#resumeEvents'>resumeEvents</b>)
         * @param queueSuspended Pass as true to queue up suspended events to be fired
         * after the <b class='link' title='#resumeEvents'>resumeEvents</b> call instead of discarding all suspended events;
         */
        public native function suspendEvents(queueSuspended : Boolean) : void;
        /**
         * Resume firing events. (see <b class='link' title='#suspendEvents'>suspendEvents</b>)
         * If events were suspended using the <code><b>queueSuspended</b></code> parameter, then all
         * events fired during event suspension will be sent to any listeners now.
         */
        public native function resumeEvents() : void;

        public native function beforeMethod(method:String, fn:Function, scope:Object = null) : void;
        public native function afterMethod(method:String, fn:Function, scope:Object = null) : void;
        public native function removeMethodListener(method:String, fn:Function, scope:Object = null) : void;
        /**
         * Relays selected events from the specified Observable as if the events were fired by <code><b>this</b></code>.
         * @param o The Observable whose events this object is to relay.
         * @param events Array of event names to relay.
         */
        public native function relayEvents(o : Object, events : Array) : void;
        /**
         * Used to enable bubbling of events
         * @param events
         */
        public native function enableBubble(events : Object) : void;
/**
 * Starts capture on the specified Observable. All events will be passed
 * to the supplied function with the event name + standard signature of the event
 * <b>before</b> the event is fired. If the supplied function returns false,
 * the event will not fire.
 * @param o The Observable to capture
 * @param fn The function to call
 * @param scope The scope (this object) for the fn
 */
public static native function capture (o : Observable, fn : Function, scope : Object = undefined) : void;
/**
 * Sets observability on the passed class constructor.<p>
 * <p>This makes any event fired on any instance of the passed class also fire a single event through
 * the <i>class</i> allowing for central handling of events on many instances at once.</p>
 * <p>Usage:</p><pre><code>
Ext.util.Observable.observeClass(ext.data.Connection);
ext.data.Connection.on('beforerequest', function(con, options) {
    console.log("Ajax request made to " + options.url);
});</code></pre>
 * @param c The class constructor to make observable.
 */
public static native function observeClass (c : Class) : void;
}
}