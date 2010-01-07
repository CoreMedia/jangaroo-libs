Ext.namespace('com.coremedia.ui.ckhtmleditor');


/**
 * @class com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar
 * @extends Ext.Panel
 * @xtype htmleditortoolbar
 * Richtext Editor is a CKEditor with an Ext toolbar.
 */
com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar = Ext.extend(Ext.Toolbar, {
  /**
   * @cfg {Object} htmlEditorId The HtmlEditors ID.
   * @param config
   */
  constructor: function(config) {
    // private members:

    var win;
    var textarea = new Ext.form.TextArea();

    var self = this; // workaround for non-working scope: this (see usage below)

    var handlePaste = function() {
      self.getCKEditor().insertText(textarea.getValue());
      textarea.reset();
      win.hide();
    };

    // "privileged" methods:
    this.pasteAsPlainText = function() {


      if (!(CKEDITOR.getClipboardData() === false || !window.clipboardData))
      {
        this.getCKEditor().insertText(window.clipboardData.getData('Text'));
        return;
      }


      if (!win) {
        win = new Ext.Window({
          layout:'fit',
          width:500,
          height:300,
          modal:true,
          closeAction:'hide',
          plain: true,
          items: new Ext.FormPanel({
            layout: 'fit',
            title: 'Paste as plain text',
            items: [
              textarea
            ]
          }),
          buttons: [
            {
              text: 'Paste',
              iconCls: 'cm-paste-16',
              handler: handlePaste,
              scope: this // does not work?!
            },
            {
              text: 'Cancel',
              handler: function() {
                win.hide();
              }
            }
          ]
        });
      }
      win.show(this);
    };


    com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar.superclass.constructor.call(this, config);

  },

  onRender: function (ct, position) {
    this.myHtmlEditor = Ext.getCmp(this['htmlEditorId']);
    this.myHtmlEditor.addListener("afterrender", this._ckEditorAvailable, this);
    com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar.superclass.onRender.call(this, ct, position);
    var self = this;
    this.items.each(
      function(item) {
        item.baseAction.setCKEditor(self.getCKEditor());
      }
      );
  },

  getCKEditor: function() {
    return this.myHtmlEditor.getCKEditor();
  },

  createStyle: function(element) {
    var style = new CKEDITOR.style({ element : element });
    style.type = CKEDITOR.STYLE_INLINE;
    return style;
  },
  createStyleWithAttributes: function(element, attributes) {
    var style = new CKEDITOR.style({ element : element, attributes : attributes  });
    style.type = CKEDITOR.STYLE_INLINE;
    return style;
  },
  _ckEditorAvailable: function() {
    var ckEditorWrapper = this.getHtmlEditor();
    ckEditorWrapper.removeListener("afterrender", this._ckEditorAvailable);
    var ckEditor = ckEditorWrapper.getCKEditor();

    var e = this;

    // Listens for some clipboard related keystrokes, so they get customized.
    var onKey = function(event)
    {
      switch (event.data.keyCode)
        {
        // Paste
        case CKEDITOR.CTRL + 86 :                // CTRL+V
        case CKEDITOR.SHIFT + 45 :                // SHIFT+INS

          var editor = ckEditor;
          editor.fire('saveSnapshot');                // Save before paste

          e.pasteAsPlainText();
          //if (editor.fire('beforePaste'))
          event.cancel();

          setTimeout(function()
          {
            editor.fire('saveSnapshot');		// Save after paste
          }, 0);
          return;

        // Cut
        case CKEDITOR.CTRL + 88 :                // CTRL+X
        case CKEDITOR.SHIFT + 46 :                // SHIFT+DEL

          // Save Undo snapshot.
          editor = this;
          editor.fire('saveSnapshot');                // Save before paste
          setTimeout(function()
          {
            editor.fire('saveSnapshot');		// Save after paste
          }, 0);
      }
    };


    ckEditor.on('key', onKey, ckEditor);


  },
  attachStyleStateChange: function(style, callback) {
    if (this.styleStateChangeCallbacks) {
      // store and add when CKEditor instance is available:
      this.styleStateChangeCallbacks.push({style: style, callback: callback});
    } else {
      // CKEditor instance is available: add directly!
      this.getHtmlEditor().getCKEditor().attachStyleStateChange(style, callback);
    }
  },
  getHtmlEditor: function() {
    return this.myHtmlEditor;
  }
});

// register xtype
Ext.reg('htmleditortoolbar', com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar);


// Define empty Item#toggle method to make it Button-API-compatible:
Ext.menu.Item.prototype.toggle = function() {
};

// alias CheckItem#setChecked method to "toggle" to make it Button-API-compatible:
Ext.menu.CheckItem.prototype.toggle = Ext.menu.CheckItem.prototype.setChecked;

// suppress icons for CheckItems, or the check-mark is not shown:
Ext.menu.CheckItem.prototype.initComponent = Ext.menu.CheckItem.prototype.initComponent.createSequence(function() {
  delete this.iconCls;
});

// A Button that does not display it's text:
com.coremedia.ui.IconButton = Ext.extend(Ext.Button, {
  constructor: function(config) {
    com.coremedia.ui.IconButton.superclass.constructor.call(this, config);
    this.overflowText = this.text;
    delete this.text;
  }
});

Ext.reg('iconbutton', com.coremedia.ui.IconButton);


var clipboardDiv;

CKEDITOR.getClipboardData = function()
{
  if (!CKEDITOR.env.ie)
    return false;

  var doc = CKEDITOR.document,
    body = doc.getBody();

  if (!clipboardDiv)
  {
    clipboardDiv = doc.createElement('div',
    {
      attributes :
      {
        id: 'cke_hiddenDiv'
      },
      styles :
      {
        position : 'absolute',
        visibility : 'hidden',
        overflow : 'hidden',
        width : '1px',
        height : '1px'
      }
    });

    clipboardDiv.setHtml('');

    clipboardDiv.appendTo(body);
  }

  // The "enabled" flag is used to check whether the paste operation has
  // been completed (the onpaste event has been fired).
  var enabled = false;
  var setEnabled = function()
  {
    enabled = true;
  };

  body.on('paste', setEnabled);

  // Create a text range and move it inside the div.
  var textRange = body.$.createTextRange();
  textRange.moveToElementText(clipboardDiv.$);

  // The execCommand in will fire the "onpaste", only if the
  // security settings are enabled.
  textRange.execCommand('Paste');

  // Get the DIV html and reset it.
  var html = clipboardDiv.getHtml();
  clipboardDiv.setHtml('');

  body.removeListener('paste', setEnabled);

  // Return the HTML or false if not enabled.
  return enabled && html;
};