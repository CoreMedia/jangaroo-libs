/*
 * Copyright 2009 CoreMedia AG
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an "AS
 * IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language
 * governing permissions and limitations under the License.
 */

// JangarooScript runtime support. Author: Frank Wienberg

package joo {
[Deprecated(since="4.1.2", replacement="none")]
public class DynamicClassLoader extends StandardClassLoader {

  private static function isEmpty(object : Object) : Boolean {
    //noinspection LoopStatementThatDoesntLoopJS
    for (var m:String in object) {
      return false;
    }
    return true;
  }

  public static var INSTANCE:DynamicClassLoader;

  private var resourceByPath : Object = {};
  private var onCompleteCallbacks : Array/*<Function>*/ = [];

  public function DynamicClassLoader() {
    classLoader = INSTANCE = this;
  }

  /**
   * Keep record of all classes whose dependencies still have to be loaded.
   */
  private var pendingDependencies : Array/*<JooClassDeclaration>*/ = [];
  /**
   * false => pending
   * true => loading
   */
  private var pendingClassState : Object/*<String,Boolean>*/ = {};

  override public function prepare(...params):JooClassDeclaration {
    var cd:JooClassDeclaration = JooClassDeclaration(super.prepare.apply(this, params));
    this.pendingDependencies.push(cd);
    fireDependency(cd.fullClassName);
    return cd;
  }

  public function addDependency(dependency:String):void {
    pendingClassState[dependency] = true;
  }

  public function fireDependency(dependency:String):void {
    if (delete this.pendingClassState[dependency]) {
//      if (this.debug) {
//        trace("prepared class " + dependency + ", removed from pending classes.");
//      }
      if (this.onCompleteCallbacks.length) {
        this.loadPendingDependencies();
        if (isEmpty(this.pendingClassState)) {
          this.doCompleteCallbacks(onCompleteCallbacks);
        }
      }
    }
  }

  override protected function doCompleteCallbacks(onCompleteCallbacks : Array/*Function*/):void {
    this.onCompleteCallbacks = [];
    // "invoke later":
    getQualifiedObject("setTimeout")(function() : void {
      initNativeClasses();
      internalDoCompleteCallbacks(onCompleteCallbacks);
    }, 0);
  }

  private function internalDoCompleteCallbacks(onCompleteCallbacks : Array/*Function*/):void {
    super.doCompleteCallbacks(onCompleteCallbacks);
  }

  // separate factory function to move the anonymous function out of the caller's scope:
  private function createClassLoadErrorHandler(fullClassName:String, url:String):Function {
    return function():void {
      classLoadErrorHandler(fullClassName, url);
    };
  }

  public function classLoadErrorHandler(fullClassName:String, url:String):void {
    trace("[ERROR]", "Jangaroo Runtime: Class "+fullClassName+" not found at URL ["+url+"].");
  }

  /**
   * Import the class given by its fully qualified class name (package plus name).
   * All imports are collected in a hash and can be used in the #complete() callback function.
   * Additionally, the DynamicClassLoader tries to load the class from a URL if it is not present on #complete().
   * @param fullClassName : String the fully qualified class name (package plus name) of the class to load and import.
   */
  public override function import_(fullClassName : String) : void {
    var Ext:* = getQualifiedObject("Ext");
    Ext.require(fullClassName);
  }

  override public function run(mainClassName : String, ...args):void {
    this.load(mainClassName);
    args.splice(0,0,mainClassName);
    super.run.apply(this,args);
  }

  private function load(fullClassName : String) : void {
    var resourcePathMatch:Array = fullClassName.match(/^resource:(.*)$/);
    if (resourcePathMatch) {
      loadResource(resourcePathMatch[1]);
      return;
    }
    if (!this.getClassDeclaration(fullClassName)) {
      if (this.onCompleteCallbacks.length==0) {
        if (this.pendingClassState[fullClassName]===undefined) {
          // we are not yet in completion phase: just add to pending classes:
          this.pendingClassState[fullClassName] = false;
//          if (this.debug) {
//            trace("added to pending classes: "+fullClassName+".");
//          }
        }
      } else {
        if (this.pendingClassState[fullClassName]!==true) {
          // trigger loading:
          this.pendingClassState[fullClassName] = true;
          var url:String = getRelativeClassUrl(fullClassName);
//          if (this.debug) {
//            trace("triggering to load class " + fullClassName + " from URL " + url + ".");
//          }
          var script:Object = loadScriptAsync(url);
          // script.onerror does not work in IE, but since this feature is for debugging only, we don't mind:
          script.onerror = this.createClassLoadErrorHandler(fullClassName, script['src']);
        }
      }
    }
  }

  private static const RESOURCE_TYPE_STRING:String = "String";
  private static const RESOURCE_TYPE_IMAGE:String = "Image";
  private static const RESOURCE_TYPE_AUDIO:String = "Audio";
  private static const RESOURCE_TYPE_BY_EXTENSION:Object = {
    "txt": RESOURCE_TYPE_STRING,
    "csv": RESOURCE_TYPE_STRING,
    "png": RESOURCE_TYPE_IMAGE,
    "gif": RESOURCE_TYPE_IMAGE,
    "jpg": RESOURCE_TYPE_IMAGE,
    "jpeg": RESOURCE_TYPE_IMAGE,
    "mp3": RESOURCE_TYPE_AUDIO,
    "ogg": RESOURCE_TYPE_AUDIO,
    "wav": RESOURCE_TYPE_AUDIO
  };
  // TODO: map more extensions, also for video etc.
  // TODO: improvement: instead of extensions, we could do a HEAD request to the path and map the Content-Type to media/resource type.

  private function loadResource(path:String):void {
    var resource:Object = resourceByPath[path];
    if (!resource) {
      var dotPos:int = path.lastIndexOf('.');
      var extension:String = path.substring(dotPos + 1);
      var resourceType:String = RESOURCE_TYPE_BY_EXTENSION[extension];
      if (resourceType) {
        if (resourceType === RESOURCE_TYPE_STRING) {
          var xhr:Object = new (getQualifiedObject('XMLHttpRequest'))();
          xhr.open('GET', resolveUrl("joo/classes/" + path));
          xhr.onreadystatechange = function():void {
            if (xhr.readyState === 4) {
              delete xhr.onreadystatechange; // only fire once!
              resourceByPath[path] = xhr.responseText;
              fireDependency("resource:" + path);
            }
          };
          xhr.send(null);
          return;
        }
        var resourceTypeClass:Class = getQualifiedObject(resourceType);
        if (resourceTypeClass) {
          resourceByPath[path] = resource = new (resourceTypeClass)();
          if (resourceType === RESOURCE_TYPE_IMAGE) {
            addDependency("resource:" + path);
            resource.onload = function():void {
              fireDependency("resource:" + path);
            };
            resource.onerror = function(m:*):void {
              trace("[WARN]", "Error while loading resource " + path + ": " + m);
              // however, we do not want dynamic loading to fail completely:
              fireDependency("resource:" + path);
            }
          } else if (resourceType === RESOURCE_TYPE_AUDIO) {
            if (!resource['canPlayType']("audio/" + extension)) {
              // try another MIME type / extension:
              var fallbackExtension:String = findFallback(resource);
              if (!fallbackExtension) {
                return;
              }
              path = path.substring(0, dotPos) + "." + fallbackExtension;
            }
            resource.preload = "auto"; // Embed -> load early, but don't wait for load like with images.
          }
          resource.src = resolveUrl("joo/classes/" + path);
        } else {
          trace("[WARN]", "Resource type " + resourceType + " not supported by client, ignoring resource " + path);
        }
      } else {
        trace("[WARN]", "Ignoring unsupported media type of file " + path);
      }
    }
  }

  private static const AUDIO_FALLBACK_ORDER:Array = ["mp3", "ogg", "wav"];
  private static var AUDIO_FALLBACK_EXTENSION:String = null;
  private static function findFallback(audio:Object):String {
    if (AUDIO_FALLBACK_EXTENSION === null) {
      for (var i:int = 0; i < AUDIO_FALLBACK_ORDER.length; i++) {
        var fallback:String = AUDIO_FALLBACK_ORDER[i];
        if (audio['canPlayType']("audio/" + fallback)) {
          return AUDIO_FALLBACK_EXTENSION = fallback;
        }
      }
      trace("[WARN]", "Could not find any audio extension that this client can play (" + AUDIO_FALLBACK_ORDER.join(",") +
        "), no sound available.");
      AUDIO_FALLBACK_EXTENSION = "";
    }
    return AUDIO_FALLBACK_EXTENSION;
  }

  public function getResource(path:String):Object {
    return resourceByPath[path];
  }

  /**
   * Tell Jangaroo to load and initialize all required classes, then call the given function.
   * The function receives an import hash, which can be used in pure JavaScript in a 'with' statement
   * (Jangaroo does not support 'with', there, you would use import declarations!) like this:
   * <pre>
   * joo.classLoader.import_("com.custom.Foo");
   * joo.classLoader.complete(function(imports){with(imports){
   *   Foo.doSomething("bar");
   * }});
   * </pre>
   * @param onCompleteCallback : Function
   * @return void
   */
  public override function complete(onCompleteCallback : Function = undefined) : void {
    var Ext:* = getQualifiedObject("Ext");
    Ext.onReady(onCompleteCallback);
  }

  private static function defaultOnCompleteCallback() : void {
    trace("[INFO]", "Jangaroo Runtime: All classes loaded!");
  }

  private function loadPendingDependencies():void {
    for (var j:int=0; j<this.pendingDependencies.length; ++j) {
      var dependencies : Array = JooClassDeclaration(this.pendingDependencies[j]).getDependencies();
      for (var i:int=0; i<dependencies.length; ++i) {
        this.load(dependencies[i]);
      }
    }
    this.pendingDependencies = [];
  }
}
}
