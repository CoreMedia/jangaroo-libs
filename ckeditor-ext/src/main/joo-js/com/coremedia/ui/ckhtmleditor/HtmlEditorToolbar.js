Ext.namespace('com.coremedia.ui.ckhtmleditor');


/**
 * @class com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar
 * @extends Ext.Panel
 * @xtype ck.toolbar
 * An Ext toolbar that connects to a ck.htmleditor (Ext CKEdtior wrapper) component.
 * The ck.htmleditor must be below the same container as this toolbar, or the config attribute 'htmlEditorId'
 * must be set.
 */
com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar = Ext.extend(Ext.Toolbar, {
  /**
   * @cfg {String} htmlEditorId The ck.htmleditor's ID. Optional if the target ck.htmleditor is below the same
   *   container as this toolbar.
   * @param config all config options of toolbar plus the ones documented above.
   */
  constructor: function(config) {
    com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar.superclass.constructor.call(this, config);
  },

  onRender: function (ct, position) {
    this.myHtmlEditor = this['htmlEditorId'] ? Ext.getCmp(this['htmlEditorId']) : this.ownerCt.findByType('ck.htmleditor')[0];
    var ckEditor = this.myHtmlEditor.getCKEditor();
    if (ckEditor) {
      ckEditor.on('pluginsLoaded', this._ckEditorAvailable, this);
    } else {
      CKEDITOR.on('instanceCreated', function(evt) {
        var ckEditor = evt.editor;
        if (ckEditor.name === this.myHtmlEditor.id) {
          ckEditor.on('pluginsLoaded', this._ckEditorAvailable, this);
        }
      }, this);
    }
    com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar.superclass.onRender.call(this, ct, position);
  },

  getCKEditor: function() {
    return this.myHtmlEditor.getCKEditor();
  },

  _ckEditorAvailable: function() {
    var ckEditor = this.getCKEditor();
    this.items.each(
      function(item) {
        item.baseAction.setCKEditor(ckEditor);
      }
    );
  },
  getHtmlEditor: function() {
    return this.myHtmlEditor;
  }
});

// register xtype
Ext.reg('ck.toolbar', com.coremedia.ui.ckhtmleditor.HtmlEditorToolbar);


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