package flash.net {


/**
 * The NetStreamMulticastInfo class specifies various Quality of Service (QoS) statistics related to a NetStream object's underlying RTMFP Peer-to-Peer and IP Multicast stream transport. A NetStreamMulticastInfo object is returned by the <code>NetStream.multicastInfo</code> property.
 * <p>Properties that return numbers represent totals computed from the beginning of the multicast stream. These types of properties include the number of media bytes sent or the number of media fragment messages received. Properties that are rates represent a snapshot of the current rate averaged over a few seconds. These types of properties include the rate at which a local node is receiving data.</p>
 * <p>To see a list of values contained in the NetStreamMulticastInfo object, use the <code>NetStreamMulticastInfo.toString()</code> method.</p>
 * @see #toString()
 * @see NetStream#multicastInfo
 *
 */
public final class NetStreamMulticastInfo {
  /**
   * Specifies the number of media bytes that were proactively pushed from peers and received by the local node.
   * @see #bytesRequestedFromPeers
   * @see #fragmentsPushedFromPeers
   * @see #fragmentsRequestedFromPeers
   *
   */
  public function get bytesPushedFromPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media bytes that the local node has proactively pushed to peers.
   * @see #bytesRequestedByPeers
   * @see #fragmentsPushedToPeers
   * @see #fragmentsRequestedByPeers
   *
   */
  public function get bytesPushedToPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media bytes that the local node has received from IP Multicast.
   * @see #bytesReceivedFromServer
   * @see #fragmentsReceivedFromIPMulticast
   * @see #fragmentsReceivedFromServer
   * @see #receiveDataBytesPerSecondFromIPMulticast
   *
   */
  public function get bytesReceivedFromIPMulticast():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media bytes that the local node has received from the server.
   * @see #bytesReceivedFromIPMulticast
   * @see #fragmentsReceivedFromIPMulticast
   * @see #fragmentsReceivedFromServer
   * @see #receiveDataBytesPerSecondFromServer
   *
   */
  public function get bytesReceivedFromServer():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media bytes that the local node has sent to peers in response to requests from those peers for specific fragments.
   * @see #bytesPushedToPeers
   * @see #fragmentsPushedToPeers
   * @see #fragmentsRequestedByPeers
   *
   */
  public function get bytesRequestedByPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media bytes that the local node requested and received from peers.
   * @see #bytesPushedFromPeers
   * @see #fragmentsPushedFromPeers
   * @see #fragmentsRequestedFromPeers
   *
   */
  public function get bytesRequestedFromPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media fragment messages that were proactively pushed from peers and received by the local node.
   * @see #bytesPushedFromPeers
   * @see #bytesRequestedFromPeers
   * @see #fragmentsRequestedFromPeers
   *
   */
  public function get fragmentsPushedFromPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media fragment messages that the local node has proactively pushed to peers.
   * @see #bytesPushedToPeers
   * @see #bytesRequestedByPeers
   * @see #fragmentsRequestedByPeers
   *
   */
  public function get fragmentsPushedToPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media fragment messages that the local node has received from IP Multicast.
   * @see #bytesReceivedFromIPMulticast
   * @see #bytesReceivedFromServer
   * @see #fragmentsReceivedFromServer
   * @see #receiveDataBytesPerSecondFromIPMulticast
   *
   */
  public function get fragmentsReceivedFromIPMulticast():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media fragment messages that the local node has received from the server.
   * @see #bytesReceivedFromIPMulticast
   * @see #bytesReceivedFromServer
   * @see #fragmentsReceivedFromIPMulticast
   * @see #receiveDataBytesPerSecondFromServer
   *
   */
  public function get fragmentsReceivedFromServer():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media fragment messages that the local node has sent to peers in response to requests from those peers for specific fragments.
   * @see #bytesPushedToPeers
   * @see #bytesRequestedByPeers
   * @see #fragmentsPushedToPeers
   *
   */
  public function get fragmentsRequestedByPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of media fragment messages that the local node requested and received from peers.
   * @see #bytesPushedFromPeers
   * @see #bytesRequestedFromPeers
   * @see #fragmentsPushedFromPeers
   *
   */
  public function get fragmentsRequestedFromPeers():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is receiving control overhead messages from peers, in bytes per second.
   * @see #receiveDataBytesPerSecond
   * @see #receiveDataBytesPerSecondFromServer
   * @see #receiveDataBytesPerSecondFromIPMulticast
   * @see #sendControlBytesPerSecond
   *
   */
  public function get receiveControlBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is receiving media data from peers, from the server, and over IP multicast, in bytes per second.
   * @see #receiveControlBytesPerSecond
   * @see #receiveDataBytesPerSecondFromIPMulticast
   * @see #receiveDataBytesPerSecondFromServer
   * @see #sendDataBytesPerSecond
   *
   */
  public function get receiveDataBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is receiving data from IP Multicast, in bytes per second.
   * @see #receiveControlBytesPerSecond
   * @see #receiveDataBytesPerSecond
   * @see #receiveDataBytesPerSecondFromServer
   * @see #sendDataBytesPerSecond
   *
   */
  public function get receiveDataBytesPerSecondFromIPMulticast():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is receiving media data from the server, in bytes per second.
   * @see #receiveControlBytesPerSecond
   * @see #receiveDataBytesPerSecond
   * @see #receiveDataBytesPerSecondFromIPMulticast
   * @see #sendDataBytesPerSecond
   *
   */
  public function get receiveDataBytesPerSecondFromServer():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is sending control overhead messages to peers and the server, in bytes per second.
   * @see #receiveControlBytesPerSecond
   * @see #sendControlBytesPerSecondToServer
   * @see #sendDataBytesPerSecond
   *
   */
  public function get sendControlBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which the local node is sending control overhead messages to the server, in bytes per second.
   * @see #receiveDataBytesPerSecondFromServer
   * @see #sendControlBytesPerSecond
   * @see #sendDataBytesPerSecond
   *
   */
  public function get sendControlBytesPerSecondToServer():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the rate at which media data is being sent by the local node to peers, in bytes per second.
   * @see #receiveDataBytesPerSecond
   * @see #sendControlBytesPerSecond
   * @see #sendControlBytesPerSecondToServer
   *
   */
  public function get sendDataBytesPerSecond():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string listing the properties of the NetStreamMulticastInfo object.
   * @return A string containing the values of the properties of the NetStreamMulticastInfo object
   *
   */
  public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
