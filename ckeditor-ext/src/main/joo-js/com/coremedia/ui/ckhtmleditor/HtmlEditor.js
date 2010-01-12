Ext.namespace('com.coremedia.ui.ckhtmleditor');

/**
 * @class com.coremedia.ui.ckhtmleditor.HtmlEditor
 * @extends Ext.form.TextArea
 * @xtype ck.htmleditor
 */
com.coremedia.ui.ckhtmleditor.HtmlEditor = Ext.extend(Ext.form.TextArea, {
  constructor: function (config) {
    this.addEvents('focus');
    this.addEvents('blur');
    this.addEvents('change');
    com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.constructor.call(this, config);
  },

  onRender: function (ct, position) {
    if (!this.el) {
      this.defaultAutoCreate = {
        tag: "textarea",
        autocomplete: "off"
      };
    }
    com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.onRender.call(this, ct, position);
    CKEDITOR.replace(this.id, {
      removePlugins: 'toolbar,elementspath',
      extraPlugins: 'extdialog,cmrichtextwriter',
      toolbar: [],
      customConfig: 'scripts/config.js'
    });
    var ckEditor = this.getCKEditor();
    var oldValue;
    ckEditor.on('focus', function() {
      oldValue = this.getRawValue();
      ckEditor.resetDirty();
      this.fireEvent('focus', this);
    }, this);

    ckEditor.on('blur', function() {
      this.fireEvent('blur', this);
      if (ckEditor.checkDirty()) {
        this.fireEvent('change', this, this.getRawValue(), oldValue);
      }
      oldValue = undefined;
    }, this);

  },
  getCKEditor: function() {
    return CKEDITOR.instances[this.id];
  },
  setValue: function(value) {
    com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.setValue.call(this, value);
    var ckeditor = this.getCKEditor();
    if (ckeditor) {
      ckeditor.setData(value);
    }
  },
  getValue: function() {
    var ckeditor = this.getCKEditor();
    if (ckeditor) {
      ckeditor.updateElement();
    }
    return com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.getValue.call(this);
  },
  getRawValue: function() {
    this.getCKEditor().updateElement();
    return com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.getRawValue.call(this);
  },
  focus: function() {
    this.getCKEditor().focus();
  }
});
Ext.reg('ck.htmleditor', com.coremedia.ui.ckhtmleditor.HtmlEditor);