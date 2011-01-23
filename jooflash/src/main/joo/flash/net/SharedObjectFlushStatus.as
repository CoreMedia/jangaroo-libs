package flash.net {


/**
 * The SharedObjectFlushStatus class provides values for the code returned from a call to the <code>SharedObject.flush()</code> method.
 * @see SharedObject#flush()
 *
 */
public final class SharedObjectFlushStatus {
  /**
   * Indicates that the flush completed successfully.
   * @see SharedObject#flush()
   *
   */
  public static const FLUSHED:String = "flushed";
  /**
   * Indicates that the user is being prompted to increase disk space for the shared object before the flush can occur.
   * @see SharedObject#flush()
   *
   */
  public static const PENDING:String = "pending";
}
}
