package flash.utils {

/**
 * Returns the fully qualified class name of an object.
 * @param value The object for which a fully qualified class name is desired. Any ActionScript value may be passed to this method including all available ActionScript types, object instances, primitive types such as uint, and class objects.
 *
 * @return A string containing the fully qualified class name.
 *
 * @see #describeType
 * @see #getQualifiedSuperclassName
 */
public function getQualifiedClassName(value:*):String {
  var className:String = value.isInstance || value.$isClass ? value.$className : value.xclass;
  return className.replace(/\.([^\.]+$)/,"::$1");
}
}
