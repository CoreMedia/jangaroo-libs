package flash.events {

/**
 * An object dispatches a DataEvent object when raw data has completed loading. There are two types of data event:
 * <ul>
 * <li><code>DataEvent.DATA</code>: dispatched for data sent or received.</li>
 * <li><code>DataEvent.UPLOAD_COMPLETE_DATA</code>: dispatched when data is sent and the server has responded.</li></ul>
 * <p><a href="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/events/DataEvent.html#includeExamplesSummary">View the examples</a></p>
 * @see flash.net.FileReference
 * @see flash.net.XMLSocket
 *
 */
public class DataEvent extends TextEvent {
  /**
   * The raw data loaded into Flash Player or Adobe AIR.
   */
  public function get data():String {
    return _data;
  }

  /**
   * @private
   */
  public function set data(value:String):void {
    _data = value;
  }

  /**
   * Creates an event object that contains information about data events. Event objects are passed as parameters to event listeners.
   * @param type The type of the event. Event listeners can access this information through the inherited <code>type</code> property. There is only one type of data event: <code>DataEvent.DATA</code>.
   * @param bubbles Determines whether the Event object participates in the bubbling phase of the event flow. Event listeners can access this information through the inherited <code>bubbles</code> property.
   * @param cancelable Determines whether the Event object can be canceled. Event listeners can access this information through the inherited <code>cancelable</code> property.
   * @param data The raw data loaded into Flash Player or Adobe AIR. Event listeners can access this information through the <code>data</code> property.
   *
   * @see flash.net.XMLSocket
   * @see #DATA
   *
   */
  public function DataEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, data:String = "") {
    super(type, bubbles, cancelable);
    _data = data;
  }

  /**
   * Creates a copy of the DataEvent object and sets the value of each property to match that of the original.
   * @return A new DataEvent object with property values that match those of the original.
   *
   */
  override public function clone():Event {
    return new DataEvent(type, bubbles, cancelable, _data);
  }

  /**
   * Returns a string that contains all the properties of the DataEvent object. The string is in the following format:
   * <p><code>[DataEvent type=<i>value</i> bubbles=<i>value</i> cancelable=<i>value</i> data=<i>value</i>]</code></p>
   * @return A string that contains all the properties of the DataEvent object.
   *
   */
  override public function toString():String {
    return formatToString("DataEvent", "type", "bubbles", "cancelable", "data");
  }

  /**
   * Defines the value of the <code>type</code> property of a <code>data</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>data</code></td>
   * <td>The raw data loaded into Flash Player or Adobe AIR.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The XMLSocket object receiving data.</td></tr></table>
   * @see flash.net.XMLSocket#event:data
   *
   */
  public static const DATA:String = "data";
  /**
   * Defines the value of the <code>type</code> property of an <code>uploadCompleteData</code> event object.
   * <p>This event has the following properties:</p>
   * <table>
   * <tr><th>Property</th><th>Value</th></tr>
   * <tr>
   * <td><code>bubbles</code></td>
   * <td><code>false</code></td></tr>
   * <tr>
   * <td><code>cancelable</code></td>
   * <td><code>false</code>; there is no default behavior to cancel.</td></tr>
   * <tr>
   * <td><code>currentTarget</code></td>
   * <td>The object that is actively processing the Event object with an event listener.</td></tr>
   * <tr>
   * <td><code>data</code></td>
   * <td>The raw data returned from the server after a successful file upload.</td></tr>
   * <tr>
   * <td><code>target</code></td>
   * <td>The FileReference object receiving data after a successful upload.</td></tr></table>
   * @see flash.net.FileReference#event:uploadCompleteData
   *
   */
  public static const UPLOAD_COMPLETE_DATA:String = "uploadCompleteData";

  private var _data:String;
}
}
