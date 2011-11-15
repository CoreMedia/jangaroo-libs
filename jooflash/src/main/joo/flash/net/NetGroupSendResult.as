package flash.net {


/**
 * The NetGroupSendResult class is an enumeration of constant values used for the return value of the Directed Routing methods associated with a NetGroup instance.
 * @see NetGroup#sendToNearest()
 * @see NetGroup#sendToNeighbor()
 * @see NetGroup#sendToAllNeighbors()
 *
 */
public final class NetGroupSendResult {
  /**
   * Indicates an error occurred (such as no permission) when using a Directed Routing method.
   */
  public static const ERROR:String = "error";
  /**
   * Indicates no neighbor could be found to route the message toward its requested destination.
   */
  public static const NO_ROUTE:String = "no route";
  /**
   * Indicates that a route was found for the message and it was forwarded toward its destination.
   */
  public static const SENT:String = "sent";
}
}
