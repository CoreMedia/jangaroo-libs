package joo.flash {
import flash.display.DisplayObject;
import flash.display.LoaderInfo;
import flash.display.Stage;

import flash.events.Event;
import flash.utils.getDefinitionByName;

public class Run {

  //noinspection JSFieldCanBeLocal
  private static var renderLoop:RenderLoop = new RenderLoop();

  public static function main(id : String, primaryDisplayObjectClassName : String,
                              parameters : Object = null,
                              widthStr : String = null, heightStr : String = null) : void {
    var classLoader:* = null;
    classLoader.import_(primaryDisplayObjectClassName);
    classLoader.complete(function() : void {
      if (classLoader.debug) {
        trace("[INFO] Loaded Flash main class " + primaryDisplayObjectClassName + ".");
      }
      var primaryDisplayObjectClass : Object = getDefinitionByName(primaryDisplayObjectClassName);
      var cd:* = primaryDisplayObjectClass['$class'];
      var metadata:Object = cd.metadata;
      var swf:Object = {};
      var metadataSwf:Object = metadata['SWF'];
      if (metadataSwf) {
        for (var m:String in metadataSwf) {
          swf[m] = metadataSwf[m];
        }
      }
      if (widthStr) {
        swf.width = widthStr;
      }
      if (heightStr) {
        swf.height = heightStr;
      }
      var stage : Stage = new Stage(id, swf);
      // use Jangaroo tricks to add the DisplayObject to the Stage before its constructor is called:
      var displayObject:DisplayObject = DisplayObject(new cd.Public());
      stage.internalAddChildAt(displayObject, 0);
      var loaderInfo:LoaderInfo = new LoaderInfo();
      if (parameters) {
        for (var key:String in parameters) {
          loaderInfo.parameters[key] = parameters[key];
        }
      }
      displayObject['loaderInfo'] = loaderInfo;
      cd.constructor_.call(displayObject);
      displayObject.broadcastEvent(new Event(Event.ADDED_TO_STAGE, false, false));
      renderLoop.addStage(stage);
    });
  }

}
}
