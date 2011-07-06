package ext.util {


/**
 * The DelayedTask class provides a convenient way to "buffer" the execution of a method, performing setTimeout where a new timeout cancels the old timeout. When called, the task will wait the specified time period before executing. If during that time period, the task is called again, the original call will be cancelled. This continues so that the function is only called a single time for each iteration.
 <p>This method is especially useful for things like detecting whether a user has finished typing in a text field. An example would be performing validation on a keypress. You can use this class to buffer the keypress events for a certain number of milliseconds, and perform only if they stop for that amount of time. Usage:</p><pre><code>var task = new Ext.util.DelayedTask(function(){
 alert(Ext.getDom('myInputField').value.length);
 });
 // Wait 500ms before calling our function. If the user presses another key
 // during that 500ms, it will be cancelled and we'll wait another 500ms.
 Ext.get('myInputField').on('keypress', function(){
 task.<a href="output/Ext.util.DelayedTask.html#Ext.util.DelayedTask-delay">delay</a>(500);
 });
 </code></pre><p>Note that we are using a DelayedTask here to illustrate a point. The configuration option <tt>buffer</tt> for <a href="output/Ext.util.Observable.html#Ext.util.Observable-addListener">addListener/on</a> will also setup a delayed task for you to buffer events.</p>
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DelayedTask.html#cls-Ext.util.DelayedTask Ext JS source
 */
public class DelayedTask {

  /**
   * The parameters to this constructor serve as defaults and are not required.
   *
   * @param fn The default function to call.
   * @param scope The default scope (The <code><b>this</b></code> reference) in which the function is called. If not specified, <code>this</code> will refer to the browser window.
   * @param args The default Array of arguments.
   */
  public function DelayedTask(fn:Function = null, scope:Object = null, args:Array = null) {
    super();
  }

  /**
   * Cancel the last queued timeout
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DelayedTask.html#method-Ext.util.DelayedTask-cancel Ext JS source
   */
  public native function cancel():void;

  /**
   * Cancels any pending timeout and queues a new one
   *
   * @param delay The milliseconds to delay
   * @param newFn Overrides function passed to constructor
   * @param newScope Overrides scope passed to constructor. Remember that if no scope is specified, <code>this</code> will refer to the browser window.
   * @param newArgs Overrides args passed to constructor
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DelayedTask.html#method-Ext.util.DelayedTask-delay Ext JS source
   */
  public native function delay(delay:Number, newFn:Function = null, newScope:Object = null, newArgs:Array = null):void;

}
}
    