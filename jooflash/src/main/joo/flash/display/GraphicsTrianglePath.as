package flash.display {


/**
 * Defines an ordered set of triangles that can be rendered using either (u,v) fill coordinates or a normal fill. Each triangle in the path is represented by three sets of (x, y) coordinates, each of which is one point of the triangle.
 * <p>The triangle vertices do not contain z coordinates and do not necessarily represent 3D faces. However a triangle path can be used to support the rendering of 3D geometry in a 2D space.</p>
 * @see Graphics#drawTriangles()
 *
 */
public final class GraphicsTrianglePath implements IGraphicsPath, IGraphicsData {
  /**
   * Specifies whether to render triangles that face in a given direction. Used to prevent the rendering of triangles that cannot be seen in the current view.
   * <p>Can be set to any value defined by the TriangleCulling class.</p>
   * @see TriangleCulling
   *
   */
  public function get culling():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set culling(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * A Vector of integers or indexes, where every three indexes define a triangle. If the indexes parameter is null then every three vertices (six x,y pairs in the vertices Vector) defines a triangle. Otherwise each index refers to a vertex, which is a pair of numbers in the vertices Vector. For example <code>indexes[1]</code> refers to (<code>vertices[2]</code>, <code>vertices[3]</code>).
   */
  public var indices:Vector.<int>;
  /**
   * A Vector of normalized coordinates used to apply texture mapping. Each coordinate refers to a point on the bitmap used for the fill. There must be one UV or one UVT coordinate per vertex.
   * <p>In UV coordinates, (0,0) is the upper left of the bitmap, and (1,1) is the lower right of the bitmap.</p>
   * <p>If the length of this vector is twice the length of the <code>vertices</code> vector then normalized coordinates are used without perspective correction.</p>
   * <p>If the length of this vector is three times the length of the <code>vertices</code> vector then the third coordinate is interpreted as 't', the distance from the eye to the texture in eye space. This helps the rendering engine correctly apply perspective when mapping textures in 3D.</p>
   */
  public var uvtData:Vector.<Number>;
  /**
   * A Vector of Numbers where each pair of numbers is treated as a point (an x, y pair).
   */
  public var vertices:Vector.<Number>;

  /**
   * Creates a new GraphicsTrianglePath object.
   * @param vertices A Vector of Numbers where each pair of numbers is treated as a point (an x, y pair). Required.
   * @param indices A Vector of integers or indexes, where every three indexes define a triangle.
   * @param uvtData A Vector of normalized coordinates used to apply texture mapping.
   * @param culling Specifies whether to render triangles that face in a given direction. Used to prevent the rendering of triangles that cannot be seen in the current view. Can be set to any value defined by the TriangleCulling class.
   *
   * @see #culling
   * @see TriangleCulling
   *
   */
  public function GraphicsTrianglePath(vertices:Vector.<Number> = null, indices:Vector.<int> = null, uvtData:Vector.<Number> = null, culling:String = "none") {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
