package flash.net {
import joo.getOrCreatePackage;

/**
 * Looks up a class that previously had an alias registered through a call to the <code>registerClassAlias()</code> method.
 * <p>This method does not interact with the <code>flash.utils.getDefinitionByName()</code> method.</p>
 * @param aliasName The alias to find.
 *
 * @return The class associated with the given alias. If not found, an exception will be thrown.
 *
 * @throws ReferenceError The alias was not registered.
 *
 * @see #registerClassAlias
 *
 */
public function getClassByAlias(aliasName:String):Class {
  var alias:Class = getOrCreatePackage("flash.net.classAliasRegistry")[aliasName];
  if (!alias) {
    throw new ReferenceError(aliasName);
  }
  return alias;
}

}