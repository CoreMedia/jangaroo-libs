package ext {
import ext.util.TaskRunner;

/**
 * A static <b class='link'>Ext.util.TaskRunner</b> instance that can be used to start and stop arbitrary tasks.  See
 * <b class='link'>Ext.util.TaskRunner</b> for supported methods and task config properties.
 * <pre><code>
&#47;/ Start a simple clock task that updates a div once per second
var task = {
    run&#58; function(){
        Ext.fly('clock').update(new Date().format('g:i:s A'));
    },
    interval&#58; 1000 //1 second
}
ext.TaskMgr.start(task);
</code></pre>
*/
public class TaskMgr extends TaskRunner {
/**
 * @singleton
 */
}}
