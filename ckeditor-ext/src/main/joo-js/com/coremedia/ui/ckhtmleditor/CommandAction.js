Ext.namespace('com.coremedia.ui.ckhtmleditor');

com.coremedia.ui.ckhtmleditor.CommandAction = Ext.extend(Ext.Action, {
  constructor: function(config) {
    this.commandName = config.commandName;
    delete config.commandName;
    com.coremedia.ui.ckhtmleditor.CommandAction.superclass.constructor.call(this, Ext.apply(config, {
      scale: 'small',
      scope: this,
      handler: function() {
        this.ckEditor.execCommand(this.commandName);
      }
    }));
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    // Now, we can get the command instance and attach as state change listener:
    var command = this.ckEditor.getCommand(this.commandName);
    command.on('state', this.setState, this);
  },

  setState: function(evt) {
    var oldPressed = !!this.pressed;
    var oldDisabled = !!this.disabled;
    var state = evt.sender.state;
    this.disabled = state === CKEDITOR.TRISTATE_DISABLED;
    if (this.disabled !== oldDisabled) {
      this.callEach(this.disabled ? 'disable' : 'enable');
    }
    if (!this.disabled) {
      this.pressed = state === CKEDITOR.TRISTATE_ON;
      if (this.pressed !== oldPressed) {
        this.callEach('toggle', [this.pressed]);
      }
    }
  }
});
