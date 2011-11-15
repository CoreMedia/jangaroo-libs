package flashx.textLayout.container {
import flash.geom.Rectangle;

/**
 * The ColumnState class calculates the sizes and locations of columns using the width of the container and the container attributes. You can create instances of this class independently to calculate column values, or you can get the column values that were used for the text after the container has been composed or updated (redrawn).
 * @see ContainerController
 *
 */
public class ColumnState {
  /**
   * The number of columns in the container.
   */
  public function get columnCount():int {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The amount of space, in pixels, left between columns in the container.
   */
  public function get columnGap():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * The width of columns, in pixels, in the container.
   */
  public function get columnWidth():Number {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Constructor function - creates a ColumnState object. If the values of <code>controller.compositionWidth</code> and <code>controller.compositionHeight</code> equal <code>NaN</code> (not a number), the constructor measures the container's contents to determine the actual composition width and height that feed into ColumnState. Use the constants defined by the <code>flashx.textLayout.formats.BlockProgression</code> class to specify the value of the <code>blockProgression</code> parameter. Use the constants defined by <code>flashx.textLayout.formats.Direction</code> to specify the value of the <code>columnDirection</code> parameter.
   * @param blockProgression The direction of lines for the textflow, either BlockProgression.TB (top-to-bottom) or BlockProgression.RL (right-to-left).
   * @param columnDirection The direction of column layout for the text flow, either Direction.RTL (right-to-left) or Direction.LTR (left-to-right).
   * @param controller A ContainerController instance whose attributes are used to calculate the column values.
   * @param compositionWidth The horizontal extent, in pixels, allowed for text inside the container.
   * @param compositionHeight The vertical extent, in pixels, allowed for text inside the container.
   *
   * @see flashx.textLayout.formats.BlockProgression
   * @see flashx.textLayout.formats.Direction
   *
   */
  public function ColumnState(blockProgression:String, columnDirection:String, controller:ContainerController, compositionWidth:Number, compositionHeight:Number) {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Returns the area that a column takes within the container. Allows you to access the area for a specific column.
   * @param index The relative position of the column among all columns in the container, with the first column at position 0.
   *
   * @return The area of the specified column.
   *
   */
  public function getColumnAt(index:int):Rectangle {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
