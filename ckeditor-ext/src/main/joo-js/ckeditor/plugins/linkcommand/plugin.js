CKEDITOR.plugins.add('linkcommand',
{
  init : function(editor)
  {
    editor.linkcommand = this;
    this._ = {};
    // Loads the parameters in a selected link to the link dialog fields.
    var emailRegex = /^mailto:([^?]+)(?:\?(.+))?$/,
      emailSubjectRegex = /subject=([^;?:@&=$,\/]*)/,
      emailBodyRegex = /body=([^;?:@&=$,\/]*)/,
      anchorRegex = /^#(.*)$/,
      urlRegex = /^((?:http|https|ftp|news):\/\/)?(.*)$/,
      selectableTargets = /^(_(?:self|top|parent|blank))$/;

    var popupRegex =
      /\s*window.open\(\s*this\.href\s*,\s*(?:'([^']*)'|null)\s*,\s*'([^']*)'\s*\)\s*;\s*return\s*false;*\s*/;
    var popupFeaturesRegex = /(?:^|,)([^=]+)=(\d+|yes|no)/gi;

    var parseLink = function(editor, element)
    {
      var href = element ? ( element.getAttribute('_cke_saved_href') || element.getAttribute('href') ) : '',
        emailMatch = '',
        anchorMatch = '',
        urlMatch = false,
        retval = {};

      if (href)
      {
        emailMatch = href.match(emailRegex);
        anchorMatch = href.match(anchorRegex);
        urlMatch = href.match(urlRegex);
      }

      // Load the link type and URL.
      if (emailMatch)
      {
        var subjectMatch = href.match(emailSubjectRegex),
          bodyMatch = href.match(emailBodyRegex);
        retval.type = 'email';
        retval.email = {};
        retval.email.address = emailMatch[1];
        subjectMatch && ( retval.email.subject = decodeURIComponent(subjectMatch[1]) );
        bodyMatch && ( retval.email.body = decodeURIComponent(bodyMatch[1]) );
      }
      else if (anchorMatch)
      {
        retval.type = 'anchor';
        retval.anchor = {};
        retval.anchor.name = retval.anchor.id = anchorMatch[1];
      }
      else if (href && urlMatch)                // urlRegex matches empty strings, so need to check for href as well.
        {
          retval.type = 'url';
          retval.url = {};
          retval.url.protocol = urlMatch[1];
          retval.url.url = urlMatch[2];
        }
        else
          retval.type = 'url';

      // Load target and popup settings.
      if (element)
      {
        var target = element.getAttribute('target');
        retval.target = {};
        retval.adv = {};

        // IE BUG: target attribute is an empty string instead of null in IE if it's not set.
        if (!target)
        {
          var onclick = element.getAttribute('_cke_pa_onclick') || element.getAttribute('onclick'),
            onclickMatch = onclick && onclick.match(popupRegex);
          if (onclickMatch)
          {
            retval.target.type = 'popup';
            retval.target.name = onclickMatch[1];

            var featureMatch;
            while (( featureMatch = popupFeaturesRegex.exec(onclickMatch[2]) ))
            {
              if (featureMatch[2] == 'yes' || featureMatch[2] == '1')
                retval.target[ featureMatch[1] ] = true;
              else if (isFinite(featureMatch[2]))
                retval.target[ featureMatch[1] ] = featureMatch[2];
            }
          }
        }
        else
        {
          var targetMatch = target.match(selectableTargets);
          if (targetMatch)
            retval.target.type = retval.target.name = target;
          else
          {
            retval.target.type = 'frame';
            retval.target.name = target;
          }
        }

        var advAttr = function(inputName, attrName)
        {
          var value = element.getAttribute(attrName);
          if (value !== null)
            retval.adv[ inputName ] = value || '';
        };
        advAttr('advId', 'id');
        advAttr('advLangDir', 'dir');
        advAttr('advAccessKey', 'accessKey');
        advAttr('advName', 'name');
        advAttr('advLangCode', 'lang');
        advAttr('advTabIndex', 'tabindex');
        advAttr('advTitle', 'title');
        advAttr('advContentType', 'type');
        advAttr('advCSSClasses', 'class');
        advAttr('advCharset', 'charset');
        advAttr('advStyles', 'style');
      }

      // Find out whether we have any anchors in the editor.
      // Get all IMG elements in CK document.
      var elements = editor.document.getElementsByTag('img'),
        realAnchors = new CKEDITOR.dom.nodeList(editor.document.$.anchors),
        anchors = retval.anchors = [];

      for (var i = 0; i < elements.count(); i++)
      {
        var item = elements.getItem(i);
        if (item.getAttribute('_cke_realelement') && item.getAttribute('_cke_real_element_type') == 'anchor')
        {
          anchors.push(editor.restoreRealElement(item));
        }
      }

      for (i = 0; i < realAnchors.count(); i++)
        anchors.push(realAnchors.getItem(i));

      for (i = 0; i < anchors.length; i++)
      {
        item = anchors[ i ];
        anchors[ i ] = { name : item.getAttribute('name'), id : item.getAttribute('id') };
      }

      // Record down the selected element in the dialog.
      this._.selectedElement = element;

      return retval;
    };


    this.retrieveLink = function()
    {
      this.fakeObj = false;

      var selection = editor.getSelection(),
        ranges = selection.getRanges(),
        element = null;
      // Fill in all the relevant fields if there's already one link selected.
      if (ranges.length == 1)
      {

        var rangeRoot = ranges[0].getCommonAncestor(true);
        element = rangeRoot.getAscendant('a', true);
        if (element && element.getAttribute('href'))
        {
          selection.selectElement(element);
        }
        else if (( element = rangeRoot.getAscendant('img', true) ) &&
                 element.getAttribute('_cke_real_element_type') &&
                 element.getAttribute('_cke_real_element_type') == 'anchor')
        {
          this.fakeObj = element;
          element = editor.restoreRealElement(this.fakeObj);
          selection.selectElement(this.fakeObj);
        }
        else
          element = null;
      }

      return parseLink.apply(this, [ editor, element ]);
    };


    this.updateLink = function(data)
    {
      var attributes = { href : 'javascript:void(0)/*' + CKEDITOR.tools.getNextNumber() + '*/' },
        removeAttributes = [];


      // Compose the URL.
      switch (data.type || 'url')
        {
        case 'url':
          var protocol = ( data.url && data.url.protocol != undefined ) ? data.url.protocol : 'http://',
            url = ( data.url && data.url.url ) || '';
          attributes._cke_saved_href = ( url.indexOf('/') === 0 ) ? url : protocol + url;
          break;
        case 'anchor':
          var name = ( data.anchor && data.anchor.name ),
            id = ( data.anchor && data.anchor.id );
          attributes._cke_saved_href = '#' + ( name || id || '' );
          break;
        case 'email':
          var address = ( data.email && data.email.address ),
            subject = ( data.email && encodeURIComponent(data.email.subject || '') ),
            body = ( data.email && encodeURIComponent(data.email.body || '') ),
            linkList = [ 'mailto:', address ];
          if (subject || body)
          {
            var argList = [];
            linkList.push('?');
            subject && argList.push('subject=' + subject);
            body && argList.push('body=' + body);
            linkList.push(argList.join('&'));
          }
          attributes._cke_saved_href = linkList.join('');
          break;
        default:
      }

      // Popups and target.
      if (data.target)
      {
        if (data.target.type == 'popup')
        {
          var onclickList = [ 'window.open(this.href, \'',
            data.target.name || '', '\', \'' ];
          var featureList = [ 'resizable', 'status', 'location', 'toolbar', 'menubar', 'fullscreen',
            'scrollbars', 'dependent' ];
          var featureLength = featureList.length;
          var addFeature = function(featureName)
          {
            if (data.target[ featureName ])
              featureList.push(featureName + '=' + data.target[ featureName ]);
          };

          for (var i = 0; i < featureLength; i++)
            featureList[i] = featureList[i] + ( data.target[ featureList[i] ] ? '=yes' : '=no' );
          addFeature('width');
          addFeature('left');
          addFeature('height');
          addFeature('top');

          onclickList.push(featureList.join(','), '\'); return false;');
          attributes[ CKEDITOR.env.ie || CKEDITOR.env.webkit ? '_cke_pa_onclick' : 'onclick' ] = onclickList.join('');
        }
        else
        {
          if (data.target.type != 'notSet' && data.target.name)
            attributes.target = data.target.name;
          else
            removeAttributes.push('target');

          removeAttributes.push('_cke_pa_onclick', 'onclick');
        }
      }

      // Advanced attributes.
      if (data.adv)
      {
        var advAttr = function(inputName, attrName)
        {
          var value = data.adv[ inputName ];
          if (value)
            attributes[attrName] = value;
          else
            removeAttributes.push(attrName);
        };

        if (this._.selectedElement)
          advAttr('advId', 'id');
        advAttr('advLangDir', 'dir');
        advAttr('advAccessKey', 'accessKey');
        advAttr('advName', 'name');
        advAttr('advLangCode', 'lang');
        advAttr('advTabIndex', 'tabindex');
        advAttr('advTitle', 'title');
        advAttr('advContentType', 'type');
        advAttr('advCSSClasses', 'class');
        advAttr('advCharset', 'charset');
        advAttr('advStyles', 'style');
      }

      if (!this._.selectedElement)
      {
        // Create element if current selection is collapsed.
        var selection = editor.getSelection(),
          ranges = selection.getRanges();
        if (ranges.length == 1 && ranges[0].collapsed)
        {
          var text = new CKEDITOR.dom.text(attributes._cke_saved_href, editor.document);
          ranges[0].insertNode(text);
          ranges[0].selectNodeContents(text);
          selection.selectRanges(ranges);
        }

        // Apply style.
        var style = new CKEDITOR.style({ element : 'a', attributes : attributes });
        style.type = CKEDITOR.STYLE_INLINE;		// need to override... dunno why.
        style.apply(editor.document);

        // Id. Apply only to the first link.
        if (data.adv && data.adv.advId)
        {
          var links = editor.document.$.getElementsByTagName('a');
          for (i = 0; i < links.length; i++)
          {
            if (links[i].href == attributes.href)
            {
              links[i].id = data.adv.advId;
              break;
            }
          }
        }
      }
      else
      {
        // We're only editing an existing link, so just overwrite the attributes.
        var element = this._.selectedElement;

        // IE BUG: Setting the name attribute to an existing link doesn't work.
        // Must re-create the link from weired syntax to workaround.
        if (CKEDITOR.env.ie && attributes.name != element.getAttribute('name'))
        {
          var newElement = new CKEDITOR.dom.element('<a name="' + CKEDITOR.tools.htmlEncode(attributes.name) + '">',
            editor.document);

          selection = editor.getSelection();

          element.moveChildren(newElement);
          element.copyAttributes(newElement, { name : 1 });
          newElement.replace(element);
          element = newElement;

          selection.selectElement(element);
        }

        element.setAttributes(attributes);
        element.removeAttributes(removeAttributes);

        // Make the element display as an anchor if a name has been set.
        if (element.getAttribute('name'))
          element.addClass('cke_anchor');
        else
          element.removeClass('cke_anchor');

        if (this.fakeObj)
          editor.createFakeElement(element, 'cke_anchor', 'anchor').replace(this.fakeObj);

        delete this._.selectedElement;
      }
    };

    this.unlink = function () {
      /*
       * execCommand( 'unlink', ... ) in Firefox leaves behind <span> tags at where
       * the <a> was, so again we have to remove the link ourselves. (See #430)
       *
       * TODO: Use the style system when it's complete. Let's use execCommand()
       * as a stopgap solution for now.
       */
      var selection = editor.getSelection(),
        bookmarks = selection.createBookmarks(),
        ranges = selection.getRanges(),
        rangeRoot,
        element;

      for (var i = 0; i < ranges.length; i++)
      {
        rangeRoot = ranges[i].getCommonAncestor(true);
        element = rangeRoot.getAscendant('a', true);
        if (!element)
          continue;
        ranges[i].selectNodeContents(element);
      }

      selection.selectRanges(ranges);
      editor.document.$.execCommand('unlink', false, null);
      selection.selectBookmarks(bookmarks);

    }

  }
});

