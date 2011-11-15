package flash.net {


/**
 * The NetGroupInfo class specifies various Quality of Service (QoS) statistics related to a NetGroup object's underlying RTMFP Peer-to-Peer data transport. The <code>NetGroup.info</code> property returns a NetGroupInfo object which is a snapshot of the current QoS state.
 * @see NetGroup#info
 * @see NetGroup#post()
 * @see NetGroup#sendToNearest()
 * @see NetGroup#sendToNeighbor()
 * @see NetGroup#sendToAllNeighbors()
 * @see NetGroup#addWantObjects()
 * @see NetGroup#writeRequestedObject()
 *
 */
public final class NetGroupInfo {
  /**
   * Specifies the rate at which the local node is receiving objects from peers via the Object Replication system, in bytes per second.
   * @see NetGroup#writeRequestedObject()
   *
   */
  public function get objectReplicationReceiveBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which objects are being copied from the local node to peers by the Object Replication system, in bytes per second.
   * @see NetGroup#writeRequestedObject()
   *
   */
  public function get objectReplicationSendBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is receiving posting control overhead messages from peers, in bytes per second.
   * @see NetGroup#post()
   *
   */
  public function get postingReceiveControlBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is receiving posting data from peers, in bytes per second.
   * @see NetGroup#post()
   *
   */
  public function get postingReceiveDataBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is sending posting control overhead messages to peers, in bytes per second.
   * @see NetGroup#post()
   *
   */
  public function get postingSendControlBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is sending posting data to peers, in bytes per second.
   * @see NetGroup#post()
   *
   */
  public function get postingSendDataBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is receiving directed routing messages from peers, in bytes per second.
   * @see NetGroup#sendToNearest()
   * @see NetGroup#sendToNeighbor()
   * @see NetGroup#sendToAllNeighbors()
   *
   */
  public function get routingReceiveBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is sending directed routing messages to peers, in bytes per second.
   * @see NetGroup#sendToNearest()
   * @see NetGroup#sendToNeighbor()
   * @see NetGroup#sendToAllNeighbors()
   *
   */
  public function get routingSendBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string containing the values of the properties of the NetGroupInfo object.
   * @return A string containing the values of the properties of the NetGroupInfo object
   *
   */
  public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
