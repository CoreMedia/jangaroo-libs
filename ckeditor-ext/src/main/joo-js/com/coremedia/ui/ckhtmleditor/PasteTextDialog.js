Ext.namespace('com.coremedia.ui.ckhtmleditor');

/**
 * @class com.coremedia.ui.ckhtmleditor.PasteTextDialog
 * @extends Ext.Window
 * @xtype ckdialog.pastetext
 */
com.coremedia.ui.ckhtmleditor.PasteTextDialog = Ext.extend(Ext.Window, {
  constructor: function(config) {

    var textarea = new Ext.form.TextArea();

    com.coremedia.ui.ckhtmleditor.PasteTextDialog.superclass.constructor.call(this, Ext.apply(config, {
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
          handler: function() {
            this.data = {
              text: textarea.getValue()
            };
            textarea.reset();
            this.hide();
          },
          scope: this
        },
        {
          text: 'Cancel',
          handler: function() {
            this.data = {
              text: ""
            };
            textarea.reset();
            this.hide();
          },
          scope: this
        }
      ]

    }));

  },
  setData: function(data) {

  },
  getData: function() {
    return this.data;
  }
});

// register xtype
Ext.reg('ck.dialog.pastetext', com.coremedia.ui.ckhtmleditor.PasteTextDialog);


