package flash.net {


/**
 * The NetGroupReceiveMode class is an enumeration of constant values used for the <code>receiveMode</code> property of the NetGroup class.
 * @see NetGroup#receiveMode
 * @see NetGroup#sendToNearest()
 *
 */
public final class NetGroupReceiveMode {
  /**
   * Specifies that this node accepts local messages from neighbors only if the address the neighbor uses matches this node's address exactly. That is, this node considers itself as nearest for any <code>NetGroup.sendToNearest()</code> call only if the <code>groupAddress</code> parameter passed to <code>NetGroup.sendToNearest()</code> matches this node's group address exactly. This value is the default setting.
   * <p>If you want to enable distributed routing behavior, set this value to <code>NetGroupReceiveMode.NEAREST</code>. With this value set, a node waits for its connectivity to stabilize before participating in the Directed Routing mesh.</p>
   * @see NetGroup#sendToNearest()
   *
   */
  public static const EXACT:String = "exact";
  /**
   * Specifies that this node accepts local messages from neighbors that send messages to group addresses that don't match this node's address exactly. Messages are received when this node is nearest among all neighbors whose receive mode is <code>NetGroupReceiveMode.NEAREST</code>. Distance is measured between addresses on the ring mod 2<sup>256</sup>.
   * @see NetGroup#sendToNearest()
   *
   */
  public static const NEAREST:String = "nearest";
}
}
