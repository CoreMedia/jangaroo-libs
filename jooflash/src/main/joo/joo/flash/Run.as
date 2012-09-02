package joo.flash {
import flash.display.DisplayObject;
import flash.display.LoaderInfo;
import flash.display.Stage;

import flash.events.Event;
import flash.utils.getDefinitionByName;

import joo.DynamicClassLoader;
import joo.JooClassDeclaration;

public class Run {

  public static const startTime:uint = new Date().getTime();

  public static function main(id : String, primaryDisplayObjectClassName : String,
                              widthStr: String, heightStr : String,
                              parameters:Object) : void {
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
      if (widthStr) {
        stage.width = int(widthStr);
      }
      if (heightStr) {
        stage.height = int(heightStr);
      }
      // use Jangaroo tricks to add the DisplayObject to the Stage before its constructor is called:
      var displayObject:DisplayObject = DisplayObject(new cd.Public());
      stage.internalAddChildAt(displayObject, 0);
      var loaderInfo:LoaderInfo = new LoaderInfo();
      loaderInfo['parameters'] = parameters;
      displayObject['loaderInfo'] = loaderInfo;
      cd.constructor_.call(displayObject);
      displayObject.broadcastEvent(new Event(Event.ADDED_TO_STAGE, false, false));
      new RenderLoop().addStage(stage);
    });
  }

}
}
