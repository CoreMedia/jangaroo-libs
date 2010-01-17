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
        if (typeof item.baseAction == 'object' && typeof item.baseAction.setCKEditor == 'function') {
          item.baseAction.setCKEditor(ckEditor);
        }
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
