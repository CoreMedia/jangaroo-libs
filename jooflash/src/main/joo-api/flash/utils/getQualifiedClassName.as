package flash.utils {

/**
 * Returns the fully qualified class name of an object.
 *
 * @param value The object for which a fully qualified class name is desired. Any ActionScript value 
 * may be passed to this method including all available ActionScript types, object
 * instances, primitive types such as uint, and class objects.
 * @return A string containing the fully qualified class name.
 * @see flash.utils.describeType
 * @see flash.utils.getQualifiedSuperclassName
 */
public function getQualifiedClassName(value : Object) : String {
  var type : Function = typeof value=="function" ? value : value.constructor;
  return typeof type["$class"]=="object" ? (type["$class"]["fullClassName"] as String).replace(/\.([^\.]+$)/ as String,"::$1") : String(type);
}
}
