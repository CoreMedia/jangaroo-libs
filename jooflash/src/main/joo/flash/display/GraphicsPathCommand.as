package flash.display {


/**
 * Defines the values to use for specifying path-drawing commands.
 * <p>The values in this class are used by the <code>Graphics.drawPath()</code> method, or stored in the <code>commands</code> vector of a GraphicsPath object.</p>
 * @see Graphics#drawPath()
 * @see GraphicsPath#commands
 *
 */
public final class GraphicsPathCommand {
  /**
   * Specifies a drawing command that draws a curve from the current drawing position to the x- and y-coordinates specified in the data vector, using a control point. This command produces the same effect as the <code>Graphics.lineTo()</code> method, and uses two points in the data vector control and anchor: (cx, cy, ax, ay ).
   * @see Graphics#curveTo()
   *
   */
  public static const CURVE_TO:int = 3;
  /**
   * Specifies a drawing command that draws a line from the current drawing position to the x- and y-coordinates specified in the data vector. This command produces the same effect as the <code>Graphics.lineTo()</code> method, and uses one point in the data vector: (x,y).
   * @see Graphics#lineTo()
   *
   */
  public static const LINE_TO:int = 2;
  /**
   * Specifies a drawing command that moves the current drawing position to the x- and y-coordinates specified in the data vector. This command produces the same effect as the <code>Graphics.moveTo()</code> method, and uses one point in the data vector: (x,y).
   * @see Graphics#moveTo()
   *
   */
  public static const MOVE_TO:int = 1;
  /**
   * Represents the default "do nothing" command.
   */
  public static const NO_OP:int = 0;
  /**
   * Specifies a "line to" drawing command, but uses two sets of coordinates (four values) instead of one set. This command allows you to switch between "line to" and "curve to" commands without changing the number of data values used per command. This command uses two sets in the data vector: one dummy location and one (x,y) location.
   * <p>The <code>WIDE_LINE_TO</code> and <code>WIDE_MOVE_TO</code> command variants consume the same number of parameters as does the <code>CURVE_TO</code> command.</p>
   * @see #LINE_TO
   * @see Graphics#lineTo()
   *
   */
  public static const WIDE_LINE_TO:int = 5;
  /**
   * Specifies a "move to" drawing command, but uses two sets of coordinates (four values) instead of one set. This command allows you to switch between "move to" and "curve to" commands without changing the number of data values used per command. This command uses two sets in the data vector: one dummy location and one (x,y) location.
   * <p>The <code>WIDE_LINE_TO</code> and <code>WIDE_MOVE_TO</code> command variants consume the same number of parameters as does the <code>CURVE_TO</code> command.</p>
   * @see #MOVE_TO
   * @see Graphics#moveTo()
   *
   */
  public static const WIDE_MOVE_TO:int = 4;
}
}
