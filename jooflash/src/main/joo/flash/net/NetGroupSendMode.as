package flash.net {


/**
 * The NetGroupSendMode class is an enumeration of constant values used for the <code>sendMode</code> parameter of the <code>NetGroup.sendToNeighbor()</code> method.
 * @see NetGroup#sendToNeighbor()
 *
 */
public final class NetGroupSendMode {
  /**
   * Specifies the neighbor with the nearest group address in the decreasing direction.
   */
  public static const NEXT_DECREASING:String = "nextDecreasing";
  /**
   * Specifies the neighbor with the nearest group address in the increasing direction.
   */
  public static const NEXT_INCREASING:String = "nextIncreasing";
}
}
