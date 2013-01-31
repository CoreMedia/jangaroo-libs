/**
 * Evaluate [ExtConfig] annotations at runtime.
 * Only needed for EXML, not for MXML.
 */
define(["runtime/AS3", "ext-as.module"], function(AS3, ext) {
  var REGISTRATION_BY_TYPE = {
    xtype: ext.ComponentMgr.registerType,
    ptype: ext.ComponentMgr.registerPlugin,
    type:  function(layoutName, targetClass) {
      ext.Container.LAYOUTS[layoutName.toLowerCase()] = targetClass;
    },
    gctype: function(gridColumnName, targetClass) {
      ext.grid.Column.types[gridColumnName] = targetClass;
    }
  };

  function findTypeAttribute(parameters) {
    for (var m in parameters) {
      if (m in REGISTRATION_BY_TYPE) {
        return m;
      }
    }
    return null;
  }

  function ExtConfig(configClass/*:Class*/,
                            parameters/*:Object*/) {
    var targetClassName = parameters['target'];
    if (targetClassName) { // if target class is not empty...
      var typeAttribute = findTypeAttribute(parameters);
      if (typeAttribute) { // if any type attribute is set...
        var typeName = parameters[typeAttribute] || configClass.$class.qName;
        var extTypeAttribute = typeAttribute == 'gctype' ? 'xtype' : typeAttribute; // exceptional case: gridcolumns (gctype) also use 'xtype' as their type key!
        // add [x|p|]type attribute to prototype and as a static field of the config class:
        configClass.prototype[extTypeAttribute] =
                configClass[typeAttribute] = typeName;

        // does the config class use the standard naming pattern?
        // Components using custom types (like Ext JS standard components) have to take care of registering themselves!
        if (!parameters[typeAttribute]) {
          var targetClass = AS3.getQualifiedObject(targetClassName);
          REGISTRATION_BY_TYPE[typeAttribute](typeName, targetClass);
        }
      }
    }
  }

  ExtConfig.metadata = "ExtConfig";
  AS3.registerMetadataHandler(ExtConfig);
  return ExtConfig;
});
