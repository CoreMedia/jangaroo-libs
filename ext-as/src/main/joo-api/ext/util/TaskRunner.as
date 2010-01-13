package ext.util {
/**
 * Provides the ability to execute one or more arbitrary tasks in a multithreaded
 * manner.  Generally, you can use the singleton <b class='link'>ext.TaskMgr</b> instead, but
 * if needed, you can create separate instances of TaskRunner.  Any number of
 * separate tasks can be started at any time and will run independently of each
 * other. Example usage:
 * <pre><code>
&#47;/ Start a simple clock task that updates a div once per second
var updateClock = function(){
    Ext.fly('clock').update(new Date().format('g:i:s A'));
} 
var task = {
    run&#58; updateClock,
    interval&#58; 1000 //1 second
}
var runner = new Ext.util.TaskRunner();
runner.start(task);

&#47;/ equivalent using TaskMgr
ext.TaskMgr.start({
    run&#58; updateClock,
    interval&#58; 1000
});

 * </code></pre>
 * Also see <b class='link'>Ext.util.DelayedTask</b>. 
 * 
*/
public class TaskRunner {
/**
 * @constructor
 * @param interval The minimum precision in milliseconds supported by this TaskRunner instance
 * (defaults to 10)
 */
public function TaskRunner(interval : Number = undefined) {
  super(interval);
}
    /**
     * Starts a new task.
     * @method start
     * @param task A config object that supports the following properties:<ul>
     * <li><code>run</code> : Function<div class="sub-desc">The function to execute each time the task is run. The
     * function will be called at each interval and passed the <code>args</code> argument if specified.  If a
     * particular scope is required, be sure to specify it using the <code>scope</code> argument.</div></li>
     * <li><code>interval</code> : Number<div class="sub-desc">The frequency in milliseconds with which the task
     * should be executed.</div></li>
     * <li><code>args</code> : Array<div class="sub-desc">(optional) An array of arguments to be passed to the function
     * specified by <code>run</code>.</div></li>
     * <li><code>scope</code> : Object<div class="sub-desc">(optional) The scope (<code>this</code> reference) in which to execute the
     * <code>run</code> function. Defaults to the task config object.</div></li>
     * <li><code>duration</code> : Number<div class="sub-desc">(optional) The length of time in milliseconds to execute
     * the task before stopping automatically (defaults to indefinite).</div></li>
     * <li><code>repeat</code> : Number<div class="sub-desc">(optional) The number of times to execute the task before
     * stopping automatically (defaults to indefinite).</div></li>
     * </ul>
     * @return The task
     */
    public native function start(task : Object) : Object;
    /**
     * Stops an existing running task.
     * @method stop
     * @param task The task to stop
     * @return The task
     */
    public native function stop(task : Object) : Object;
    /**
     * Stops all tasks that are currently running.
     * @method stopAll
     */
    public native function stopAll() : void;
  
}}
