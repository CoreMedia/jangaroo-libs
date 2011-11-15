package flash.system {
/**
 * The JPEGLoaderContext class includes a property for enabling a deblocking filter when loading a JPEG image. The deblocking filter improves an image's quality at higher compression settings by smoothing neighboring pixels. To apply deblocking when loading a JPEG image, create a JPEGLoaderContext object, and set its <code>deblockingFilter</code> property. Then use the JPEGLoaderContext object name as the value of the <code>context</code> parameter of the <code>load()</code> method of the Loader object used to load the image.
 * <p>The JPEGLoaderContext class extends the LoaderContext class. Set the <code>checkPolicyFile</code> property to <code>true</code> if you need programmatic access to the pixels of the loaded image (for example, if you're using the <code>BitmapData.draw()</code> method). Setting the <code>checkPolicyFile</code> property is not necessary for AIR content running in the application sandbox.</p>
 * @see flash.display.Loader#load()
 * @see flash.display.BitmapData#draw()
 *
 */
public class JPEGLoaderContext extends LoaderContext {
  /**
   * Specifies the strength of the deblocking filter. A value of 1.0 applies a full strength deblocking filter, a value of 0.0 disables the deblocking filter.
   */
  public var deblockingFilter:Number = 0.0;

  /**
   * Creates a new JPEGLoaderContext object with the specified settings.
   * @param deblockingFilter Specifies the strength of the deblocking filter. A value of 1.0 applies a full strength deblocking filter, a value of 0.0 disables the deblocking filter.
   * @param checkPolicyFile Specifies whether Flash Player should check for the existence of a URL policy file before loading the object. Does not apply for AIR content running in the application sandbox.
   * @param applicationDomain Specifies the ApplicationDomain object to use for a Loader object.
   * @param securityDomain Specifies the SecurityDomain object to use for a Loader object.
   *
   * @see LoaderContext
   * @see flash.display.Loader#load()
   * @see flash.display.Loader#loadBytes()
   * @see ApplicationDomain
   * @see SecurityDomain
   *
   */
  public function JPEGLoaderContext(deblockingFilter:Number = 0.0, checkPolicyFile:Boolean = false, applicationDomain:ApplicationDomain = null, securityDomain:SecurityDomain = null) {
    throw new Error('not implemented'); // TODO: implement!
  }
}
}
