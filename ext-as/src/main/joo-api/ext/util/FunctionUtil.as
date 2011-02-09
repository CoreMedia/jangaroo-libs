package ext.util {

/**
 * An Ext AS API to access Ext JS's additional Function prototype utility methods as static helper functions.
 */
public class FunctionUtil {

  /**
   * Creates a callback for the given function that passes arguments[0], arguments[1], arguments[2], ...
   * Call directly with any function. Example: <code>createCallback(myFunction, arg1, arg2)</code>
   * Will create a function that is bound to those 2 args. <b>If a specific scope is required in the
   * callback, use <code>createDelegate</code> instead.</b> The function returned by createCallback always
   * executes in the window scope.
   * <p>This method is required when you want to pass arguments to a callback function.  If no arguments
   * are needed, you can simply pass a reference to the function as a callback (e.g., callback: myFn).
   * However, if you tried to pass a function with arguments (e.g., callback: myFn(arg1, arg2)) the function
   * would simply execute immediately when the code is parsed. Example usage:
   * <pre><code>
   * var sayHi = function(name){
   *     alert('Hi, ' + name);
   * }
   *
   * // clicking the button alerts "Hi, Fred"
   * new Ext.Button({
   *     text: 'Say Hi',
   *     renderTo: Ext.getBody(),
   *     handler: createCallback(sayHi, 'Fred')
   * });
   * </code></pre>
   * @param fn the function for which to create a callback
   * @param args the arguments that are passed to the original function when invoking the returned function
   * @return The new function
   *
   * @see #createDelegate()
   */
  public static native function createCallback(fn:Function, ...args):Function;

  /**
   * Creates a delegate (callback) of the given function that sets the scope to obj.
   * Call directly with any function. Example: <code>createDelegate(this.myFunction, this, [arg1, arg2])</code>
   * Will create a function that is automatically scoped to obj so that the <tt>this</tt> variable inside the
   * callback points to obj. Example usage:
   * <pre><code>
   * var sayHi = function(name){
   *     // Note this use of "this.text" here.  This function expects to
   *     // execute within a scope that contains a text property.  In this
   *     // example, the "this" variable is pointing to the btn object that
   *     // was passed in createDelegate below.
   *     alert('Hi, ' + name + '. You clicked the "' + this.text + '" button.');
   * }
   *
   * var btn = new Ext.Button({
   *     text: 'Say Hi',
   *     renderTo: Ext.getBody()
   * });
   *
   * // This callback will execute in the scope of the
   * // button instance. Clicking the button alerts
   * // "Hi, Fred. You clicked the "Say Hi" button."
   * btn.on('click', createDelegate(sayHi, btn, ['Fred']));
   * </code></pre>
   * @param fn the function for which to create a delegate
   * @param scope The scope (<code><b>this</b></code> reference) in which the function is executed.
   * <b>If omitted, defaults to the browser window.</b>
   * @param args Overrides arguments for the call. (Defaults to the arguments passed by the caller)
   * @param appendArgs if <code>true</code>, args are appended to call args instead of overriding,
   * if a number, the args are inserted at the specified position
   * @return The new function
   */
  public static native function createDelegate(fn:Function, scope:Object, args:Array = undefined, appendArgs:* = undefined):Function;

  /**
   * Creates an interceptor function. The passed function is called before the original one. If it returns false,
   * the original one is not called. The resulting function returns the results of the original function.
   * The passed function is called with the parameters of the original function. Example usage:
   * <pre><code>
   * var sayHi = function(name){
   *     alert('Hi, ' + name);
   * }
   *
   * sayHi('Fred'); // alerts "Hi, Fred"
   *
   * // create a new function that validates input without
   * // directly modifying the original function:
   * var sayHiToFriend = createInterceptor(sayHi, function(name){
   *     return name == 'Brian';
   * });
   *
   * sayHiToFriend('Fred');  // no alert
   * sayHiToFriend('Brian'); // alerts "Hi, Brian"
   * </code></pre>
   * @param fn the function for which to create an interceptor
   * @param fcn The function to call before the original
   * @param scope The scope (<code><b>this</b></code> reference) in which the passed function is executed.
   * <b>If omitted, defaults to the scope in which the original function is called or the browser window.</b>
   * @return The new function
   */
  public static native function createInterceptor(fn:Function, fcn:Function, scope:Object = undefined):Function;

  /**
   * Calls the given function after the number of milliseconds specified, optionally in a specific scope. Example usage:
   * <pre><code>
   * var sayHi = function(name){
   *     alert('Hi, ' + name);
   * }
   *
   * // executes immediately:
   * sayHi('Fred');
   *
   * // executes after 2 seconds:
   * defer(sayHi, 2000, this, ['Fred']);
   *
   * // this syntax is sometimes useful for deferring
   * // execution of an anonymous function:
   * defer(function(){
   *     alert('Anonymous');
   * }, 100);
   * </code></pre>
   * @param fn the function to defer
   * @param millis The number of milliseconds for the setTimeout call (if less than or equal to 0 the function is executed immediately)
   * @param scope The scope (<code><b>this</b></code> reference) in which the function is executed.
   * <b>If omitted, defaults to the browser window.</b>
   * @param args Overrides arguments for the call. (Defaults to the arguments passed by the caller)
   * @param appendArgs if <code>true</code>, args are appended to call args instead of overriding,
   * if a number, the args are inserted at the specified position
   * @return The timeout id that can be used with clearTimeout
   *
   * @see js.Window#clearTimeout()
   */
  public static native function defer(fn:Function, millis:Number, scope:Object = undefined, args:Array = undefined, appendArgs:* = undefined):Number;

}
}