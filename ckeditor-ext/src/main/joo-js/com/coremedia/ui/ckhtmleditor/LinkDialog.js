Ext.namespace('com.coremedia.ui.ckhtmleditor');

/**
 * @class com.coremedia.ui.ckhtmleditor.LinkDialog
 * @extends Ext.Window
 * @xtype ckdialog.link
 */
com.coremedia.ui.ckhtmleditor.LinkDialog = Ext.extend(Ext.Window, {
  constructor: function(config) {
    this.href_textField = new Ext.form.TextField({fieldLabel: 'URL', allowBlank:false});
    this.target_comboBox = new Ext.form.ComboBox({
      typeAhead: true,
      triggerAction: 'all',
      editable: false,
      fieldLabel: 'Target',
      mode: 'local',
      forceSelection: true,
      store:
        [
          ['_self', 'same window'],
          ['_blank', 'new window']
        ]
    });

    com.coremedia.ui.ckhtmleditor.LinkDialog.superclass.constructor.call(this, Ext.apply(config, {
      width:500,
      height:300,
      items: new Ext.FormPanel({
        frame:true,
        title: 'Insert Link...',
        defaults: {width: 230},
        items: [
          this.href_textField,
          this.target_comboBox
        ]
      }),
      buttons: [
        {
          text:'Okay',
          scope: this,
          handler: function() {
            this.data = {'url' : { 'url' : this.href_textField.getValue() }, 'target': this.target_comboBox.getValue() };
            this.hide();
          }
        },
        {
          text: 'Cancel',
          scope: this,
          handler: function() {
            this.data = null;
            this.hide();
          }
        }
      ]
    }));
  },
  setData: function(data) {
    this.data = data;
    this.href_textField.setValue(data && data.url ? data.url.url : '');
  },
  getData: function() {
    return this.data;
  }
});

// register xtype
Ext.reg('ckdialog.link', com.coremedia.ui.ckhtmleditor.LinkDialog);
