package joo.flash {
import flash.display.DisplayObject;
import flash.display.Stage;

import flash.utils.getDefinitionByName;

import joo.DynamicClassLoader;
import joo.JooClassDeclaration;

public class Run {

  public static function main(id : String, primaryDisplayObjectClassName : String) : void {
    var classLoader:DynamicClassLoader = DynamicClassLoader.INSTANCE;
    classLoader.import_(primaryDisplayObjectClassName);
    classLoader.complete(function() : void {
      if (classLoader.debug) {
        trace("[INFO] Loaded Flash main class " + primaryDisplayObjectClassName + ".");
      }
      var primaryDisplayObjectClass : Object = getDefinitionByName(primaryDisplayObjectClassName);
      var cd:JooClassDeclaration = primaryDisplayObjectClass['$class'];
      var metadata:Object = cd.metadata;
      var swf:Object = metadata['SWF'];
      var stage : Stage = new Stage(id, swf);
      // use Jangaroo tricks to add the DisplayObject to the Stage before its constructor is called:
      var displayObject:DisplayObject = new cd.Public();
      stage.addChild(displayObject);
      cd.constructor_.call(displayObject);
    });
  }

}
}
