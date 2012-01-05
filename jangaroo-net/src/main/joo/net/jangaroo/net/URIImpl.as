package net.jangaroo.net {

/**
 * A class implementing parsing, formatting, resolving and relativizing URIs in
 * generic URI syntax as specified in <a href="http://www.rfc-editor.org/rfc/rfc3986.txt">RFC 3986</a>.
 *
 */
internal class URIImpl implements URI {

  // native getters and setters are used to officially implement the interface (makes ASDoc compiler work),
  // but at runtime, these are just public fields!

  public native function get scheme():String;
  public native function set scheme(value:String):void;

  public native function get authority():String;
  public native function set authority(value:String):void;

  public native function get path():String;
  public native function set path(value:String):void;

  public native function get query():String;
  public native function set query(value:String):void;

  public native function get fragment():String;
  public native function set fragment(value:String):void;

  public native function get isRelative():Boolean;
  public native function set isRelative(value:Boolean):void;

  public native function get isAbsolute():Boolean;
  public native function set isAbsolute(value:Boolean):void;

  /**
   * Construct a new URIImpl instance.
   * None of the parameters may be undefined.
   * Use null to mark 'not defined' in RFC sense.
   * @param path must neither be undefined nor null, but might be the empty string
   */
  public function URIImpl(scheme:String, authority:String, path:String, query:String, fragment:String) {
    assert(scheme !== undefined);
    assert(authority !== undefined);
    assert(path !== undefined);
    assert(path !== null);
    assert(query !== undefined);
    assert(fragment !== undefined);
    this.scheme = scheme;
    this.authority = authority;
    this.path = path;
    this.query = query;
    this.fragment = fragment;
    isRelative = scheme === null;
    isAbsolute = !isRelative;
  }

  /**
   * Return the string representation of this URI
   */
  public function toString():String {
    var toAppendTo:Array = [];
    appendIfBothNonNull(scheme, ":", toAppendTo);
    appendIfBothNonNull("//", authority, toAppendTo);
    toAppendTo.push(path);
    appendIfBothNonNull("?", query, toAppendTo);
    appendIfBothNonNull("#", fragment, toAppendTo);
    return toAppendTo.join("");
  }

  private static function appendIfBothNonNull(s1:String, s2:String, toAppendTo:Array):void {
    if (s1 !== null && s2 !== null) {
      toAppendTo.push(s1);
      toAppendTo.push(s2);
    }
  }

  /**
   * Relativize a reference uri against this URI according to RFC 3986.
   * If both scheme and authority are equal, this method always returns a URI with a relative path,
   * even it an absolute path would be shorter.
   *
   * @param reference the URI to relativize. Must be an absolute URI.
   * @return an URI which yields the reference URI when resolved against the given base URI
   * @throws URIError (todo IllegalArgumentException) if base or reference are relative URIs
   */
  public function relativize(reference:URI):URI {
    if (!isAbsolute) {
      throw new URIError("base URI must be absolute: " + this);
    }
    if (!reference.isAbsolute) {
      throw new URIError("URI to be relativized must be absolute: " + reference);
    }
    var targetScheme:String = reference.scheme;
    if (targetScheme === null || targetScheme !== scheme) {
      return reference;
    }
    var targetAuthority:String = reference.authority;
    if (targetScheme && authority !== null && targetAuthority === null) {
      return reference;
    }
    targetScheme = null;
    var targetPath:String = reference.path;
    var targetQuery:String = reference.query;
    var targetFragment:String = reference.fragment;
    if (authority === targetAuthority) {
      targetAuthority = null;
      if (!targetPath)
        targetPath = "";
      if (path !== null) {
        var lastSlash:int = path.lastIndexOf('/');
        if (lastSlash >= 0) {
          var baseSegments:Array = normalizedPathSegments(path);
          var targetPathSegments:Array = normalizedPathSegments(targetPath);

          const equalPaths:Boolean = arraysEquals(baseSegments, targetPathSegments);
          //empty uris are misinterpreted by Netscape, so we apply this rule only if
          // fragment is non-empty:
          if (equalPaths &&
                  targetQuery === query &&
                  targetFragment !== null &&
                  targetFragment.length > 0) {
            // reference to 'current document'
            targetPath = "";
            targetQuery = null;
          } else {
            if (equalPaths) {
              // relative reference to directory
              if (targetQuery === null) {
                targetPath = targetPathSegments[targetPathSegments.length - 1];
                if ("" === targetPath) {
                  targetPath = ".";
                }
              } else {
                targetPath = "";
              }
            } else {
              targetPath = relativizePath(baseSegments, targetPathSegments);
            }
          }
        }
      }
    }
    return new URIImpl(targetScheme, targetAuthority, targetPath, targetQuery, targetFragment);
  }

  private static function arraysEquals(a1:Array, a2:Array):Boolean {
    if (a1.length !== a2.length) {
      return false;
    }
    for (var i:int = 0; i < a1.length; i++) {
      if (a1[i] !== a2[i]) {
        return false;
      }
    }
    return true;
  }

  private static function relativizePath(baseSegments:Array, pathSegments:Array):String {
    // find common root node:
    assert(pathSegments.length > 0);
    assert(baseSegments.length > 0);
    var i:int = 0;
    for (var n:int = Math.min(pathSegments.length - 1, baseSegments.length - 1);
         baseSegments[i] === pathSegments[i] && i < n;
         i++) {
    }
    // go back to common root:
    var currentDir:int = baseSegments.length - 1;
    if (i === currentDir && i === pathSegments.length - 1 && pathSegments[i] === "") {
      return ".";
    }
    var j:int = currentDir;
    var sb:Array = [];
    while (j > i) {
      sb.push("..");
      j--;
      if (j > i) {
        sb.push("/");
      }
    }
    var nonemptyArcAdded:Boolean = false;
    // go forward to document:
    while (i < pathSegments.length) {
      const arc:String = pathSegments[i];
      nonemptyArcAdded = nonemptyArcAdded || arc !== "";
      if (sb.length > 0 && nonemptyArcAdded) {
        sb.push("/");
      }
      sb.push(arc);
      i++;
    }
    return sb.join("");
  }

  private static function normalizedPathSegments(path:String):Array {
    return pathSegments(removeDotSegments(path));
  }

  private static function pathSegments(path:String):Array {
    return path.split("/");
  }

  /**
   * Resolve a uri against this as a base URI according to RFC 3986.
   * @requires this.isAbsolute()
   * @param reference     the uri to resolve
   * @return an absolute URI
   */
  public function resolve(reference:URI):URI {
    if (!isAbsolute) {
      throw new URIError("base URI must be absolute: " + this);
    }
    var targetScheme:String = reference.scheme;
    var targetAuthority:String = reference.authority;
    var targetPath:String = reference.path;
    var targetQuery:String = reference.query;
    var targetFragment:String = reference.fragment;

    if (targetScheme !== null) {
      targetPath = removeDotSegments(targetPath);
    } else {
      if (targetAuthority !== null) {
        targetPath = removeDotSegments(targetPath);
      } else {
        if (targetPath === null || targetPath === "") {
          targetPath = path;
          if (targetQuery === null) {
            targetQuery = query;
          }
        } else {
          targetPath = mergeAndRemoveDotSegments(authority, path, targetPath);
        }
        targetAuthority = authority;
      }
      targetScheme = scheme;
    }
    return new URIImpl(targetScheme, targetAuthority, targetPath, targetQuery, targetFragment);
  }

  private static function removeDotSegments(path:String):String {
    return path == null ? null : mergeAndRemoveDotSegments(null, "", path);
  }

  private static function mergeAndRemoveDotSegments(baseAuthority:String, basePath:String, relPath:String):String {
    var resultPath:Array = [ ];
    var relSegments:Array = pathSegments(relPath);
    var ensureTrailingSlash:Boolean = false;
    if (relPath.length == 0 || relPath.charAt(0) !== '/') {
      if (basePath == null || basePath.length == 0) {
        if (baseAuthority !== null && baseAuthority.length > 0) {
          resultPath.push(""); // start with '/'
        }
      } else {
        var baseSegments:Array = pathSegments(basePath);
        baseSegments.forEach(function(segment:String):void {
          if (segment === "..") {
            popSegment(resultPath);
            ensureTrailingSlash = true;
          } else if (segment === ".") {
            ensureTrailingSlash = true;
          } else {
            resultPath.push(segment);
            ensureTrailingSlash = false;
          }
        });
        // remove last base segment:
        if (!ensureTrailingSlash && resultPath.length > 0) {
          resultPath.pop();
        }
      }
    }
    relSegments.forEach(function(segment:String):void {
      if (segment === "..") {
        popSegment(resultPath);
        ensureTrailingSlash = true;
      } else if (segment === ".") {
        ensureTrailingSlash = true;
      } else {
        resultPath.push(segment);
        ensureTrailingSlash = false;
      }
    });
    var result:String = resultPath.join("/");
    if (ensureTrailingSlash) {
      if (result === '') {
        result = '/';
      } else if (result.charAt(result.length-1) !== '/') {
        result += '/';
      }
    }
    return result;
  }

  private static function popSegment(segments:Array):void {
    if (segments.length > 1) {
      segments.pop();
    } else if (segments.length === 1 && segments[0] !== "") {
      segments[0] = "";
    }
  }
}
}
