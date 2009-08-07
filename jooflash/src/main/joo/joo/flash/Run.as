package joo.flash {

import flash.display.Stage;

public class Run {

  public static function main(id : String, primaryDisplayObjectClassName : String) : void {
    joo.classLoader.import_(primaryDisplayObjectClassName);
    joo.classLoader.complete(function() : void {
      var stage : Stage = new Stage(id);
      var primaryDisplayObjectClass : Class = joo.getQualifiedObject(primaryDisplayObjectClassName) as Class;
      stage.addChildAt(new primaryDisplayObjectClass() as DisplayObject, 0);
    });
  }

}
}