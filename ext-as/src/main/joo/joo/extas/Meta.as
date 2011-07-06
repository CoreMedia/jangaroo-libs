package joo.extas {

import ext.ComponentMgr;

import joo.DynamicClassLoader;
import joo.MemberDeclaration;
import joo.JooClassDeclaration;
import joo.getOrCreatePackage;

public class Meta {

  {
    getOrCreatePackage("joo.meta").ExtConfig = extConfig;
  }

  //noinspection JSUnusedLocalSymbols
  public static function extConfig(classDeclaration:JooClassDeclaration, memberDeclaration:MemberDeclaration, parameters:Object):void {
    var targetClass:String = parameters['target'];
    DynamicClassLoader.INSTANCE.import_(targetClass); // TODO: "import_" initialized the class, "load" suffices but is private API right now: make load public and use it here!
    var xtype:String = classDeclaration.fullClassName;
    var result:Array = xtype.match("^ext[.]config[.]([a-z]+)");
    if (result) {
      xtype = result[1];
    }
    DynamicClassLoader.INSTANCE.complete(function(imports:Object):void {
      ComponentMgr.registerType(xtype, imports[targetClass]);
    });
  }
}

}
