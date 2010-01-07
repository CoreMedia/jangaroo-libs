Ext.namespace('com.coremedia.ui.ckhtmleditor');

com.coremedia.ui.ckhtmleditor.FormatAction = Ext.extend(Ext.Action, {
  constructor: function(config) {
    this.style = config.style;
    var styleCommand = new CKEDITOR.styleCommand(this.style);
    this.pressed = false;
    delete config.style;
    com.coremedia.ui.ckhtmleditor.FormatAction.superclass.constructor.call(this, Ext.apply(config, {
      scale: 'small',
      enableToggle: true,
      scope: this,
      handler: function() {
        styleCommand.state = this.pressed ? CKEDITOR.TRISTATE_ON : CKEDITOR.TRISTATE_OFF;
        styleCommand.exec(this.ckEditor);
      }
    }));
  },

  createStyle: function(element) {
    var style = new CKEDITOR.style({ element : element });
    style.type = CKEDITOR.STYLE_INLINE;
    return style;
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    ckEditor.attachStyleStateChange(this.style, this.setState.createDelegate(this));
  },

  setState: function(ckStyleState) {
    var pressed = ckStyleState === CKEDITOR.TRISTATE_ON;
    this.pressed = pressed;
    this.callEach('toggle', [pressed]);
  }
});


com.coremedia.ui.ckhtmleditor.BoldAction = Ext.extend(com.coremedia.ui.ckhtmleditor.FormatAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.BoldAction.superclass.constructor.call(this, {
      iconCls: 'cm-bold-16',
      text: 'Bold',
      tooltip: 'Mark bold',
      style: this.createStyle('strong')
    });
  }
});


com.coremedia.ui.ckhtmleditor.ItalicAction = Ext.extend(com.coremedia.ui.ckhtmleditor.FormatAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ItalicAction.superclass.constructor.call(this, {
      iconCls: 'cm-italic-16',
      text: 'Italic',
      tooltip: 'Mark italic',
      style: this.createStyle('em')
    });
  }
});


com.coremedia.ui.ckhtmleditor.UnderlineAction = Ext.extend(com.coremedia.ui.ckhtmleditor.FormatAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.UnderlineAction.superclass.constructor.call(this, {
      iconCls: 'cm-underline-16',
      text: 'Underline',
      tooltip: 'Mark underline',
      style: this.createStyle('u')
    });
  }
});


com.coremedia.ui.ckhtmleditor.ListNumberedAction = Ext.extend(Ext.Action, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ListNumberedAction.superclass.constructor.call(this, {
      iconCls: 'cm-list-numbered-16',
      text: 'Numbered List',
      tooltip: 'Insert numbered list',
      scale: 'small',
      scope: this,
      handler: function() {
        this.ckEditor.focus();
        this.ckEditor.execCommand('numberedlist');
      }
    });
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    var style = new CKEDITOR.style({ element : 'ol' });
    style.type = CKEDITOR.STYLE_INLINE;
    ckEditor.attachStyleStateChange(style, this.setState.createDelegate(this));
  },

  setState: function(ckStyleState) {
    var pressed = ckStyleState === CKEDITOR.TRISTATE_ON;
    this.pressed = pressed;
    this.callEach('toggle', [pressed]);
  }
});


com.coremedia.ui.ckhtmleditor.ListBulletedAction = Ext.extend(Ext.Action, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ListBulletedAction.superclass.constructor.call(this, {
      iconCls: 'cm-list-bulleted-16',
      text: 'Bulleted List',
      tooltip: 'Insert bulleted list',
      scale: 'small',
      scope: this,
      handler: function() {
        this.ckEditor.focus();
        this.ckEditor.execCommand('bulletedlist');
      }
    });
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    var style = new CKEDITOR.style({ element : 'ul' });
    style.type = CKEDITOR.STYLE_INLINE;
    ckEditor.attachStyleStateChange(style, this.setState.createDelegate(this));
  },

  setState: function(ckStyleState) {
    var pressed = ckStyleState === CKEDITOR.TRISTATE_ON;
    this.pressed = pressed;
    this.callEach('toggle', [pressed]);
  }
});


