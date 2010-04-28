Ext.namespace('com.coremedia.ui.ckhtmleditor');

/**
 * @class com.coremedia.ui.ckhtmleditor.Dialog
 * @extends Ext.Window
 * @xtype ck.dialog
 */
com.coremedia.ui.ckhtmleditor.Dialog = Ext.extend(Ext.Window, {
  constructor: function(config) {
    com.coremedia.ui.ckhtmleditor.Dialog.superclass.constructor.call(this, Ext.apply({
      layout: 'fit',
      plain: true,
      modal: true,
      closeAction:'hide',
      title: 'Generic Dialog',
      width:500,
      height:300,
      buttons: [
        {
          text: 'Okay',
          scope: this,
          handler: this.onOk
        },
        {
          text: 'Cancel',
          scope: this,
          handler: this.onCancel
        }
      ]
    }, config));
  },
  getForm: function() {
    var form = this.findByType('form')[0];
    return form.getForm();
  },
  _dataAndProperty: function(field) {
    var data = this.data;
    var props = field.getName().split(".");
    for (var i=0; i<props.length-1; ++i) {
      data = data[props[i]] || (data[props[i]] = {});
    }
    return { data: data, property: props[props.length-1] };
  },
  setData: function(data) {
    this.data = data;
    var form = this.getForm();
    form.reset();
    form.items.each(this._updateField, this);
  },
  _updateField: function(field) {
    var dp = this._dataAndProperty(field);
    var value = dp.data[dp.property];
    if (value) {
      field.setValue(value);
    }
  },
  onOk: function() {
    // update this.data:
    this.getForm().items.each(this._updateData, this);
    this.hide();
  },
  _updateData: function(field) {
    var dp = this._dataAndProperty(field);
    dp.data[dp.property] = field.getValue();
  },
  onCancel: function() {
    this.data = null;
    this.hide();
  },
  getData: function() {
    return this.data;
  }
});

// register xtype
Ext.reg('ck.dialog', com.coremedia.ui.ckhtmleditor.Dialog);
