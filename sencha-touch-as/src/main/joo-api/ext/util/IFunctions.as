package ext.util {

import ext.form.Number;

/**
 *
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This interface defines the type of the singleton Functions.</p>
 * @see ext.util.#Functions ext.util.Functions
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Function.html#cls-Ext.util.Functions Ext JS source
 */
public interface IFunctions {

  /**
   * Creates a delegate (callback) that sets the scope to obj. Call directly on any function. Example: <code>Ext.createDelegate(this.myFunction, this, [arg1, arg2])</code> Will create a function that is automatically scoped to obj so that the <tt>this</tt> variable inside the callback points to obj. Example usage: <pre><code>var sayHi = function(name){
   // Note this use of "this.text" here.  This function expects to
   // execute within a scope that contains a text property.  In this
   // example, the "this" variable is pointing to the btn object that
   // was passed in createDelegate below.
   alert('Hi, ' + name + '. You clicked the "' + this.text + '" button.');
   }

   var btn = new Ext.Button({
   text: 'Say Hi',
   renderTo: Ext.getBody()
   });

   // This callback will execute in the scope of the
   // button instance. Clicking the button alerts
   // "Hi, Fred. You clicked the "Say Hi" button."
   btn.on('click', Ext.createDelegate(sayHi, btn, ['Fred']));
   </code></pre>
   *
   * @param fn The function to delegate.
   * @param scope The scope (<code><b>this</b></code> reference) in which the function is executed. <b>If omitted, defaults to the browser window.</b>
   * @param args Overrides arguments for the call. (Defaults to the arguments passed by the caller)
   * @param appendArgs if True args are appended to call args instead of overriding, if a number the args are inserted at the specified position
   * @return The new function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Function.html#method-Ext.util.Functions-createDelegate Ext JS source
   */
  function createDelegate(fn:Function, scope:Object = null, args:Array = null, appendArgs:* = null):Function;

  /**
   * Creates an interceptor function. The passed function is called before the original one. If it returns false, the original one is not called. The resulting function returns the results of the original function. The passed function is called with the parameters of the original function. Example usage: <pre><code>var sayHi = function(name){
   alert('Hi, ' + name);
   }

   sayHi('Fred'); // alerts "Hi, Fred"

   // create a new function that validates input without
   // directly modifying the original function:
   var sayHiToFriend = Ext.createInterceptor(sayHi, function(name){
   return name == 'Brian';
   });

   sayHiToFriend('Fred');  // no alert
   sayHiToFriend('Brian'); // alerts "Hi, Brian"
   </code></pre>
   *
   * @param origFn The original function.
   * @param newFn The function to call before the original
   * @param scope The scope (<code><b>this</b></code> reference) in which the passed function is executed. <b>If omitted, defaults to the scope in which the original function is called or the browser window.</b>
   * @param returnValue The value to return if the passed function return false (defaults to null).
   * @return The new function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Function.html#method-Ext.util.Functions-createInterceptor Ext JS source
   */
  function createInterceptor(origFn:Function, newFn:Function, scope:Object = null, returnValue:* = null):Function;

  /**
   * Create a combined function call sequence of the original function + the passed function. The resulting function returns the results of the original function. The passed fcn is called with the parameters of the original function. Example usage: var sayHi = function(name){ alert('Hi, ' + name); } sayHi('Fred'); // alerts "Hi, Fred" var sayGoodbye = Ext.createSequence(sayHi, function(name){ alert('Bye, ' + name); }); sayGoodbye('Fred'); // both alerts show
   *
   * @param origFn The original function.
   * @param newFn The function to sequence
   * @param scope The scope (this reference) in which the passed function is executed. If omitted, defaults to the scope in which the original function is called or the browser window.
   * @return The new function
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Function.html#method-Ext.util.Functions-createSequence Ext JS source
   */
  function createSequence(origFn:Function, newFn:Function, scope:Object = null):Function;

  /**
   * Calls this function after the number of millseconds specified, optionally in a specific scope. Example usage: <pre><code>var sayHi = function(name){
   alert('Hi, ' + name);
   }

   // executes immediately:
   sayHi('Fred');

   // executes after 2 seconds:
   Ext.defer(sayHi, 2000, this, ['Fred']);

   // this syntax is sometimes useful for deferring
   // execution of an anonymous function:
   Ext.defer(function(){
   alert('Anonymous');
   }, 100);
   </code></pre>
   *
   * @param fn The function to defer.
   * @param millis The number of milliseconds for the setTimeout call (if less than or equal to 0 the function is executed immediately)
   * @param scope The scope (<code><b>this</b></code> reference) in which the function is executed. <b>If omitted, defaults to the browser window.</b>
   * @param args Overrides arguments for the call. (Defaults to the arguments passed by the caller)
   * @param appendArgs if True args are appended to call args instead of overriding, if a number the args are inserted at the specified position
   * @return The timeout id that can be used with clearTimeout
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Function.html#method-Ext.util.Functions-defer Ext JS source
   */
  function defer(fn:Function, millis:ext.form.Number, scope:Object = null, args:Array = null, appendArgs:* = null):ext.form.Number;

}
}
    