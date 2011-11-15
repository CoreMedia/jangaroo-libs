package flash.display {


/**
 * Defines a line style or stroke.
 * <p>Use a GraphicsStroke object with the <code>Graphics.drawGraphicsData()</code> method. Drawing a GraphicsStroke object is the equivalent of calling one of the methods of the Graphics class that sets the line style, such as the <code>Graphics.lineStyle()</code> method, the <code>Graphics.lineBitmapStyle()</code> method, or the <code>Graphics.lineGradientStyle()</code> method.</p>
 * @see Graphics#lineStyle()
 * @see Graphics#lineBitmapStyle()
 * @see Graphics#lineGradientStyle()
 * @see Graphics#drawGraphicsData()
 *
 */
public final class GraphicsStroke implements IGraphicsStroke, IGraphicsData {
  /**
   * Specifies the type of caps at the end of lines. Valid values are: <code>CapsStyle.NONE</code>, <code>CapsStyle.ROUND</code>, and <code>CapsStyle.SQUARE</code>. If a value is not indicated, Flash uses round caps.
   * <p>For example, the following illustrations show the different <code>capsStyle</code> settings. For each setting, the illustration shows a blue line with a thickness of 30 (for which the <code>capsStyle</code> applies), and a superimposed black line with a thickness of 1 (for which no <code>capsStyle</code> applies):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/linecap.jpg" /></p>
   * @see CapsStyle
   *
   */
  public function get caps():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set caps(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Specifies the instance containing data for filling a stroke. An IGraphicsFill instance can represent a series of fill commands.
   * @see IGraphicsFill
   *
   */
  public var fill:IGraphicsFill;

  /**
   * Specifies the type of joint appearance used at angles. Valid values are: <code>JointStyle.BEVEL</code>, <code>JointStyle.MITER</code>, and <code>JointStyle.ROUND</code>. If a value is not indicated, Flash uses round joints.
   * <p>For example, the following illustrations show the different <code>joints</code> settings. For each setting, the illustration shows an angled blue line with a thickness of 30 (for which the <code>jointStyle</code> applies), and a superimposed angled black line with a thickness of 1 (for which no <code>jointStyle</code> applies):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/linejoin.jpg" /></p>
   * <p><b>Note:</b> For <code>joints</code> set to <code>JointStyle.MITER</code>, you can use the <code>miterLimit</code> parameter to limit the length of the miter.</p>
   * @see JointStyle
   *
   */
  public function get joints():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set joints(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the limit at which a miter is cut off. Valid values range from 1 to 255 (and values outside that range are rounded to 1 or 255). This value is only used if the <code>jointStyle</code> is set to <code>"miter"</code>. The <code>miterLimit</code> value represents the length that a miter can extend beyond the point at which the lines meet to form a joint. The value expresses a factor of the line <code>thickness</code>. For example, with a <code>miterLimit</code> factor of 2.5 and a <code>thickness</code> of 10 pixels, the miter is cut off at 25 pixels.
   * <p>For example, consider the following angled lines, each drawn with a <code>thickness</code> of 20, but with <code>miterLimit</code> set to 1, 2, and 4. Superimposed are black reference lines showing the meeting points of the joints:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/miterLimit.jpg" /></p>
   * <p>Notice that a given <code>miterLimit</code> value has a specific maximum angle for which the miter is cut off. The following table lists some examples:</p>
   * <table>
   * <tr><th><code>miterLimit</code> value:</th><th>Angles smaller than this are cut off:</th></tr>
   * <tr>
   * <td>1.414</td>
   * <td>90 degrees</td></tr>
   * <tr>
   * <td>2</td>
   * <td>60 degrees</td></tr>
   * <tr>
   * <td>4</td>
   * <td>30 degrees</td></tr>
   * <tr>
   * <td>8</td>
   * <td>15 degrees</td></tr></table>
   */
  public var miterLimit:Number;
  /**
   * Specifies whether to hint strokes to full pixels. This affects both the position of anchors of a curve and the line stroke size itself. With <code>pixelHinting</code> set to <code>true</code>, Flash Player hints line widths to full pixel widths. With <code>pixelHinting</code> set to <code>false</code>, disjoints can appear for curves and straight lines. For example, the following illustrations show how Flash Player renders two rounded rectangles that are identical, except that the <code>pixelHinting</code> parameter used in the <code>lineStyle()</code> method is set differently (the images are scaled by 200%, to emphasize the difference):
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/lineStyle_pixelHinting.jpg" /></p>
   */
  public var pixelHinting:Boolean;

  /**
   * Specifies the stroke thickness scaling. Valid values are:
   * <ul>
   * <li><code>LineScaleMode.NORMAL</code>—Always scale the line thickness when the object is scaled (the default).</li>
   * <li><code>LineScaleMode.NONE</code>—Never scale the line thickness.</li>
   * <li><code>LineScaleMode.VERTICAL</code>—Do not scale the line thickness if the object is scaled vertically <i>only</i>. For example, consider the following circles, drawn with a one-pixel line, and each with the <code>scaleMode</code> parameter set to <code>LineScaleMode.VERTICAL</code>. The circle on the left is scaled vertically only, and the circle on the right is scaled both vertically and horizontally:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/LineScaleMode_VERTICAL.jpg" /></p></li>
   * <li><code>LineScaleMode.HORIZONTAL</code>—Do not scale the line thickness if the object is scaled horizontally <i>only</i>. For example, consider the following circles, drawn with a one-pixel line, and each with the <code>scaleMode</code> parameter set to <code>LineScaleMode.HORIZONTAL</code>. The circle on the left is scaled horizontally only, and the circle on the right is scaled both vertically and horizontally:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/LineScaleMode_HORIZONTAL.jpg" /></p></li></ul>
   * @see LineScaleMode
   *
   */
  public function get scaleMode():String {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * @private
   */
  public function set scaleMode(value:String):void {
    throw new Error('not implemented'); // TODO: implement!
  }

  /**
   * Indicates the thickness of the line in points; valid values are 0-255. If a number is not specified, or if the parameter is undefined, a line is not drawn. If a value of less than 0 is passed, the default is 0. The value 0 indicates hairline thickness; the maximum thickness is 255. If a value greater than 255 is passed, the default is 255.
   */
  public var thickness:Number;

  /**
   * Creates a new GraphicsStroke object.
   * @param thickness An integer that indicates the thickness of the line in points; valid values are 0-255. If a number is not specified, or if the parameter is undefined, a line is not drawn. If a value of less than 0 is passed, the default is 0. The value 0 indicates hairline thickness; the maximum thickness is 255. If a value greater than 255 is passed, the default is 255.
   * @param pixelHinting A Boolean value that specifies whether to hint strokes to full pixels. This affects both the position of anchors of a curve and the line stroke size itself. With <code>pixelHinting</code> set to <code>true</code>, Flash Player hints line widths to full pixel widths. With <code>pixelHinting</code> set to <code>false</code>, disjoints can appear for curves and straight lines. For example, the following illustrations show how Flash Player renders two rounded rectangles that are identical, except that the <code>pixelHinting</code> parameter used in the <code>lineStyle()</code> method is set differently (the images are scaled by 200%, to emphasize the difference):
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/lineStyle_pixelHinting.jpg" /></p>
   * <p>If a value is not supplied, the line does not use pixel hinting.</p>
   * @param scaleMode A value from the LineScaleMode class that specifies which scale mode to use:
   * <ul>
   * <li><code>LineScaleMode.NORMAL</code>—Always scale the line thickness when the object is scaled (the default).</li>
   * <li><code>LineScaleMode.NONE</code>—Never scale the line thickness.</li>
   * <li><code>LineScaleMode.VERTICAL</code>—Do not scale the line thickness if the object is scaled vertically <i>only</i>. For example, consider the following circles, drawn with a one-pixel line, and each with the <code>scaleMode</code> parameter set to <code>LineScaleMode.VERTICAL</code>. The circle on the left is scaled vertically only, and the circle on the right is scaled both vertically and horizontally:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/LineScaleMode_VERTICAL.jpg" /></p></li>
   * <li><code>LineScaleMode.HORIZONTAL</code>—Do not scale the line thickness if the object is scaled horizontally <i>only</i>. For example, consider the following circles, drawn with a one-pixel line, and each with the <code>scaleMode</code> parameter set to <code>LineScaleMode.HORIZONTAL</code>. The circle on the left is scaled horizontally only, and the circle on the right is scaled both vertically and horizontally:
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/LineScaleMode_HORIZONTAL.jpg" /></p></li></ul>
   * @param caps A value from the CapsStyle class that specifies the type of caps at the end of lines. Valid values are: <code>CapsStyle.NONE</code>, <code>CapsStyle.ROUND</code>, and <code>CapsStyle.SQUARE</code>. If a value is not indicated, Flash uses round caps.
   * <p>For example, the following illustrations show the different <code>capsStyle</code> settings. For each setting, the illustration shows a blue line with a thickness of 30 (for which the <code>capsStyle</code> applies), and a superimposed black line with a thickness of 1 (for which no <code>capsStyle</code> applies):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/linecap.jpg" /></p>
   * @param joints A value from the JointStyle class that specifies the type of joint appearance used at angles. Valid values are: <code>JointStyle.BEVEL</code>, <code>JointStyle.MITER</code>, and <code>JointStyle.ROUND</code>. If a value is not indicated, Flash uses round joints.
   * <p>For example, the following illustrations show the different <code>joints</code> settings. For each setting, the illustration shows an angled blue line with a thickness of 30 (for which the <code>jointStyle</code> applies), and a superimposed angled black line with a thickness of 1 (for which no <code>jointStyle</code> applies):</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/linejoin.jpg" /></p>
   * <p><b>Note:</b> For <code>joints</code> set to <code>JointStyle.MITER</code>, you can use the <code>miterLimit</code> parameter to limit the length of the miter.</p>
   * @param miterLimit A number that indicates the limit at which a miter is cut off. Valid values range from 1 to 255 (and values outside that range are rounded to 1 or 255). This value is only used if the <code>jointStyle</code> is set to <code>"miter"</code>. The <code>miterLimit</code> value represents the length that a miter can extend beyond the point at which the lines meet to form a joint. The value expresses a factor of the line <code>thickness</code>. For example, with a <code>miterLimit</code> factor of 2.5 and a <code>thickness</code> of 10 pixels, the miter is cut off at 25 pixels.
   * <p>For example, consider the following angled lines, each drawn with a <code>thickness</code> of 20, but with <code>miterLimit</code> set to 1, 2, and 4. Superimposed are black reference lines showing the meeting points of the joints:</p>
   * <p><img src="http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/images/miterLimit.jpg" /></p>
   * <p>Notice that a given <code>miterLimit</code> value has a specific maximum angle for which the miter is cut off. The following table lists some examples:</p>
   * <table>
   * <tr><th><code>miterLimit</code> value:</th><th>Angles smaller than this are cut off:</th></tr>
   * <tr>
   * <td>1.414</td>
   * <td>90 degrees</td></tr>
   * <tr>
   * <td>2</td>
   * <td>60 degrees</td></tr>
   * <tr>
   * <td>4</td>
   * <td>30 degrees</td></tr>
   * <tr>
   * <td>8</td>
   * <td>15 degrees</td></tr></table>
   * @param fill An IGraphicsFill instance containing data for filling a stroke. An IGraphicsFill instance can represent a series of fill commands.
   *
   * @see LineScaleMode
   * @see CapsStyle
   * @see JointStyle
   * @see IGraphicsFill
   *
   */
  public function GraphicsStroke(thickness:Number = NaN, pixelHinting:Boolean = false, scaleMode:String = "normal", caps:String = "none", joints:String = "round", miterLimit:Number = 3.0, fill:IGraphicsFill = null) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
