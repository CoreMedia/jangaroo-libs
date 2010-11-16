package ext.util {
/**
 * <p> The DelayedTask class provides a convenient way to "buffer" the execution of a method,
 * performing setTimeout where a new timeout cancels the old timeout. When called, the
 * task will wait the specified time period before executing. If durng that time period,
 * the task is called again, the original call will be cancelled. This continues so that
 * the function is only called a single time for each iteration.</p>
 * <p>This method is especially useful for things like detecting whether a user has finished
 * typing in a text field. An example would be performing validation on a keypress. You can
 * use this class to buffer the keypress events for a certain number of milliseconds, and
 * perform only if they stop for that amount of time.  Usage:</p><pre><code>
var task = new ext.util.DelayedTask(function(){
    alert(Ext.getDom('myInputField').value.length);
});
// Wait 500ms before calling our function. If the user presses another key
// during that 500ms, it will be cancelled and we'll wait another 500ms.
Ext.get('myInputField').on('keypress', function(){
    task.<b class='link' title='#delay'>delay</b>(500); 
});
 * </code></pre> 
 * <p>Note that we are using a DelayedTask here to illustrate a point. The configuration
 * option <code>buffer</code> for <b class='link' title='ext.util.Observable#addListener'>addListener/on</b> will
 * also setup a delayed task for you to buffer events.</p> 
*/
public class DelayedTask {
/**
 * @constructor The parameters to this constructor serve as defaults and are not required.
 * @param fn The default function to timeout
 * @param scope The default scope of that timeout
 * @param args The default Array of arguments
 */
public native function DelayedTask(fn : Function = undefined, scope : Object = undefined, args : Array = undefined);
    /**
     * Cancels any pending timeout and queues a new one
     * @param delay The milliseconds to delay
     * @param newFn Overrides function passed to constructor
     * @param newScope Overrides scope passed to constructor
     * @param newArgs Overrides args passed to constructor
     */
     public native function delay(delay : Number, newFn : Function = null, newScope : Object = null, newArgs : Array = null);

    /**
     * Cancel the last queued timeout
     */
     public native function cancel();
}}
