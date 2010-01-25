package joo.flash {

import flash.display.Stage;
import joo.classLoader;
import joo.DynamicClassLoader;
import joo.getQualifiedObject;

public class Run {

  public static function main(id : String, primaryDisplayObjectClassName : String) : void {
    (classLoader as DynamicClassLoader).import_(primaryDisplayObjectClassName);
    (classLoader as DynamicClassLoader).complete(function() : void {
      var stage : Stage = new Stage(id);
      var primaryDisplayObjectClass : Class = getQualifiedObject(primaryDisplayObjectClassName) as Class;
      stage.addChildAt(new primaryDisplayObjectClass() as DisplayObject, 0);
    });
  }

}
}