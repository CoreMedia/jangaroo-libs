// ckeditor extension
Ext.namespace('com.coremedia.ui.ckhtmleditor');
com.coremedia.ui.ckhtmleditor.HtmlEditor = Ext.extend(Ext.form.TextArea, {
  constructor: function (config) {
    this.config = config;
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
      removePlugins: 'toolbar, elementspath',
      toolbar: [],
      customConfig: 'scripts/config.js'
    });
  },
  getCKEditor: function() {
    return CKEDITOR.instances[this.id];
  },
  setValue: function(value) {
    com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.setValue.call(this, value);
    this.getCKEditor().setData(value);
  },
  getValue: function() {
    this.getCKEditor().updateElement();
    return com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.getValue.call(this);
  },
  getRawValue: function() {
    this.getCKEditor().updateElement();
    return com.coremedia.ui.ckhtmleditor.HtmlEditor.superclass.getRawValue.call(this);
  }
});
Ext.reg('ckhtmleditor', com.coremedia.ui.ckhtmleditor.HtmlEditor);


com.coremedia.ui.ckhtmleditor.FormatAction = Ext.extend(Ext.Action, {
  constructor: function(style, iconCls, text, tooltip, richtextEditor) {

    var styleCommand = new CKEDITOR.styleCommand(style);
    this.pressed = false;
    com.coremedia.ui.ckhtmleditor.FormatAction.superclass.constructor.call(this, {
      scale: 'small',
      iconCls: iconCls,
      text: text,
      tooltip: tooltip,
      enableToggle: true,
      handler: function() {
        var ckEditor = richtextEditor.getHtmlEditor().getCKEditor();
        styleCommand.state = this.pressed ? CKEDITOR.TRISTATE_ON : CKEDITOR.TRISTATE_OFF;
        styleCommand.exec(ckEditor);
      },
      scope: this
    });
    richtextEditor.attachStyleStateChange(style, this.setState.createDelegate(this));
  },
  setState: function(ckStyleState) {
    var pressed = ckStyleState === CKEDITOR.TRISTATE_ON;
    this.pressed = pressed;
    this.callEach('toggle', [pressed]);
  }
});


var win, win2;

com.coremedia.ui.ckhtmleditor.LinkAction = Ext.extend(Ext.Action, {
  constructor: function(iconCls, text, tooltip, richtextEditor) {

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
      scale: 'small',
      iconCls: iconCls,
      text: text,
      tooltip: tooltip,
      enableToggle: true,
      handler: function() {
        if (!win) {
          win = new Ext.Window({
            layout:'fit',
            width:500,
            height:300,
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
                  var style = new CKEDITOR.style({ element : 'a', attributes : {'href' : href_textField.getValue(), target: target_comboBox.getValue() }  });
                  style.type = CKEDITOR.STYLE_INLINE;

                  var styleCommand = new CKEDITOR.styleCommand(style);

                  var ckEditor = richtextEditor.getHtmlEditor().getCKEditor();
                  styleCommand.state = this.pressed ? CKEDITOR.TRISTATE_ON : CKEDITOR.TRISTATE_OFF;
                  styleCommand.exec(ckEditor);
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
        win.show(this);

      },
      scope: this
    });
    var style = new CKEDITOR.style({ element : 'a' });
    style.type = CKEDITOR.STYLE_INLINE;
    richtextEditor.attachStyleStateChange(style, this.setState.createDelegate(this));

  },
  setState: function(ckStyleState) {
    var pressed = ckStyleState === CKEDITOR.TRISTATE_ON;
    this.pressed = pressed;
    this.callEach('toggle', [pressed]);
  }
});


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
    delete this.text;
  }
});

Ext.reg('iconbutton', com.coremedia.ui.IconButton);

// The Richtext Editor:
com.coremedia.ui.ckhtmleditor.RichtextEditor = Ext.extend(Ext.Panel, {
  constructor: function(config) {
    var editor = this;
    this.styleStateChangeCallbacks = [];
    com.coremedia.ui.ckhtmleditor.RichtextEditor.superclass.constructor.call(this, Ext.apply(config, {
      layout: 'anchor',
      items:
        [
          {
            xtype: 'toolbar',
            items: [

              new com.coremedia.ui.IconButton(this.getBoldAction()),
              new com.coremedia.ui.IconButton(this.getItalicAction()),
              new com.coremedia.ui.IconButton(this.getUnderlineAction()),
              new com.coremedia.ui.IconButton(this.getLinkAction()),
              new Ext.Button(config = { iconCls: 'cm-paste-16', handler: function() {

                var textarea = new Ext.form.TextArea();

                if (!win2) {
                  win2 = new Ext.Window({
                    layout:'fit',
                    width:500,
                    height:300,
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
                          var ckEditor = editor.getHtmlEditor().getCKEditor();
                          ckEditor.insertText(textarea.getValue());
                          Ext.get('textarea').reset();
                          win2.hide();
                        }
                      },
                      {
                        text: 'Cancel',
                        handler: function() {
                          win2.hide();
                        }
                      }
                    ]
                  });
                }
                win2.show(this);
              }}),
              {
                xtype: 'button',
                text: "Format",
                // Add the action to a menu as a text item
                menu: [
                  new Ext.menu.CheckItem(this.getBoldAction()),
                  new Ext.menu.CheckItem(this.getItalicAction()),
                  new Ext.menu.CheckItem(this.getUnderlineAction())
                ]
              }
            ]
          },
          {
            xtype: 'ckhtmleditor',
            itemId: 'ckhtmleditor'
          }
        ]
    }));
    this.getHtmlEditor().addListener("render", this._ckEditorAvailable, this);
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
  getBoldAction: function() {
    if (!this.boldAction) {
      this.boldAction = new com.coremedia.ui.ckhtmleditor.FormatAction(this.createStyle('strong'), 'cm-bold-16', "Bold", "Mark bold", this);
    }
    return this.boldAction;
  },
  getItalicAction: function() {
    if (!this.italicAction) {
      this.italicAction = new com.coremedia.ui.ckhtmleditor.FormatAction(this.createStyle('em'), 'cm-italic-16', "Italic", "Mark italic", this);
    }
    return this.italicAction;
  },
  getUnderlineAction: function() {
    if (!this.underlineAction) {
      this.underlineAction = new com.coremedia.ui.ckhtmleditor.FormatAction(this.createStyle('u'), 'cm-underline-16', "Underline", "Mark underline", this);
    }
    return this.underlineAction;
  },
  getLinkAction: function() {
    if (!this.linkAction) {
      this.linkAction = new com.coremedia.ui.ckhtmleditor.LinkAction('cm-externallink-16', "Link", "Insert Link", this);
    }
    return this.linkAction;
  },
  _ckEditorAvailable: function() {
    var ckEditorWrapper = this.getHtmlEditor();
    ckEditorWrapper.removeListener("render", this._ckEditorAvailable);
    var ckEditor = ckEditorWrapper.getCKEditor();
    for (var i = 0; i < this.styleStateChangeCallbacks.length; ++i) {
      ckEditor.attachStyleStateChange(this.styleStateChangeCallbacks[i].style, this.styleStateChangeCallbacks[i].callback);
    }
    delete this.styleStateChangeCallbacks;
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
    return this.getComponent('ckhtmleditor');
  }
});


// register xtype
Ext.reg('richtexteditor', com.coremedia.ui.ckhtmleditor.RichtextEditor);