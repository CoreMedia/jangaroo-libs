Ext.namespace('com.coremedia.ui.ckhtmleditor');

/**
 * @class com.coremedia.ui.ckhtmleditor.PasteTextDialog
 * @extends com.coremedia.ui.ckhtmleditor.Dialog
 * @xtype ck.dialog.pastetext
 */
com.coremedia.ui.ckhtmleditor.PasteTextDialog = Ext.extend(com.coremedia.ui.ckhtmleditor.Dialog, {
  constructor: function(config) {
    com.coremedia.ui.ckhtmleditor.PasteTextDialog.superclass.constructor.call(this, Ext.apply(config, {
      title: 'Paste as plain text',
      width:500,
      height:300,
      items: {
        xtype: 'form',
        layout: 'fit',
        items: [
          {
            xtype: 'textarea',
            name: 'text',
            allowBlank: false
          }
        ]
      }
    }));
  }
});

// register xtype
Ext.reg('ck.dialog.pastetext', com.coremedia.ui.ckhtmleditor.PasteTextDialog);
