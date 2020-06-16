package mx.resources {

import joo.getQualifiedObject;

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
    return content ? new ResourceBundle(locale, bundleName, content) : null;
  }

  private static function getContent(bundleName:String):Object {
    return getQualifiedObject(bundleName + "_properties.INSTANCE") as Object;
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
      // TODO
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
}
}
