package ext.config {


/**
 * Provides a mechanism to run one or more <a href="Ext.data.Operation.html">operations</a> in a given order. Fires the 'operationcomplete' event after the completion of each Operation, and the 'complete' event when all Operations have been successfully executed. Fires an 'exception' event if any of the Operations encounter an exception.
 <p>Usually these are only used internally by <a href="Ext.data.Proxy.html">Ext.data.Proxy</a> classes</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class Batch.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.data.Batch
 */
[ExtConfig(target="ext.data.Batch")]
public class batch extends observable {

  public function batch(config:Object = null) {

    super(config);
  }


}
}
    