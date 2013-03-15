/**
 * A patch for SWFObject 2.2+ that falls back to loading a Jangaroo alternative if no flash
 * player is available.
 * The Jangaroo application is embedded into an iframe and has to come as a single JS file.
 * You have to rename the file jangaroo-application-all.js to the name of your SWF file
 * (only the extension remains .js in contrast to .swf).
 * Place this JS file in the same directory as the original SWF file.
 */
(function() {
  var originalEmbedSWF = swfobject.embedSWF;
  swfobject.embedSWF = function(swfUrlStr, replaceElemIdStr, widthStr, heightStr, swfVersionStr, xiSwfUrlStr, flashvarsObj, parObj, attObj, callbackFn) {
    originalEmbedSWF.call(this, swfUrlStr, replaceElemIdStr, widthStr, heightStr, swfVersionStr, xiSwfUrlStr, flashvarsObj, parObj, attObj, function(callbackObj) {
      if (!callbackObj.success) {
        var div = document.getElementById(replaceElemIdStr);
        if (div) {
          var iframe = document.createElement("IFRAME");
          iframe.id = replaceElemIdStr;
          iframe.width = widthStr;
          iframe.height = heightStr;
          iframe.frameBorder = 0;
          iframe.style.overflow = "hidden";
          div.parentNode.replaceChild(iframe, div);

          var doc = iframe.contentDocument;
          doc.open();
          doc.write("<!DOCTYPE html>");
          doc.write("<html>");
          doc.write("<head>");
          doc.write("<style type='text/css'>");
          doc.write("html, body { margin:0;padding:0;overflow:hidden;width:100%;height:100%; }");
          doc.write("</style>");
          doc.write("</head>");
          doc.write("<body>");
          doc.write("<p id='stage'>JooFlash loading...</p>");
          doc.write("<script>requirejs = { baseUrl: '../amd' };</script>");
          var debug = typeof location === "object" &&
                  typeof location.hash === "string" &&
                  !!location.hash.match(/(^#|&)joo.debug(=true|&|$)/);
          if (debug) {
            doc.write("<script src='../requirejs/require.js'></script>");
          } else {
            var url = swfUrlStr.replace(/\.swf$/, ".js");
            doc.write("<script src='" + url + "'></script>");
          }
          var flashvarsStr = "{}";
          if (flashvarsObj) {
            for (var key in flashvarsObj) {
              var value = flashvarsObj[key];
              if (typeof value === 'string') {
                flashvarsObj[key] = decodeURIComponent(value); // why is this encoded, anyway?
              }
            }
            flashvarsStr = JSON.stringify(flashvarsObj);
          }
          doc.write("<script>require(['as3/joo/flash/Run', 'as3/main'], function(Run, main) { Run._.main('stage', main._, " + flashvarsStr + ", '" + widthStr + "', '" + heightStr + "');});</script>");
          doc.write("</body>");
          doc.write("</html>");
          doc.close();
          iframe.style.visibility = "visible";
          callbackObj.success = true;
          callbackObj.ref = iframe;
        }
      }
      if (callbackFn) {
        callbackFn(callbackObj);
      }
    });
  };
})();
