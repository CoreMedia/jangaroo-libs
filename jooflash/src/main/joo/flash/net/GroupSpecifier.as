package flash.net {


/**
 * The GroupSpecifier class is used to construct the opaque <code>groupspec</code> strings that can be passed to NetStream and NetGroup constructors. A <code>groupspec</code> specifies an RTMFP Peer-to-Peer Group, including the capabilities, restrictions, and authorizations of the member using the <code>groupspec</code>.
 * <p>By default, all capabilities are disabled, and peer-to-peer connections are allowed.</p>
 * @see NetGroup
 * @see NetStream
 *
 */
public class GroupSpecifier {
  /**
   * Specifies whether information about group membership can be exchanged on IP multicast sockets. IP multicast servers may send group membership updates to help bootstrap P2P meshes or heal partitions. Peers may send membership updates on the LAN to help bootstrap LAN P2P meshes and to inform on-LAN neighbors in global meshes that other on-LAN neighbors exist. These updates can improve P2P performance.
   * @see #addIPMulticastAddress()
   * @see #peerToPeerDisabled
   *
   */
  public function get ipMulticastMemberUpdatesEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set ipMulticastMemberUpdatesEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether streaming is enabled for the NetGroup. Methods used for streaming are <code>NetStream.publish()</code>, <code>NetStream.play()</code>, and <code>NetStream.play2()</code>. By default, this property is FALSE (streaming is disabled).
   * @see #setPublishPassword()
   * @see NetStream#play()
   * @see NetStream#play2()
   * @see NetStream#publish()
   *
   */
  public function get multicastEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set multicastEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether object replication is enabled for the NetGroup. By default, this property is FALSE (object replication is disabled).
   * @see NetGroup#addHaveObjects()
   * @see NetGroup#addWantObjects()
   * @see NetGroup#denyRequestedObject()
   * @see NetGroup#removeHaveObjects()
   * @see NetGroup#removeWantObjects()
   * @see NetGroup#writeRequestedObject()
   *
   */
  public function get objectReplicationEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set objectReplicationEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether peer-to-peer connections are disabled for the NetGroup or NetStream. By default, this property is FALSE (P2P connections are enabled).
   * <p>If P2P connections are disabled (you set this property to TRUE), the P2P warning dialog is suppressed. In this situation, no neighbor connections can be made, and no group members use upstream bandwidth. Disabling P2P connections in this way is generally useful only when receiving multicast streams via pure IP multicast.</p>
   */
  public function get peerToPeerDisabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set peerToPeerDisabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether posting is enabled for the NetGroup. By default, this property is FALSE (posting is disabled).
   * @see NetGroup#post()
   *
   */
  public function get postingEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set postingEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether directed routing methods are enabled for the NetGroup. By default, this property is FALSE (directed routing methods are disabled).
   * @see NetGroup#sendToNearest()
   *
   */
  public function get routingEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set routingEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether members of the NetGroup can open a channel to the server. By default, this property is FALSE.
   * <p>A channel to the server must be opened before the server can provide supporting functions to group members. Depending on server configuration, supporting functions may or may not be provided over this channel.</p>
   */
  public function get serverChannelEnabled():Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set serverChannelEnabled(value:Boolean):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Creates a new GroupSpecifier object. By default, all capabilities are disabled, and peer-to-peer connections are allowed.
   * @param name A name for the Group on which all members must agree.
   *
   * @throws ArgumentError if <code>name</code> is empty or <code>null</code>.
   *
   * @see NetGroup
   * @see NetStream
   *
   */
  public function GroupSpecifier(name:String) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Causes the associated NetStream or NetGroup to make an initial neighbor connection to the specified peerID.
   * @param peerID The peerID to which an initial neighbor connection should be made to bootstrap into the peer-to-peer mesh.
   *
   * @see #encodeBootstrapPeerIDSpec()
   * @see NetGroup#addMemberHint()
   * @see NetGroup#addNeighbor()
   *
   */
  public function addBootstrapPeer(peerID:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Causes the associated NetStream or NetGroup to join the specified IP multicast group and listen to the specified UDP port.
   * @param address A String specifying the address of the IPv4 or IPv6 multicast group to join, optionally followed by a colon (":") and the UDP port number. If specifying an IPv6 address and a port, the IPv6 address <i>must</i> be enclosed in square brackets. Examples: <code>"224.0.0.254"</code>, <code>"224.0.0.254:30000"</code>, <code>"ff03::ffff"</code>, <code>"[ff03::ffff]:30000"</code>.
   * @param port The UDP port on which to receive IP multicast datagrams. If <code>port</code> is <code>null</code>, the UDP port <i>must</i> be specified in <code>address</code>. If not <code>null</code>, the UDP port <i>must not</i> be specified in <code>address</code>.
   * @param source If not <code>null</code>, a String specifying the source IP address of a source-specific multicast (SSM).
   *
   * @see #encodeIPMulticastAddressSpec()
   * @see #ipMulticastMemberUpdatesEnabled
   *
   */
  public function addIPMulticastAddress(address:String, port:* = null, source:String = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a string that represents passwords for IP multicast publishing and for posting. Append the string to an unauthorized <code>groupspec</code> to enable features for which passwords have been set.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #encodePostingAuthorization()
   * @see #encodePublishAuthorization()
   * @see #groupspecWithAuthorizations()
   * @see #groupspecWithoutAuthorizations()
   * @see #setPostingPassword()
   * @see #setPublishPassword()
   *
   */
  public function authorizations():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Encodes and returns a string that represents a bootstrap peerID. If you append the string to a <code>groupspec</code>, the associated NetStream or NetGroup makes an initial neighbor connection to the specified peerID.
   * @param peerID The peerID to which an initial neighbor connection should be made to bootstrap into the peer-to-peer mesh.
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #addBootstrapPeer()
   * @see NetGroup#addMemberHint()
   * @see NetGroup#addNeighbor()
   *
   */
  public static function encodeBootstrapPeerIDSpec(peerID:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Encodes and returns a string that represents an IP multicast socket address. If you append the string to a <code>groupspec</code>, the associated NetStream or NetGroup joins the specified IP multicast group and listens to the specified UDP port.
   * @param address A String indicating the address of the IPv4 or IPv6 multicast group to join, optionally followed by a colon (":") and the UDP port number. If specifying an IPv6 address <i>and</i> a port, the IPv6 address <i>must</i> be enclosed in square brackets. Examples: <code>"224.0.0.254"</code>, <code>"224.0.0.254:30000"</code>, <code>"ff03::ffff"</code>, <code>"[ff03::ffff]:30000"</code>.
   * @param port The UDP port on which to receive IP multicast datagrams. If <code>port</code> is <code>null</code>, the UDP port <i>must</i> be specified in <code>address</code>. If not <code>null</code>, the UDP port <i>must not</i> be specified in <code>address</code>.
   * @param source If not <code>null</code>, a String specifying the source IP address of a source-specific multicast (SSM).
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #addIPMulticastAddress()
   * @see #ipMulticastMemberUpdatesEnabled
   *
   */
  public static function encodeIPMulticastAddressSpec(address:String, port:* = null, source:String = null):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Encodes and returns a string that represents a posting password. When posting is password-protected, you can concatenate the string to a <code>groupspec</code> to enable posting.
   * @param password The password to encode, which must match the posting password (if set) to enable <code>NetGroup.post()</code>.
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #groupspecWithoutAuthorizations()
   * @see #setPostingPassword()
   * @see NetGroup#post()
   *
   */
  public static function encodePostingAuthorization(password:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Encodes and returns a string that represents a multicast publishing password. When multicast publishing is password-protected, you can concatenate the string to a <code>groupspec</code> to enable publishing.
   * @param password The password to encode, which must match the publish password (if set) to enable <code>NetStream.publish()</code>.
   *
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #groupspecWithoutAuthorizations()
   * @see #setPublishPassword()
   * @see NetStream#publish()
   *
   */
  public static function encodePublishAuthorization(password:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the opaque <code>groupspec</code> string, including authorizations, that can be passed to NetStream and NetGroup constructors.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #authorizations()
   * @see #groupspecWithoutAuthorizations()
   * @see #setPostingPassword()
   * @see #setPublishPassword()
   * @see #toString()
   *
   */
  public function groupspecWithAuthorizations():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the opaque <code>groupspec</code> string, without authorizations, that can be passed to NetStream and NetGroup constructors.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #authorizations()
   * @see #encodePostingAuthorization()
   * @see #encodePublishAuthorization()
   * @see #groupspecWithAuthorizations()
   *
   */
  public function groupspecWithoutAuthorizations():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds a strong pseudorandom tag to the <code>groupspec</code> to make it unique. The opaque <code>groupspec</code> string must then be passed verbatim to other potential members of the Group if they are to successfully join.
   */
  public function makeUnique():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether a password is required to post in the NetGroup.
   * @param password The password that must be given to use <code>NetGroup.post()</code>. If <code>null</code>, no password is required to post.
   * @param salt Modifies the hash of the password to increase the difficulty of guessing it. For best security, this parameter should be set to a random value.
   *
   * @see #encodePostingAuthorization()
   * @see #groupspecWithAuthorizations()
   * @see #groupspecWithoutAuthorizations()
   * @see NetGroup#post()
   *
   */
  public function setPostingPassword(password:String = null, salt:String = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies whether a password is required to publish a multicast stream in the NetStream.
   * @param password The password that must be given to use <code>NetStream.publish()</code>. If <code>null</code>, no password is required to publish.
   * @param salt Modifies the hash of the password to increase the difficulty of guessing it. For best security, this parameter should be set to a random value.
   *
   * @see #encodePublishAuthorization()
   * @see #groupspecWithAuthorizations()
   * @see #groupspecWithoutAuthorizations()
   * @see NetStream#publish()
   *
   */
  public function setPublishPassword(password:String = null, salt:String = null):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Identical to the <code>groupspecWithAuthorizations()</code> method. Convenience method to return the opaque <code>groupspec</code> string, including authorizations, that can be passed to NetStream and NetGroup constructors.
   * @return <code><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/String.html">String</a></code>
   *
   * @see #groupspecWithAuthorizations()
   *
   */
  public function toString():String {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
