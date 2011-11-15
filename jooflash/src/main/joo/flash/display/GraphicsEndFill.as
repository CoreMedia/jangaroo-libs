package flash.display {


/**
 * Indicates the end of a graphics fill. Use a GraphicsEndFill object with the <code>Graphics.drawGraphicsData()</code> method.
 * <p>Drawing a GraphicsEndFill object is the equivalent of calling the <code>Graphics.endFill()</code> method.</p>
 * @see Graphics#drawGraphicsData()
 * @see Graphics#endFill()
 *
 */
public final class GraphicsEndFill implements IGraphicsFill, IGraphicsData {
  /**
   * Creates an object to use with the <code>Graphics.drawGraphicsData()</code> method to end the fill, explicitly.
   * @see Graphics#drawGraphicsData()
   * @see Graphics#endFill()
   *
   */
  public function GraphicsEndFill() {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
