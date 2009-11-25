// ckeditor extension
Ext.form.CKEditor = function (config) {
  this.config = config;
  Ext.form.CKEditor.superclass.constructor.call(this, config);
};

Ext.extend(Ext.form.CKEditor, Ext.form.TextArea, {
  
  onRender: function (ct, position) {

    if (!this.el) {
      this.defaultAutoCreate = {
        tag: "textarea",
        autocomplete: "off"
      };
    }
    Ext.form.TextArea.superclass.onRender.call(this, ct, position);
    CKEDITOR.replace(this.id, {
      removePlugins: 'toolbar, elementspath',
      toolbar: [],
      customConfig : 'config.js'
    });
    var style = new CKEDITOR.style({ element : 'b' });
    var editor = CKEDITOR.instances[this.id];
    editor.attachStyleStateChange(style, function(state)
    {
      if (state == CKEDITOR.TRISTATE_ON)
        alert('The current state for the B element is ON');
      else
        alert('The current state for the B element is OFF');
    });


  },
  setValue: function (value) {
    Ext.form.TextArea.superclass.setValue.apply(this, [value]);
    CKEDITOR.instances[this.id].setData(value);
  },
  getValue: function () {
    CKEDITOR.instances[this.id].updateElement();
    return Ext.form.TextArea.superclass.getValue(this);
  },
  getRawValue: function () {
    CKEDITOR.instances[this.id].updateElement();
    return Ext.form.TextArea.superclass.getRawValue(this);
  }
});
Ext.reg('ckeditor', Ext.form.CKEditor);


var BoldButton = Ext.extend(Ext.Button, {
  scale: "small",
  iconCls: "cm-bold-16",
  enableToggle: true,
  pressed: true
});
// register xtype
Ext.reg('boldbutton', BoldButton);


// underline button
var UnderlineButton = Ext.extend(Ext.Button, {
  scale: "small",
  iconCls: "cm-underline-16",
  enableToggle: true,
  pressed: false
});
// register xtype
Ext.reg('underlinebutton', UnderlineButton);


// italic button
var ItalicButton = Ext.extend(Ext.Button, {
  scale: "small",
  iconCls: "cm-italic-16",
  enableToggle: true,
  pressed: false
});
// register xtype
Ext.reg('italicbutton', ItalicButton);



Ext.ux.RichtextEditor = Ext.extend(Ext.Panel, {
  
  testHandler: function() {
    alert("clicked");
  },
  initComponent: function() {


    Ext.apply(this, {
      layout: "anchor",
      items:
        [
          {
            tbar: [
              {
                xtype: "boldbutton",
                handler: this.testHandler
              },

              {
                xtype: "underlinebutton"

              },
              {
                xtype: "italicbutton",
                itemId: 'test'
              }
            ],
            hidden: false,
            itemId: 'toolbar'
          },
          {
            xtype: "ckeditor"

          }
        ]
    });
    Ext.ux.RichtextEditor.superclass.initComponent.call(this);

  }
});


// register xtype
Ext.reg('richtexteditor', Ext.ux.RichtextEditor);