package joo.flash {
import flash.display.DisplayObject;
import flash.display.LoaderInfo;
import flash.display.Stage;

import flash.events.Event;

public class Run {

  public static function main(id : String, primaryDisplayObjectClass : Class,
                              parameters : Object = null,
                              widthStr : String = null, heightStr : String = null) : void {
      var cd:Object = primaryDisplayObjectClass['$class'];
      trace("[INFO] Loaded Flash main class " + cd.fullClassName + ".");
      var metadata:Object = cd.metadata || {};
      var swf:Object = metadata['SWF'] || {};
      if (widthStr) {
        swf.width = widthStr;
      }
      if (heightStr) {
        swf.height = heightStr;
      }
      var stage : Stage = new Stage(id, swf);
      // use Jangaroo tricks to add the DisplayObject to the Stage before its constructor is called:
      var displayObject:DisplayObject = DisplayObject(Object['create'](primaryDisplayObjectClass.prototype));
      stage.internalAddChildAt(displayObject, 0);
      var loaderInfo:LoaderInfo = new LoaderInfo();
      if (parameters) {
        for (var key:String in parameters) {
          loaderInfo.parameters[key] = parameters[key];
        }
      }
      displayObject['loaderInfo'] = loaderInfo;
      primaryDisplayObjectClass.call(displayObject);
      displayObject.broadcastEvent(new Event(Event.ADDED_TO_STAGE, false, false));
      new RenderLoop().addStage(stage);
  }

}
}
