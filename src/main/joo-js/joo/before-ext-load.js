var joo = joo || {};
joo.localization = joo.localization || {};

joo.localeSupport = (function() {
  var DAYS_TILL_LOCALE_COOKIE_EXPIRY = 10*356;

  function escape(s/*:String*/)/*:String*/ {
    return s.replace(/([.*+?^${}()|[\]\/\\])/g, "\\$1");
  }

  function getCookie(name/*:String*/)/*:String*/ {
    var cookieKey/*:String*/ = escape(name);
    var match/*:Array*/ = document.cookie.match("(?:^|;)\\s*" + cookieKey + "=([^;]*)");
    return match ? decodeURIComponent(match[1]) : null;
  }

  function getLocaleCookieExpiry()/*:Date*/ {
    var date/*:Date*/ = new Date();
    date.setTime(date.getTime() + (DAYS_TILL_LOCALE_COOKIE_EXPIRY * 24 * 60 * 60 * 1000));
    return date;
  }

  function setCookie(name, value, path, expires, domain) {
    //noinspection FallThroughInSwitchStatementJS
    document.cookie =
            name + "=" + encodeURIComponent(value || "") +
            ((expires === null) ? "" : ("; expires=" + expires.toGMTString())) +
            ((path === null) ? "" : ("; path=" + path)) +
            ((domain === null) ? "" : ("; domain=" + domain))
  }

  return {
    preferredLocales: joo.localization.preferredLocales || [],
    supportedLocales: joo.localization.supportedLocales || ["en"],
    localeCookieName: joo.localization.localeCookieName || "joo.locale",
    localeCookiePath: joo.localization.localeCookiePath || location.pathname,
    localeCookieDomain: joo.localization.localeCookieDomain || null,

    getSupportedLocales: function () {
      return this.supportedLocales.concat(); // return a copy
    },

    getDefaultLocale: function () {
      return this.supportedLocales[0];
    },
    readLocaleFromCookie: function ()/*:String*/ {
      return this.findSupportedLocale(getCookie(this.localeCookieName));
    },

    setLocale: function(newLocale/*:String*/)/*:String*/ {
      this.locale = this.findSupportedLocale(newLocale);
      // either create, update or remove (if locale===null) the Cookie:
      setCookie(this.localeCookieName, this.locale, this.localeCookiePath,
              this.locale ? getLocaleCookieExpiry() : new Date(0),
              this.localeCookieDomain);
      return this.getLocale(); // use getter to re-compute fallback logic for locale==null and cache the result
    },

    findSupportedLocale: function(locale/*:String*/)/*:String*/ {
      if (!locale) {
        return null;
      }
      // find longest match of locale in supported locales
      var longestMatch/*:String*/ = "";
      for (var i/*:int*/ = 0; i < this.supportedLocales.length; i++) {
        if (locale.indexOf(this.supportedLocales[i]) === 0
                && this.supportedLocales[i].length > longestMatch.length) {
          longestMatch = this.supportedLocales[i];
        }
      }
      return longestMatch ? longestMatch : null;
    },

    getLocale: function()/*:String*/ {
      if (!this.locale) {
        this.locale = this.readLocaleFromCookie() || this.getLocaleFromPreferredLocales() || this.readLocaleFromNavigator() || this.getDefaultLocale();
      }
      return this.locale;
    },


    //privates
    getLocaleFromPreferredLocales: function() {
      for (var i/*:int*/ = 0; i < this.preferredLocales.length; i++) {
        var preferredLocale/*:String*/ = this.findSupportedLocale(this.preferredLocales[i]);
        if (preferredLocale) {
          return preferredLocale;
        }
      }
    return null;
    },
    readLocaleFromNavigator: function()/*:String*/ {
      if (navigator) {
        var locale/*:String*/ = navigator['language'] || navigator['browserLanguage']
                || navigator['systemLanguage'] || navigator['userLanguage'];
        if (locale) {
          return this.findSupportedLocale(locale.replace(/-/g, "_"));
        }
      }
      return null;
    }
  }
})();

var Ext = Ext || {};

// Tell Ext which locale to use
Ext.beforeLoad = function (tags) {
  var locale = joo.localeSupport.getLocale();
  Ext.manifest = locale; // this name must match a json file name generated by some build

  // This function is called once the manifest is available but before
  // any data is pulled from it.
  return function (manifest) {
    // peek at / modify the manifest object
    manifest.locale = locale;
  };
};
