package net.jangaroo.ext {
import joo.getQualifiedObject;

/**
 * Create a target object from the given config class and object.
 * This function is mainly used by code generated from EXML source files.
 * <p>First, an instance of the config class is created with the given config parameter.
 * Then, the target class, retrieved from the <code>ExtConfig</code> annotation in the
 * config class, is instantiated with the config class instance.
 * </p>
 * @param configClass the config class
 * @param config the untyped config object
 * @return the created target object
 */
public function create(configClass:Class,  config:Object):Object {
  var typedConfig:Object = new configClass(config);
  var configClassDeclaration:Object = configClass['$class'];
  var extConfigAnnotation:Object = configClassDeclaration.metadata.ExtConfig;
  if (!extConfigAnnotation || !extConfigAnnotation.target) {
    throw new Error("Missing [ExtConfig(target='...')] annotation in config class "
            + configClassDeclaration.qName);
  }
  var targetClassName:String = extConfigAnnotation.target;
  // hack for Ext AS aliases:
  if (targetClassName.substr(0, 4) == "ext.") {
    targetClassName = "Ext." + targetClassName.substr(4);
  }
  var targetClass:Class = getQualifiedObject(targetClassName);
  return new targetClass(typedConfig);
  
}

}