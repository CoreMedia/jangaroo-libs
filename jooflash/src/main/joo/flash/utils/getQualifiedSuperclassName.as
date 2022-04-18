package flash.utils {

/**
 * Returns the fully qualified class name of the base class of the object specified by the <code>value</code> parameter. This function provides a quicker way of retrieving the base class name than <code>describeType()</code>, but also doesn't provide all the information <code>describeType()</code> does.
 * <p>After you retrieve the name of a class with this function, you can convert the class name to a class reference with the <code>getDefinitionByName()</code> function.</p>
 * <p><b>Note:</b> This function restricts itself to instance hierarchies, whereas the <code>describeType()</code> function uses class object hierarchies if the <code>value</code> parameter is a data type. Calling <code>describeType()</code> on a data type returns the superclass based on the class object hierarchy, in which all class objects inherit from Class. The <code>getQualifiedSuperclassName()</code> function, however, ignores the class object hierarchy and returns the superclass based on the more familiar instance hierarchy. For example, calling <code>getQualifiedSuperclassName(String)</code> returns <code>Object</code> although technically the String class object inherits from Class. In other words, the results are the same whether you use an instance of a type or the type itself.</p>
 * @param value Any value.
 *
 * @return A fully qualified base class name, or <code>null</code> if none exists.
 *
 * @see #describeType
 * @see #getDefinitionByName
 * @see #getQualifiedSuperclassName
 *
 */
public function getQualifiedSuperclassName(value:*):String {
  var type:Function = typeof value=="function" ? value : value.constructor;
  return typeof type["$class"]==="object" ? type["$class"]["superClassDeclaration"].qName.replace(/\.([^\.]+$)/,"::$1") : String(type);
}
}