com.coremedia.ui.ckhtmleditor.IndentAction = Ext.extend(Ext.Action, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.IndentAction.superclass.constructor.call(this, {
      iconCls: 'indent-16',
      text: 'Indent',
      tooltip: 'Indent',
      scale: 'small',
      scope: this,
      handler: function() {
        this.ckEditor.focus();
        this.ckEditor.execCommand('indent');
      }
    });
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    // Get the command instance.
    var command = ckEditor.getCommand('indent');
    if (command) {
      command.on('state', this.setState, this);
    }
  },

  setState: function(ckStyleState) {
    this.callEach(ckStyleState === CKEDITOR.TRISTATE_OFF ? 'disable' : 'enable');
  }
});


com.coremedia.ui.ckhtmleditor.OutdentAction = Ext.extend(Ext.Action, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.OutdentAction.superclass.constructor.call(this, {
      iconCls: 'outdent-16',
      text: 'Outdent',
      tooltip: 'Outdent',
      scale: 'small',
      scope: this,
      handler: function() {
        this.ckEditor.focus();
        this.ckEditor.execCommand('outdent');
      }
    });
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    // Get the command instance.
    var command = ckEditor.getCommand('outdent');
    if (command) {
      command.on('state', this.setState, this);
    }
  },

  setState: function(ckStyleState) {
    this.callEach(ckStyleState === CKEDITOR.TRISTATE_OFF ? 'disable' : 'enable');
  }
});


com.coremedia.ui.ckhtmleditor.UnlinkAction = Ext.extend(Ext.Action, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.FormatAction.superclass.constructor.call(this, {
      iconCls: 'cm-externallink-16',
      text: 'Unlink',
      tooltip: 'Unlink',
      scale: 'small',
      disabled: true,
      scope: this,
      handler: function() {
        this.ckEditor.focus();
        this.ckEditor.linkcommand.unlink();
      }
    });
    var style = new CKEDITOR.style({ element : 'a' });
    style.type = CKEDITOR.STYLE_INLINE;
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    ckEditor.attachStyleStateChange(this.style, this.setState.createDelegate(this));
  },

  setState: function(ckStyleState) {
    this.callEach(ckStyleState === CKEDITOR.TRISTATE_OFF ? 'disable' : 'enable');
  }
});


com.coremedia.ui.ckhtmleditor.LinkAction = Ext.extend(Ext.Action, {
  constructor: function() {
    var win;

    this.pressed = false;

    var href_textField = new Ext.form.TextField({fieldLabel: 'URL', allowBlank:false});
    var target_comboBox = new Ext.form.ComboBox({
      typeAhead: true,
      triggerAction: 'all',
      editable: false,
      fieldLabel: 'Target',
      mode: 'local',
      forceSelection: true,
      store: new Ext.data.ArrayStore({
        id: 0,
        fields: ['value', 'display'],
        data: [
          ['_self', 'same window'],
          ['_blank', 'new window']
        ]
      }),
      valueField: 'value',
      displayField: 'display'
    });

    com.coremedia.ui.ckhtmleditor.FormatAction.superclass.constructor.call(this, {
      iconCls: 'cm-externallink-16',
      text: 'Link',
      tooltip: 'Link',
      scale: 'small',
      scope: this,
      handler: function() {
        if (!win) {
          win = new Ext.Window({
            layout:'fit',
            width:500,
            height:300,
            modal:true,
            closeAction:'hide',
            plain: true,
            items: new Ext.FormPanel({
              frame:true,
              title: 'Insert Link...',
              defaults: {width: 230},
              items: [
                href_textField,
                target_comboBox
              ]
            }),
            buttons: [
              {
                text:'Okay',
                handler: function() {
                  this.ckEditor.focus();
                  this.ckEditor.linkcommand.updateLink({'url' : { 'url' : href_textField.getValue() }, 'target': target_comboBox.getValue() });
                  win.hide();
                }
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
        var data = this.ckEditor.linkcommand.retrieveLink();
        href_textField.setValue(data && data.url ? data.url.url : '');
        win.show(this);

      }
    });
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
  }
});
