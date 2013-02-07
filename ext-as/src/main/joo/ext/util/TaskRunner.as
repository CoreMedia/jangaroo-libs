package ext.util {


/**
 * Provides the ability to execute one or more arbitrary tasks in a multithreaded manner. Generally, you can use the singleton <a href="Ext.TaskMgr.html">Ext.TaskMgr</a> instead, but if needed, you can create separate instances of TaskRunner. Any number of separate tasks can be started at any time and will run independently of each other. Example usage: <pre><code>// Start a simple clock task that updates a div once per second
 var updateClock = function(){
 Ext.fly('clock').update(new Date().format('g:i:s A'));
 }
 var task = {
 run: updateClock,
 interval: 1000 //1 second
 }
 var runner = new Ext.util.TaskRunner();
 runner.start(task);

 // equivalent using TaskMgr
 Ext.TaskMgr.start({
 run: updateClock,
 interval: 1000
 });
 </code></pre><p>See the <a href="output/Ext.util.TaskRunner.html#Ext.util.TaskRunner-start">start</a> method for details about how to configure a task object.</p>Also see <a href="Ext.util.DelayedTask.html">Ext.util.DelayedTask</a>.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.TaskRunner Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.util.TaskRunner")]
public class TaskRunner {

  /**
   *
   *
   * @param interval The minimum precision in milliseconds supported by this TaskRunner instance (defaults to 10)
   */
  public function TaskRunner(interval:Number = undefined) {
    super();
  }

  /**
   * Starts a new task.
   *
   * @param task A config object that supports the following properties:
   <ul><li><code>run</code> : Function<div class="sub-desc"><p>The function to execute each time the task is invoked. The function will be called at each interval and passed the <code>args</code> argument if specified, and the current invocation count if not.</p><p>If a particular scope (<code>this</code> reference) is required, be sure to specify it using the <code>scope</code> argument.</p><p>Return <code>false</code> from this function to terminate the task.</p></div></li><li><code>interval</code> : Number<div class="sub-desc">The frequency in milliseconds with which the task should be invoked.</div></li><li><code>args</code> : Array<div class="sub-desc">(optional) An array of arguments to be passed to the function specified by <code>run</code>. If not specified, the current invocation count is passed.</div></li><li><code>scope</code> : Object<div class="sub-desc">(optional) The scope (<tt>this</tt> reference) in which to execute the <code>run</code> function. Defaults to the task config object.</div></li><li><code>duration</code> : Number<div class="sub-desc">(optional) The length of time in milliseconds to invoke the task before stopping automatically (defaults to indefinite).</div></li><li><code>repeat</code> : Number<div class="sub-desc">(optional) The number of times to invoke the task before stopping automatically (defaults to indefinite).</div></li></ul><br/><br/> <p>Before each invocation, Ext injects the property <code>taskRunCount</code> into the task object so that calculations based on the repeat count can be performed.</p>
   * @return The task
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.TaskRunner-method-start Sencha Docs Ext JS 3.4
   */
  public native function start(task:Object):Object;

  /**
   * Stops an existing running task.
   *
   * @param task The task to stop
   * @return The task
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.TaskRunner-method-stop Sencha Docs Ext JS 3.4
   */
  public native function stop(task:Object):Object;

  /**
   * Stops all tasks that are currently running.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.util.TaskRunner-method-stopAll Sencha Docs Ext JS 3.4
   */
  public native function stopAll():void;

}
}
    