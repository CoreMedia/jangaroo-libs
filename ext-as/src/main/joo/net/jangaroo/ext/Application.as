package net.jangaroo.ext {
import ext.ComponentMgr;
import ext.util.Functions;

public class Application {

  public var title:String;
  public var styleSheets:Array;
  public var mainView:Object; // if using ext.config.viewport, a subtype is not accepted in MXML (?!)

  public function Application() {
     Functions.defer(function():void {
      window.document.title = title;
      Exml.loadStyleSheets(styleSheets, function():void {
        ComponentMgr.create(mainView);
      });
    }, 10);
  }

}
}