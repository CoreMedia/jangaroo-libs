package flash.utils {
public function getQualifiedClassName(value : Object) : String {
  var type : Function = typeof value=="function" ? value : value.constructor;
  return typeof type["$class"]=="object" ? (type["$class"]["fullClassName"] as String).replace(/\.([^\.]+$)/ as String,"::$1") : String(type);
}
}
