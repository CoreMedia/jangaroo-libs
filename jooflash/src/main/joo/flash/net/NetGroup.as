package flash.net {
import flash.events.EventDispatcher;

/**
 * Dispatched when a NetGroup object is reporting its status or error condition. The <code>netStatus</code> event contains an <code>info</code> property. The <code>info</code> property is an object that contains information about the event, such as whether a connection attempt succeeded or failed.
 * @eventType flash.events.NetStatusEvent.NET_STATUS
 */
[Event(name="netStatus", type="flash.events.NetStatusEvent")]

/**
 * Instances of the NetGroup class represent membership in an RTMFP group. Use this class to do the following:
 * <ul>
 * <li><b>Monitor Quality of Service</b>. The <code>info</code> property contains a NetGroupInfo object whose properties provide QoS statistics for this group.</li>
 * <li><b>Posting</b>. Call <code>post()</code> to broadcast ActionScript messages to all members of a group.</li>
 * <li><b>Direct routing</b>. Call <code>sendToNearest()</code>, <code>sendToNeighbor()</code>, and <code>sendToAllNeighbors()</code> to send a short data message to a specific member of a peer-to-peer group. The source and the destination do not need to have a direct connection.</li>
 * <li><b>Object replication</b>. Call <code>addHaveObjects()</code>, <code>removeHaveObjects()</code>, <code>addWantObjects()</code>, <code>removeWantObjects()</code>, <code>writeRequestedObject()</code>, and <code>denyRequestedObject()</code> to break up large data into pieces and replicate it to all nodes in a peer-to-peer group.</li></ul>
 * <p>In the client-side NetGroup class, the NetConnection dispatches the following events:</p>
 * <ul>
 * <li>NetGroup.Connect.Success</li>
 * <li>NetGroup.Connect.Failed</li>
 * <li>NetGroup.Connect.Rejected</li></ul>
 * <p>The <code>info.group</code> property of the event object contains a reference to the event source (the NetGroup). The NetGroup dispatches all other events. In the server-side NetGroup class, the NetGroup dispatches all events.</p>
 * <p>For information about peer-assisted networking, see <a href="http://www.flashrealtime.com/basics-of-p2p-in-flash/">Basics of P2P in Flash</a> by Adobe Evangelist Tom Krcha. For information about using groups with peer-assisted networking, see <a href="http://tv.adobe.com/watch/max-2009-develop/social-media-experiences-with-flash-media-and-rtmfp/">Social Media Experiences with Flash Media and RTMFP</a>, also by Tom Krcha.</p>
 * <p>For information about the technical details behind peer-assisted networking, see <a href="http://tv.adobe.com/watch/max-2009-develop/p2p-on-the-flash-platform-with-rtmfp">P2P on the Flash Platform with RTMFP</a> by Adobe Computer Scientist Matthew Kaufman.</p>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/net/NetGroup.html#includeExamplesSummary">View the examples</a></p>
 * @see GroupSpecifier
 * @see NetStream
 * @see flash.events.NetStatusEvent#info
 *
 */
public class NetGroup extends EventDispatcher {
  /**
   * Specifies the estimated number of members of the group, based on local neighbor density and assuming an even distribution of group addresses.
   * @see #neighborCount
   *
   */
  public function get estimatedMemberCount():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns a NetGroupInfo object whose properties provide Quality of Service statistics about this NetGroup's RTMFP peer-to-peer data transport.
   * @see NetGroupInfo
   *
   */
  public function get info():NetGroupInfo {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the start of the range of group addresses for which this node is the "nearest" and responsible. The range is specified in the increasing direction along the group address ring mod 2<sup>256</sup>.
   * @see #localCoverageTo
   * @see #receiveMode
   * @see #sendToNearest()
   * @see flash.events.NetStatusEvent#code_NetGroup_LocalCoverage_Notify
   *
   */
  public function get localCoverageFrom():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the end of the range of group addresses for which this node is the "nearest" and responsible. The range is specified in the increasing direction along the group address ring mod 2<sup>256</sup>.
   * @see #localCoverageFrom
   * @see #receiveMode
   * @see #sendToNearest()
   * @see flash.events.NetStatusEvent#code_NetGroup_LocalCoverage_Notify
   *
   */
  public function get localCoverageTo():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the number of group members to which this node is directly connected.
   * @see #addNeighbor()
   * @see #estimatedMemberCount
   * @see flash.events.NetStatusEvent#code_NetGroup_Neighbor_Connect
   * @see flash.events.NetStatusEvent#code_NetGroup_Neighbor_Disconnect
   *
   */
  public function get neighborCount():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies this node's routing receive mode as one of values in the NetGroupReceiveMode enum class.
   * @see #localCoverageFrom
   * @see #localCoverageTo
   * @see #sendToNearest()
   * @see NetGroupReceiveMode
   *
   */
  public function get receiveMode():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set receiveMode(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the object replication fetch strategy. The value is one of the enumerated values in the NetGroupReplicationStrategy class.
   * @see NetGroupReplicationStrategy
   *
   */
  public function get replicationStrategy():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set replicationStrategy(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructs a NetGroup on the specified NetConnection object and joins it to the group specified by <code>groupspec</code>.
   * <p>In most cases, a <code>groupspec</code> has the potential for using the network uplink on the local system. When a NetStream or NetGroup object is constructed with a groupspec, Flash Player displays a Privacy Dialog. The dialog asks whether Flash Player can use the connection to share data with a user's peers. If the user clicks "Allow for this domain", the dialog is not displayed the next time the user connects to this application. If a user does not allow peer-assisted networking, all peer features within the group (posting, directed routing, and object replication, and multicast) are disabled. If permission is allowed, a NetStatusEvent is sent to the NetConnection's event listener with <code>NetGroup.Connect.Success</code> in the <code>code</code> property of the <code>info</code> object. If permission is denied, the <code>code</code> property is <code>NetGroup.Connect.Rejected</code>. Until a <code>NetGroup.Connect.Success</code> event is received, an exception is thrown if you try to call any method of the NetGroup object.</p>
   * <p><b>Note:</b> When a client subscribes to a native-IP multicast stream, the security dialog is not displayed.</p>
   * @param connection A NetConnection object.
   * @param groupspec A string specifying the RTMFP peer-to-peer group to join, including its name, capabilities, restrictions, and the authorizations of this member.
   * <listing>
   *      new NetGroup(myConnection, myGroupSpecifier.groupspecWithAuthorizations());
   *     </listing>
   *
   * @throws ArgumentError The NetConnection instance is not connected.
   * @throws Error The groupspec is invalid.
   *
   * @see flash.events.NetStatusEvent#code_NetGroup_Connect_Success
   * @see flash.events.NetStatusEvent#code_NetGroup_Connect_Rejected
   * @see NetConnection
   * @see GroupSpecifier
   *
   */
  public function NetGroup(connection:NetConnection, groupspec:String) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds objects from <code>startIndex</code> through <code>endIndex</code>, to the set of objects this node advertises to neighbors as objects for which it fulfills requests. By default, the Have set is empty. Indices must be whole numbers from 0 through 9007199254740992.
   * <p>For more information about object replication, see <a href="http://www.adobe.com/go/learn_fms_replicate_en">"Replicate an object within a group"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p>This method sends a NetStatusEvent to the NetGroup's event listener with <code>"NetGroup.Replication.Request"</code> in the <code>code</code> property of the <code>info</code> object.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param startIndex The beginning of the range of object indices to add to the Have set.
   * @param endIndex The end of the range of object indices to add to the Have set.
   *
   * @throws RangeError A number passed to this method is less than 0 or greater than 9007199254740992.
   *
   * @see #removeHaveObjects()
   * @see #writeRequestedObject()
   * @see #denyRequestedObject()
   * @see flash.events.NetStatusEvent#code_NetGroup_Replication_Request
   *
   */
  public function addHaveObjects(startIndex:Number, endIndex:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Manually adds a record specifying that <code>peerID</code> is a member of the group. An immediate connection to it is attempted only if it is needed for the topology.
   * @param peerID The peerID to add to the set of potential neighbors.
   *
   * @return TRUE for success, FALSE for failure.
   *
   * @see #addNeighbor()
   *
   */
  public function addMemberHint(peerID:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Manually adds a neighbor by immediately connecting directly to the specified <code>peerID</code>, which must already be in this group. This direct connection may later be dropped if it is not needed for the topology.
   * @param peerID The peerID to which to immediately connect.
   *
   * @return TRUE for success, FALSE for failure.
   *
   * @see #addMemberHint()
   *
   */
  public function addNeighbor(peerID:String):Boolean {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Adds objects from <code>startIndex</code> through <code>endIndex</code>, to the set of objects to retrieve. Indices must be whole numbers from 0 through 9007199254740992. By default, the Want set is empty.
   * <p>For more information about object replication, see <a href="http://www.adobe.com/go/learn_fms_replicate_en">"Replicate an object within a group"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p>This method sends a NetStatusEvent to the NetGroup's event listener with <code>NetGroup.Replication.Fetch.SendNotify</code> in the <code>info.code</code> property. This event is followed by an <code>NetGroup.Replication.Fetch.Failed</code> or <code>NetGroup.Replication.Fetch.Result</code> event.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param startIndex The beginning of the range of object indices to add to the Want set.
   * @param endIndex The end of the range of object indices to add to the Want set.
   *
   * @throws RangeError A number passed to this method is less than 0 or greater than 9007199254740992.
   *
   * @see #removeWantObjects()
   * @see flash.events.NetStatusEvent#code_NetGroup_Replication_Fetch_SendNotify
   * @see flash.events.NetStatusEvent#code_NetGroup_Replication_Fetch_Failed
   * @see flash.events.NetStatusEvent#code_NetGroup_Replication_Fetch_Result
   *
   */
  public function addWantObjects(startIndex:Number, endIndex:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Disconnect from the group and close this NetGroup. This NetGroup is not usable after calling this method.
   */
  public function close():void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Converts a peerID to a group address suitable for use with the <code>sendToNearest()</code> method.
   * @param peerID The peerID to convert.
   *
   * @return The group address for the peerID.
   *
   * @see NetConnection#farID
   * @see NetConnection#nearID
   * @see NetStream#farID
   * @see #sendToNearest()
   *
   */
  public function convertPeerIDToGroupAddress(peerID:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Denies a request received in a NetStatusEvent <code>NetGroup.Replication.Request</code> for an object previously advertised with <code>addHaveObjects()</code>. The requestor can request this object again unless or until it is withdrawn from the Have set.
   * <p>For more information about object replication, see <a href="http://www.adobe.com/go/learn_fms_replicate_en">"Replicate an object within a group"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param requestID The request identifier as given in the <code>NetGroup.Replication.Request</code> event.
   *
   * @see #addHaveObjects()
   * @see #writeRequestedObject()
   * @see flash.events.NetStatusEvent#code_NetGroup_Replication_Request
   *
   */
  public function denyRequestedObject(requestID:int):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sends a message to all members of a group. To call this method, the <code>GroupSpecifier.postingEnabled</code> property must be <code>true</code> in the groupspec passed to the NetGroup constructor. For more information, see <a href="http://www.adobe.com/go/learn_fms_post_en">"Post messages to a group"</a> in <i>Flash Media Server Developer’s Guide</i>.
   * <p>All messages must be unique. A message that is identical to one posted earlier might not be propagated. Use a sequence number to make messages unique.</p>
   * <p>Message delivery is not ordered. Message delivery is not guaranteed.</p>
   * <p>Messages are serialized in AMF. The message can be one of the following types: an Object, an int, a Number, or a String. The message cannot be a MovieClip.</p>
   * <p>This method sends a NetStatusEvent to the NetGroup's event listener with <code>"NetGroup.Posting.Notify"</code> in the <code>info.code</code> property. The <code>"NetGroup.Posting.Notify"</code> event is dispatched to the NetGroup on both the client and the server.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param message The message to send to all other members of the group.
   *
   * @return The messageID of the message if posted, or <code>null</code> on error. The messageID is the hexadecmial of the SHA256 of the raw bytes of the serialization of the message.
   *
   * @see flash.events.NetStatusEvent#code_NetGroup_Posting_Notify
   *
   * @example This is a simple text chat application that uses peer-to-peer networking. The application connects over RTMFP to Flash Media Server. The server keeps the client applications' fingerprints and manages the peer group as clients connect. However, all data is sent between clients (peers) -- data is not sent back to the server.
   * <p>When you run the application, you can enter any group name into the text input field. The GroupSpecifier class uses the name (along with any GroupSpecifier properties you've set) to create a string which is the perpetually unique name of the group. To connect another client to the group, that client must use the same group name. For example, if client A uses the group name "firstmesh", other clients that want to communicate with client A must also use the group name "firstmesh". If client B uses the group name "kite", it will connect successfully, but it will create a new group and won't be able to communicate with client A or anyone in the "firstmesh" group.</p>
   * <p>To run this example, add a Button, a Label, a TextInput, and a TextArea component to the Library in Flash Pro.</p>
   * <listing>
   *
   *
   * package  {
   *
   *     import flash.display.Sprite;
   *     import flash.events.TextEvent;
   *     import flash.events.MouseEvent;
   *     import flash.events.NetStatusEvent;
   *     import fl.events.ComponentEvent;
   *     import fl.controls.Label;
   *     import fl.controls.Button;
   *     import fl.controls.TextInput;
   *     import fl.controls.TextArea;
   *     import flash.text.TextFieldAutoSize;
   *     import flash.net.*;
   *
   *     public class NetGroupPostExample extends Sprite{
   *
   *         private var connectButton:Button;
   *         private var disconnectButton:Button;
   *         private var groupNameText:TextInput;
   *         private var userNameText:TextInput;
   *         private var chatText:TextInput;
   *         private var statusLog:TextArea;
   *         private var groupLabel:Label;
   *         private var userLabel:Label;
   *
   *         private var netConnection:NetConnection = null;
   *         private var netGroup:NetGroup = null;
   *         private var sequenceNumber:uint = 0;
   *         private var connected:Boolean = false;
   *         private var joinedGroup:Boolean = false;
   *
   *         private const SERVER:String = "rtmfp://fms.example.com/someapp";
   *
   *         public function NetGroupPostExample() {
   *             DoUI();
   *         }
   *
   *         // Writes messages to the TextArea.
   *         private function StatusMessage(msg:Object):void{
   *             statusLog.text += msg;
   *             statusLog.verticalScrollPosition = statusLog.textHeight;
   *             statusLog.validateNow();
   *         }
   *
   *         // Handles all NetStatusEvents for the NetConnection and the NetGroup.
   *         // This code includes cases it doesn't handle so you can see the cases
   *         // and their info objects for learning purposes.
   *         private function NetStatusHandler(e:NetStatusEvent):void{
   *             StatusMessage(e.info.code + "\n");
   *             switch(e.info.code){
   *                 case "NetConnection.Connect.Success":
   *                     connectButton.enabled = false;
   *                     disconnectButton.enabled = true;
   *                     OnConnect();
   *                     break;
   *
   *                 case "NetConnection.Connect.Closed":
   *                     OnDisconnect();
   *                     break;
   *
   *                 case "NetGroup.Connect.Success": // e.info.group
   *                     OnNetGroupConnect();
   *                     break;
   *
   *                 case "NetGroup.Connect.Rejected": // e.info.group
   *                 case "NetGroup.Connect.Failed": // e.info.group
   *                     break;
   *
   *                 case "NetGroup.Posting.Notify": // e.info.message, e.info.messageID
   *                     OnPosting(e.info.message);
   *                     break;
   *
   *                 case "NetStream.MulticastStream.Reset":
   *                 case "NetStream.Buffer.Full":
   *                     break;
   *
   *                 case "NetGroup.SendTo.Notify": // e.info.message, e.info.from, e.info.fromLocal
   *                 case "NetGroup.LocalCoverage.Notify": //
   *                 case "NetGroup.Neighbor.Connect": // e.info.neighbor
   *                 case "NetGroup.Neighbor.Disconnect": // e.info.neighbor
   *                 case "NetGroup.MulticastStream.PublishNotify": // e.info.name
   *                 case "NetGroup.MulticastStream.UnpublishNotify": // e.info.name
   *                 case "NetGroup.Replication.Fetch.SendNotify": // e.info.index
   *                 case "NetGroup.Replication.Fetch.Failed": // e.info.index
   *                 case "NetGroup.Replication.Fetch.Result": // e.info.index, e.info.object
   *                 case "NetGroup.Replication.Request": // e.info.index, e.info.requestID
   *                 default:
   *                     break;
   *                 }
   *             }
   *         // Creates a NetConnection to Flash Media Server if the app isn't already connected
   *         // and if there's a group name in the TextInput field.
   *         private function DoConnect(e:MouseEvent):void{
   *             if(!connected && (groupNameText.length > 0)){
   *                 StatusMessage("Connecting to \"" + SERVER + "\" ...\n");
   *                 netConnection = new NetConnection();
   *                 netConnection.addEventListener(NetStatusEvent.NET_STATUS, NetStatusHandler);
   *                 // To connect to Flash Media Server, pass the server name.
   *                 netConnection.connect(SERVER);
   *             }
   *             else
   *             {
   *                 StatusMessage("Enter a group name");
   *             }
   *         }
   *
   *         // Called in the "NetConnection.Connect.Success" case in the NetStatusEvent handler.
   *         private function OnConnect():void{
   *
   *             StatusMessage("Connected\n");
   *             connected = true;
   *
   *             // Create a GroupSpecifier object to pass to the NetGroup constructor.
   *             // The GroupSpecifier determines the properties of the group
   *             var groupSpecifier:GroupSpecifier;
   *             groupSpecifier = new GroupSpecifier("aslrexample/" + groupNameText.text);
   *             groupSpecifier.postingEnabled = true;
   *             groupSpecifier.serverChannelEnabled = true;
   *
   *             netGroup = new NetGroup(netConnection, groupSpecifier.groupspecWithAuthorizations());
   *             netGroup.addEventListener(NetStatusEvent.NET_STATUS, NetStatusHandler);
   *
   *             StatusMessage("Join \"" + groupSpecifier.groupspecWithAuthorizations() + "\"\n");
   *
   *         }
   *
   *         private function OnNetGroupConnect():void{
   *             joinedGroup = true;
   *         }
   *
   *         private function DoDisconnect(e:MouseEvent):void{
   *             if(netConnection){
   *                 netConnection.close();
   *             }
   *         }
   *
   *         private function OnDisconnect():void{
   *             StatusMessage("Disconnected\n");
   *             netConnection = null;
   *             netGroup = null;
   *             connected = false;
   *             joinedGroup = false;
   *             connectButton.enabled = true;
   *             disconnectButton.enabled = false;
   *         }
   *
   *         private function ClearChatText():void{
   *             chatText.text = "";
   *         }
   *
   *         // Called when you the chatText field has focus and you press Enter.
   *         private function DoPost(e:ComponentEvent):void{
   *             if(joinedGroup){
   *                 var message:Object = new Object;
   *                 message.user = userNameText.text;
   *                 message.text = chatText.text;
   *                 message.sequence = sequenceNumber++;
   *                 message.sender = netConnection.nearID;
   *
   *                 netGroup.post(message);
   *                 StatusMessage("==> " + chatText.text + "\n");
   *             } else {
   *                 StatusMessage("Click Connect before sending a chat message");
   *             }
   *             ClearChatText();
   *         }
   *
   *         private function OnPosting(message:Object):void{
   *             StatusMessage("<" + message.user + "> " + message.text + "\n");
   *         }
   *
   *         private function DoUI():void {
   *
   *             groupLabel = new Label();
   *             groupLabel.move(20, 10);
   *             groupLabel.autoSize = TextFieldAutoSize.LEFT
   *             groupLabel.text = "Group name:"
   *             addChild(groupLabel);
   *
   *             groupNameText = new TextInput();
   *             groupNameText.move(90, 10);
   *             groupNameText.text = "channel" + (int(Math.random() * 899) + 101);
   *             addChild(groupNameText);
   *
   *             connectButton = new Button();
   *             connectButton.addEventListener(MouseEvent.CLICK, DoConnect);
   *             connectButton.move(205, 10);
   *             connectButton.label = "Connect";
   *             addChild(connectButton);
   *
   *             disconnectButton = new Button();
   *             disconnectButton.addEventListener(MouseEvent.CLICK, DoDisconnect);
   *             disconnectButton.move(310, 10);
   *             disconnectButton.label = "Disconnect";
   *             disconnectButton.enabled = false;
   *             addChild(disconnectButton);
   *
   *             statusLog = new TextArea();
   *             statusLog.move(30, 38);
   *             statusLog.width = 360;
   *             statusLog.height = 215;
   *             statusLog.editable = false;
   *             addChild(statusLog);
   *
   *             userLabel = new Label();
   *             userLabel.move(20, 270);
   *             userLabel.autoSize = TextFieldAutoSize.LEFT
   *             userLabel.text = "User name:"
   *             addChild(userLabel);
   *
   *             userNameText = new TextInput();
   *             userNameText.move(80, 270);
   *             userNameText.text = "user " + int(Math.random() * 65536);
   *             addChild(userNameText);
   *
   *             chatText = new TextInput();
   *             chatText.addEventListener(ComponentEvent.ENTER, DoPost);
   *             chatText.move(185, 270);
   *             chatText.maxChars = 255;
   *             chatText.width = 215;
   *             addChild(chatText);
   *
   *         }
   *
   *         public function onPlayStatus(info:Object):void {}
   *         public function onMetaData(info:Object):void {}
   *         public function onCuePoint(info:Object):void {}
   *         public function onTextData(info:Object):void {}
   *
   *     }
   *
   * }
   *
   *
   *
   *
   * </listing>
   */
  public function post(message:Object):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes objects from <code>startIndex</code> through <code>endIndex</code>, from the set of objects this node advertises to neighbors as objects for which it fulfills requests. Indices must be whole numbers from 0 through 9007199254740992.
   * <p>For more information about object replication, see <a href="http://www.adobe.com/go/learn_fms_replicate_en">"Replicate an object within a group"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param startIndex The beginning of the range of object indices to remove from the Have set.
   * @param endIndex The end of the range of object indices to remove from the Have set.
   *
   * @throws RangeError A number passed to this method is less than 0 or greater than 9007199254740992.
   *
   * @see #addHaveObjects()
   *
   */
  public function removeHaveObjects(startIndex:Number, endIndex:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Removes objects from <code>startIndex</code> through <code>endIndex</code>, from the set of objects to retrieve. Indices must be whole numbers from 0 through 9007199254740992.
   * <p>For more information about object replication, see <a href="http://www.adobe.com/go/learn_fms_replicate_en">"Replicate an object within a group"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param startIndex The beginning of the range of object indices to remove from the Want set.
   * @param endIndex The end of the range of object indices to remove from the Want set.
   *
   * @throws RangeError A number passed to this method is less than 0 or greater than 9007199254740992.
   *
   * @see #addWantObjects()
   *
   */
  public function removeWantObjects(startIndex:Number, endIndex:Number):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sends a message to all neighbors. Returns <code>NetGroupSendResult.SENT</code> if at least one neighbor was selected.
   * <p>For more information about routing messages, see <a href="http://www.adobe.com/go/learn_fms_direct_routing_en">"Route messages directly to a peer"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p>When a node receives a message, a NetStatusEvent is sent to the NetGroup's event listener with <code>NetGroup.SendTo.Notify</code> in the <code>code</code> property of the <code>info</code> object.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param message The message to send.
   *
   * @return A property of enumeration class NetGroupSendResult indicating the success or failure of the send.
   *
   * @see #sendToNeighbor()
   * @see flash.events.NetStatusEvent#code_NetGroup_SendTo_Notify
   * @see NetGroupSendResult
   *
   */
  public function sendToAllNeighbors(message:Object):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sends a message to the neighbor (or local node) nearest to the specified group address. Considers neighbors from the entire ring. Returns <code>NetGroupSendResult.SENT</code> if the message was successfully sent toward its destination.
   * <p>For more information about routing messages, see <a href="http://www.adobe.com/go/learn_fms_direct_routing_en">"Route messages directly to a peer"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p>When a node receives a message, a NetStatusEvent is sent to the NetGroup's event listener with <code>NetGroup.SendTo.Notify</code> in the <code>code</code> property of the <code>info</code> object.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param message The message to send.
   * @param groupAddress The group address toward which to route the message.
   *
   * @return A property of enumeration class NetGroupSendResult indicating the success or failure of the send.
   *
   * @see #convertPeerIDToGroupAddress()
   * @see #receiveMode
   * @see NetGroupSendResult
   * @see flash.events.NetStatusEvent#code_NetGroup_SendTo_Notify
   *
   */
  public function sendToNearest(message:Object, groupAddress:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Sends a message to the neighbor specified by the <code>sendMode</code> parameter. Returns <code>NetGroupSendResult.SENT</code> if the message was successfully sent to the requested destination.
   * <p>For more information about routing messages, see <a href="http://www.adobe.com/go/learn_fms_direct_routing_en">"Route messages directly to a peer"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p>When a node receives a message, a NetStatusEvent is sent to the NetGroup's event listener with <code>NetGroup.SendTo.Notify</code> in the <code>code</code> property of the <code>info</code> object.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param message The message to send.
   * @param sendMode A property of enumeration class NetGroupSendMode specifying the neighbor to which to send the message.
   *
   * @return A property of enumeration class NetGroupSendResult indicating the success or failure of the send.
   *
   * @see #sendToAllNeighbors()
   * @see flash.events.NetStatusEvent#code_NetGroup_SendTo_Notify
   * @see NetGroupSendMode
   * @see NetGroupSendResult
   *
   */
  public function sendToNeighbor(message:Object, sendMode:String):String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Satisfies the request as received by NetStatusEvent <code>NetGroup.Replication.Request</code> for an object previously advertised with the <code>addHaveObjects()</code> method. The <code>object</code> can be any of the following: An Object, an int, a Number, and a String. The <code>object</code> cannot be a MovieClip.
   * <p>For more information about object replication, see <a href="http://www.adobe.com/go/learn_fms_replicate_en">"Replicate an object within a group"</a> in <i>Flash Media Server Developer’s Guide</i>.</p>
   * <p><b>NOTE:</b> Test for the <code>NetGroup.Neighbor.Connect</code> event before calling this method.</p>
   * @param requestID The request identifier as given in the <code>NetGroup.Replication.Request</code> event.
   * @param object The object corresponding to the index given in the <code>NetGroup.Replication.Request</code> event.
   *
   * @see #addHaveObjects()
   * @see #denyRequestedObject()
   * @see flash.events.NetStatusEvent#code_NetGroup_Replication_Request
   *
   */
  public function writeRequestedObject(requestID:int, object:Object):void {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
