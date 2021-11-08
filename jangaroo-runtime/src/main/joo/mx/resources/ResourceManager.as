package mx.resources {

import joo.getQualifiedObject;

[Rename("l10n.ResourceManagerImpl")]
public class ResourceManager implements IResourceManager {

  private static const resourceManager:ResourceManager = new ResourceManager();

  public static function getInstance():IResourceManager {
    return resourceManager;
  }

  public function get localeChain():Array {
    throw new Error("not implemented");
  }

  public function set localeChain(value:Array):void {
    throw new Error("not implemented");
  }

  public function unloadResourceModule(url:String, update:Boolean = true):void {
    throw new Error("not implemented");
  }

  public function addResourceBundle(resourceBundle:IResourceBundle, useWeakReference:Boolean = false):void {
    throw new Error("not implemented");
  }

  public function removeResourceBundle(locale:String, bundleName:String):void {
    throw new Error("not implemented");
  }

  public function removeResourceBundlesForLocale(locale:String):void {
    throw new Error("not implemented");
  }

  public function update():void {
    throw new Error("not implemented");
  }

  public function getLocales():Array {
    throw new Error("not implemented");
  }

  public function getPreferredLocaleChain():Array {
    throw new Error("not implemented");
  }

  public function getBundleNamesForLocale(locale:String):Array {
    throw new Error("not implemented");
  }

  /**
   * @inheritDoc
   */
  public function getResourceBundle(locale:String, bundleName:String):IResourceBundle {
    var content:Object = getContent(bundleName);
    if (content) {
      if (typeof bundleName === "function") {
        // it is a _properties class object: compute bundle name from class name
        bundleName = bundleName["$className"];
        bundleName = bundleName && bundleName.substr(0, bundleName.length - "_properties".length);
      }
      return new ResourceBundle(locale, bundleName, content);
    }
    return null;
  }

  private static function getContent(bundleName:*):Object {
    return typeof bundleName === "function"
        ? bundleName.INSTANCE
        : getQualifiedObject(bundleName + "_properties.INSTANCE");
  }

  public function findResourceBundleWithResource(bundleName:String, resourceName:String):IResourceBundle {
    throw new Error("not implemented");
  }

  [Bindable("change")]
  public function getObject(bundleName:String, resourceName:String, locale:String = null):* {
    return null;
  }

  [Bindable("change")]
  /**
   * @inheritDoc
   */
  public function getString(bundleName:String, resourceName:String, parameters:Array = null, locale:String = null):String {
    var content:Object = getContent(bundleName);
    if (!content) {
      return null;
    }
    var string:String = content[resourceName] as String;
    if (string && parameters && parameters.length) {
      string = ResourceManager.format.apply(null, [string].concat(parameters));
    }
    return string;
  }

  [Bindable("change")]
  public function getStringArray(bundleName:String, resourceName:String, locale:String = null):Array {
    throw new Error("not implemented");
  }

  [Bindable("change")]
  public function getNumber(bundleName:String, resourceName:String, locale:String = null):Number {
    throw new Error("not implemented");
  }

  [Bindable("change")]
  public function getInt(bundleName:String, resourceName:String, locale:String = null):int {
    throw new Error("not implemented");
  }

  [Bindable("change")]
  public function getUint(bundleName:String, resourceName:String, locale:String = null):uint {
    throw new Error("not implemented");
  }

  [Bindable("change")]
  public function getBoolean(bundleName:String, resourceName:String, locale:String = null):Boolean {
    throw new Error("not implemented");
  }

  [Bindable("change")]
  public function getClass(bundleName:String, resourceName:String, locale:String = null):Class {
    throw new Error("not implemented");
  }

  public function initializeLocaleChain(compiledLocales:Array):void {
    throw new Error("not implemented");
  }

  private static function format(pattern:String, ...params):String {
    return params
            .map(function (_:String, index:uint):uint {
              return index;
            })
            .reduce(function (string:String, index:uint):String {
              return string.replace("{" + index + "}", params[index])
            }, pattern);
  }
}
}
