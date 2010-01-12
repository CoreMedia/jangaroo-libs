CKEDITOR.plugins.add('extdialog',
{
  init : function(editor) {
    // replace/patch CKEDITOR.dialog class:
    var ckDialog = CKEDITOR.dialog;
    CKEDITOR.dialog = function(editor, dialogName) {
      // Load the dialog definition.
      var definition = CKEDITOR.dialog._.dialogDefinitions[ dialogName ];

      definition = definition(editor);

      // Clone a functionally independent copy for this dialog.
      definition = CKEDITOR.tools.clone( definition );

      this._ = {
        editor : editor,
        name : dialogName
      };

      // Call the CKEDITOR.event constructor to initialize this instance.
      CKEDITOR.event.call(this);

      // Initialize load, show, hide, ok and cancel events.
      if (definition.onLoad)
        this.on('load', definition.onLoad);

      if (definition.onShow)
        this.on('show', definition.onShow);

      if (definition.onHide)
        this.on('hide', definition.onHide);

      if (definition.onOk) {
        this.on('ok', function(evt) {
          if (definition.onOk.call(this, evt) === false)
            evt.data.hide = false;
        });
      }

      if (definition.onCancel) {
        this.on('cancel', function(evt) {
          if (definition.onCancel.call(this, evt) === false)
            evt.data.hide = false;
        });
      }
    };
    for (var m in ckDialog) {
      if (ckDialog.hasOwnProperty(m)) {
        CKEDITOR.dialog[m] = ckDialog[m];
      }
    }
    CKEDITOR.dialog.prototype = ckDialog.prototype;
    CKEDITOR.dialog.prototype.show = function dialog$show() {
      if (editor.mode == 'wysiwyg' && CKEDITOR.env.ie) {
        var selection = editor.getSelection();
        selection && selection.lock();
      }
      if (!this._.dialog) {
        this._.dialog = Ext.create({
          xtype: "ck.dialog."+this._.name,
          layout:'fit',
          plain: true,
          modal:true,
          closeAction:'hide'
        }, "window");
        this._.dialog.on('hide', function() {
          var dialogData = this._.dialog.getData();
          if (dialogData) {
            this.fire('ok', {});
          } else {
            this.fire('cancel', {});
          }
        }, this);
      }
      this.fire('show', {});
      this._.dialog.show();
    };
    CKEDITOR.dialog.prototype.hide = function() {
      this.fire('hide', {});
      if (editor.mode == 'wysiwyg' && CKEDITOR.env.ie) {
        var selection = editor.getSelection();
        selection && selection.unlock(true);
      }
    };
    CKEDITOR.dialog.prototype.setupContent = function dialog$setupContent(data) {
      this._.dialog.setData(data);
    };
    CKEDITOR.dialog.prototype.commitContent = function dialog$commitContent(data) {
      var dialogData = this._.dialog.getData();
      for (var m in dialogData) {
        data[m] = dialogData[m];
      }
    };
  },
  requires: ['dialog']
});

