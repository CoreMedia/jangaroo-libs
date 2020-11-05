Ext.require("AS3_override");
// offer extension point
Ext.define("jangaroo_runtime", {});

if (typeof globalThis !== "object") {
  // see: https://mathiasbynens.be/notes/globalthis
  Object.defineProperty(Object.prototype, '__magic__', {
    get: function() {
      return this;
    },
    configurable: true
  });
  __magic__.globalThis = __magic__;
  delete Object.prototype.__magic__;
}

Ext.ns("joo");
joo.startTime = new Date().getTime();
if (typeof joo.debug !== "boolean") {
  joo.debug = typeof location === "object" &&
    typeof location.hash === "string" &&
    !!location.hash.match(/(^#|&)joo.debug(=true|&|$)/);
}

(function() {
  var scriptsToLoad = [];
  var scriptLoading = null;
  var loadNextScript = function() {
    if (!scriptLoading && scriptsToLoad.length > 0) {
      scriptLoading = scriptsToLoad.shift();
      Ext.Loader.loadScript({
        url: scriptLoading,
        onLoad: function() {
          scriptLoading = null;
          loadNextScript();
        }
      });
    }
  };
  if (typeof joo._loadScript !== "function") {
    joo._loadScript = function _loadScript(src/*:String*/) {
      scriptsToLoad.push(src);
      loadNextScript();
    };
  }
})();

if (typeof joo.baseUrl !== "string") {
  joo.baseUrl = (function() {
    var baseUrl = "";
    var JANGAROO_SCRIPT_PATTERN = /^(.*\/)joo\/jangaroo-.*\.js$/;
    var scripts = globalThis["window"] ? window.document.getElementsByTagName("SCRIPT") : [];
    for (var i=0; i<scripts.length; ++i) {
      var match = JANGAROO_SCRIPT_PATTERN.exec(scripts[i].src);
      if (match) {
        baseUrl = match[1];
        break;
      }
    }
    return baseUrl;
  })();
}
joo.resolveUrl = function resolveUrl(url/*:String*/) {
  return !joo.baseUrl || url.match(/^(https?:\/\/|\/)/) ? url : joo.baseUrl + url
};
joo.loadScript = function loadScript(standardSrc/*:String*/, debugSrc/*:String = undefined*/) {
  var url = arguments.length > 1 && joo.debug ? debugSrc : standardSrc;
  if (url) {
    joo._loadScript(joo.resolveUrl(url));
  }
};
joo.loadDebugScript = function loadDebugScript(debugSrc/*:String*/) {
  joo.loadScript(null, debugSrc);
};
if (typeof joo.loadScriptAsync !== "function") {
  joo.loadScriptAsync = function loadScriptAsync(url) {
    Ext.Loader.loadScript(joo.resolveUrl(url));
  };
}
joo.getRelativeClassUrl = function getRelativeClassUrl(fullClassName) {
  return "joo/classes/" + fullClassName.replace(/\./g,"/") + ".js";
};
joo.loadModule = function loadModule(groupId/*:String*/, artifactId/*:String*/) {
  // do nothing; rely on SenchaCmd for application bundling.
};
/*@cc_on
(function() {
  var styleSheetUrls = [];
  joo.loadStyleSheet = function(href) {
    styleSheetUrls.push(joo.resolveUrl(href));
    if (styleSheetUrls.length >= 31) {
      joo.flushStyleSheets();
    }
  };
  joo.flushStyleSheets = function() {
    if (styleSheetUrls.length > 0) {
      document.writeln('<style type="text/css">');
      document.writeln('<!--');
      for (var i = 0; i < styleSheetUrls.length; i++) {
        document.writeln('@import url("' + styleSheetUrls[i] + '");');
      }
      document.writeln('-->');
      document.writeln('</style>');
      styleSheetUrls.length = 0;
    }
  }
})();
@*/
if (typeof joo.loadStyleSheet !== "function") {
  joo.loadStyleSheet = function(href) {
    document.writeln('<link rel="stylesheet" type="text/css" href="' + joo.resolveUrl(href) + '" />');
  };
  joo.flushStyleSheets = function() {};
}

joo.getQualifiedObject = (function(theGlobalObject) {
  var getQualified = function (parts) {
    var object = theGlobalObject;
    for (var i = 0; i < parts.length; ++i) {
      var subObject = object[parts[i]];
      if (!subObject) {
        return null;
      }
      object = subObject;
    }
    return object;
  };
  return function(name) {
    if (!name) {
      return theGlobalObject;
    }
    var parts = name.split(".");
    return getQualified(parts) || getQualified(["AS3"].concat(parts));
  };
})(this);
joo.getOrCreatePackage = function(name) {
  return Ext.ns(name);
};
joo.aliasKeywordMembers = function (clazz) {
  var keywords = Array.prototype.slice.call(arguments, 1);
  keywords.forEach(function (keyword) {
    Object.defineProperty(
            clazz.prototype, keyword + "_",
            Object.getOwnPropertyDescriptor(clazz.prototype, keyword)
    );
  });
};
Ext.ns("joo.localization");

Ext.require("joo.DynamicClassLoader", function() {
  joo.classLoader = new joo.DynamicClassLoader();
});

// check if browser is IE11 or phantomJS and needs polyfills
if (!(globalThis.ActiveXObject) && "ActiveXObject" in globalThis
  || globalThis["window"] && /PhantomJS/.test(window.navigator.userAgent)) {
  Ext.Loader.loadScriptsSync(Ext.getResourcePath("ie11-polyfills.js", null, "net.jangaroo__jangaroo-runtime"));
}
joo.aliasKeywordMembers(Promise, "catch");
joo.aliasKeywordMembers(Map, "delete");
joo.aliasKeywordMembers(URLSearchParams, "delete");