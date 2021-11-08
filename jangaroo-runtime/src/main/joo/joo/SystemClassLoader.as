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

[Deprecated(since="4.1.9", replacement="none")]
public class SystemClassLoader {

  public static const classDeclarationsByName : Object/*<String,JooClassDeclaration>*/ = {};

  public var debug : Boolean;

  public function SystemClassLoader() {
    debug = joo.debug;
  }

  public function prepare(...params) : JooClassDeclaration {
    var packageDef : String = params[0];
    var metadata : Object = {};
    for (var i:int = 1; typeof params[i] == "object"; i++) {
      addToMetadata(metadata, params[i]);
    }
    var classDef : String = params[i++];
    var inheritanceLevel:* = params[i++];
    if (typeof inheritanceLevel !== "number") {
      // No inheritance level? Runtime version < 0.8.0.
      // Be backwards-compatible, so that we at least generate the right error:
      i--;
    }
    var memberFactory : Function = params[i++];
    var publicStaticMethodNames : Array = params[i++];
    var dependencies : Array = params[i++];
    var runtimeApiVersion:String = params[i++];
    var compilerVersion:String = params[i++];
    var cd : JooClassDeclaration = this.createClassDeclaration(packageDef, metadata, classDef, inheritanceLevel, memberFactory, publicStaticMethodNames, dependencies);
    if (!isRuntimeCompatible(runtimeApiVersion, compilerVersion)) {
      throw new Error("Runtime version " + joo.runtimeApiVersion + "/" + joo.compilerVersion +
        " and class version " + runtimeApiVersion + "/" + compilerVersion +
        " of " + cd.fullClassName + " do not match. " +
        "Please recompile with the correct compiler version or replace jangaroo-runtime[-debug].js.");
    }
    classDeclarationsByName[cd.fullClassName] = cd;
    return cd;
  }

  private static function toVersionParts(version:String):Array/*int*/ {
    var parts:Array = (version || "").split(/\.|-preview/);
    for (var i:uint = 0; i < parts.length; ++i) {
      parts[i] = parseInt(parts[i], 10);
      if (parts[i] < 0) {
        parts[i] = int.MIN_VALUE - parts[i];
      }
    }
    return parts;
  }

  /**
   * @internal
   * Used for runtime-to-class compatibility check. <code>internal</code>, not <code>private</code>, for testing purposes.
   * A class runtimeApiVersion/compilerVersion is compatible with the current Runtime if
   * <ul>
   * <li>the runtimeApiVersion matches the Runtime's runtimeApiVersion exactly and</li>
   * <li>the compilerVersion is lower or the same as the Runtime's compilerVersion.</li>
   * </ul>
   * @param runtimeApiVersion the runtime API version to check for compatibility with the loaded Jangaroo Runtime
   * @param compilerVersion the compiler version to check for compatibility with the loaded Jangaroo Runtime
   * @return Boolean whether the given runtimeApiVersion/compilerVersion is compatible with the current Runtime.
   */
  internal static function isRuntimeCompatible(runtimeApiVersion:String, compilerVersion:String):Boolean {
    // The Runtime API version must match exactly:
    if (runtimeApiVersion !== joo.runtimeApiVersion) {
      return false;
    }
    // The compiler versions must be compared part-by-part:
    var runtimeCompilerVersionParts:Array/*.<uint>*/ = toVersionParts(joo.compilerVersion);
    var compilerVersionParts:Array/*.<uint>*/ = toVersionParts(compilerVersion);
    for (var i:uint = 0; i < runtimeCompilerVersionParts.length; ++i) {
      if (compilerVersionParts[i] !== runtimeCompilerVersionParts[i]) {
        // The given class must be compiled with an older or the same compiler version as the Runtime:
        return compilerVersionParts[i] < runtimeCompilerVersionParts[i];
      }
    }
    return true;
  }

  internal static function addToMetadata(metadata:Object, annotation:*):void {
    for (var m:String in annotation) {
      metadata[m] = annotation[m];
    }
  }

  protected function createClassDeclaration(packageDef:String, metadata:Object, classDef:String, inheritanceLevel:int, memberFactory:Function, publicStaticMethodNames:Array, dependencies:Array) : JooClassDeclaration {
    return JooClassDeclaration(new JooClassDeclaration(packageDef, metadata, classDef, inheritanceLevel, memberFactory, publicStaticMethodNames, dependencies).init());
  }

  public function getClassDeclaration(fullClassName : String) : NativeClassDeclaration {
    var cd : NativeClassDeclaration = classDeclarationsByName[fullClassName];
    if (!cd) {
      var constructor_ : Function = getQualifiedObject(fullClassName);
      if (constructor_) {
        // create JooClassDeclaration for native classes:
        cd = this.createNativeClassDeclaration(fullClassName, constructor_).init();
        classDeclarationsByName[fullClassName] = cd;
      }
    }
    return cd;
  }

  /**
   * @param className
   * @return NativeClassDeclaration the class declaration with the given name.
   * @throws Error - ClassNotFound
   */
  public function getRequiredClassDeclaration(className : String) : NativeClassDeclaration {
    var cd : NativeClassDeclaration = this.getClassDeclaration(className);
    if (!cd) {
      throw new Error("Class not found: "+className);
    }
    return cd;
  }

  protected function createNativeClassDeclaration(fullClassName : String, nativeClass : Function) : NativeClassDeclaration {
    return new NativeClassDeclaration().create(fullClassName, nativeClass);
  }

  public function init(... classes) :Function {
    return null;
  }
}
}
