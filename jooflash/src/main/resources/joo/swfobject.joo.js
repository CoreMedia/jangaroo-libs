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
          var url = swfUrlStr.replace(/\.swf$/, ".js");
          iframe.width = widthStr;
          iframe.height = heightStr;
          iframe.frameBorder = 0;
          div.parentNode.replaceChild(iframe, div);

          var doc = iframe.contentDocument;
          doc.open();
          doc.write("<!DOCTYPE html>");
          doc.write("<html>");
          doc.write("<head>");
          doc.write("</head>");
          doc.write("<body id='stage'>");
          doc.write("<p>JooFlash loading...</p>");
          doc.write("<script src='" + url + "'></script>");
          doc.write("<script>joo.classLoader.run('joo.flash.Run', 'stage', 'main', '" + widthStr + "','" + heightStr + "'," + (flashvarsObj ? JSON.stringify(flashvarsObj) : "{}") + ");</script>");
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
