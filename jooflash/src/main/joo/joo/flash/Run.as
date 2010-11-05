package joo.flash {
import flash.display.DisplayObject;
import flash.display.Stage;

import joo.DynamicClassLoader;
import joo.NativeClassDeclaration;
import joo.SystemClassDeclaration;
import joo.classLoader;
import joo.getQualifiedObject;

public class Run {

  public static function main(id : String, primaryDisplayObjectClassName : String) : void {
    (classLoader as DynamicClassLoader).import_(primaryDisplayObjectClassName);
    (classLoader as DynamicClassLoader).complete(function() : void {
      var primaryDisplayObjectClass : Class = getQualifiedObject(primaryDisplayObjectClassName) as Class;
      var metadata:Object = (primaryDisplayObjectClass['$class'] as SystemClassDeclaration).metadata;
      var swf:Object = metadata['SWF'];
      var stage : Stage = new Stage(id, swf);
      var cd:NativeClassDeclaration = primaryDisplayObjectClass['$class'];
      // use Jangaroo tricks to add the DisplayObject to the Stage before its constructor is called:
      var displayObject:DisplayObject = new cd.Public();
      stage.addChild(displayObject);
      cd.constructor_.call(displayObject);
    });
  }

}
}
