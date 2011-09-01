ext = Ext;
ext.Ext = Ext;
ext.picker = Ext.Picker;
ext.carousel = Ext.Carousel;

// ---- handle ExtConfig annotation ----
joo.getOrCreatePackage("joo.meta").ExtConfig =
  function joo_meta_ExtConfig(classDeclaration/*:joo.JooClassDeclaration*/,
                              memberDeclaration/*:joo.MemberDeclaration*/,
                              parameters/*:Object*/) {
    var targetClassName = parameters.target;
    if ('xtype' in parameters) { // if xtype is set...
      classDeclaration.getDependencies().push(targetClassName); // ...add target class dependency
      classDeclaration.addStateListener(joo.JooClassDeclaration.STATE_EVENT_AFTER_INIT_MEMBERS, function() {
        // config class is now initialized:
        var typeName = parameters.xtype || classDeclaration.fullClassName;
        // add xtype attribute to prototype and as a static field of the config class:
        classDeclaration.constructor_.prototype.xtype =
          classDeclaration.constructor_.xtype = typeName;

        var targetClass = joo.classLoader.getRequiredClassDeclaration(targetClassName);
        if (targetClass.addStateListener) { // is it a non-native Jangaroo class? Ext JS standard componentes are already registered!
          ext.ComponentMgr.registerType(typeName, targetClass.publicConstructor);

          targetClass.addStateListener(joo.JooClassDeclaration.STATE_EVENT_AFTER_INIT_MEMBERS, function() {
            // re-register the now created "real" constructor:
            ext.ComponentMgr.registerType(typeName, targetClass.constructor_);
          });
        }
      });
    }
  };
