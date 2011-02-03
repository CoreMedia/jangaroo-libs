package joo.flash {
import flash.display.Bitmap;
import flash.display.BitmapData;

import flash.media.Sound;

import joo.DynamicClassLoader;
import joo.MemberDeclaration;
import joo.JooClassDeclaration;
import joo.getOrCreatePackage;

import js.HTMLAudioElement;
import js.HTMLImageElement;

public class Meta {

  {
    getOrCreatePackage("joo.meta").Embed = embed;
  }

  //noinspection JSUnusedLocalSymbols
  public static function embed(classDeclaration:JooClassDeclaration, memberDeclaration:MemberDeclaration, parameters:Object):void {
    var relativeUrl:String = parameters['source'];
    var resource:Object = DynamicClassLoader.INSTANCE.getResource(relativeUrl);
    var EmbedClass:Class;
    var superClassDeclaration:JooClassDeclaration;
    if (resource) {
      if (resource is HTMLImageElement) {
        superClassDeclaration = Bitmap['$class'];
        EmbedClass = function():void {
          var bitmapData:BitmapData = BitmapData.fromImg(HTMLImageElement(resource));
          superClassDeclaration.constructor_.call(this, bitmapData);
        };
      } else if (resource is HTMLAudioElement) {
        superClassDeclaration = Sound['$class'];
        EmbedClass = function():void {
          this['audio'] = HTMLAudioElement(resource);
          superClassDeclaration.constructor_.call(this);
        };
      }
    }
    if (EmbedClass) {
      EmbedClass.prototype = new superClassDeclaration.Public();
      EmbedClass.toString = function():String {
        return relativeUrl;
      };
      memberDeclaration.value = EmbedClass;
    } else {
      // TODO: map other extensions to Sound etc.
      trace("[WARN]", "Ignoring unsupported media type of file " + relativeUrl);
    }
  }
}

}
