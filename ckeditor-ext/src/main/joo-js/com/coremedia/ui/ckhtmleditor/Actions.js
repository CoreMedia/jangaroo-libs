com.coremedia.ui.ckhtmleditor.BoldAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.BoldAction.superclass.constructor.call(this, {
      iconCls: 'cm-bold-16',
      text: 'Bold',
      tooltip: 'Mark bold',
      commandName: 'bold'
    });
  }
});


com.coremedia.ui.ckhtmleditor.ItalicAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ItalicAction.superclass.constructor.call(this, {
      iconCls: 'cm-italic-16',
      text: 'Italic',
      tooltip: 'Mark italic',
      commandName: 'italic'
    });
  }
});


com.coremedia.ui.ckhtmleditor.UnderlineAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.UnderlineAction.superclass.constructor.call(this, {
      iconCls: 'cm-underline-16',
      text: 'Underline',
      tooltip: 'Mark underline',
      commandName: 'underline'
    });
  }
});


com.coremedia.ui.ckhtmleditor.ListNumberedAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ListNumberedAction.superclass.constructor.call(this, {
      iconCls: 'cm-list-numbered-16',
      text: 'Numbered List',
      tooltip: 'Insert numbered list',
      commandName: 'numberedlist'
    });
  }
});


com.coremedia.ui.ckhtmleditor.ListBulletedAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ListBulletedAction.superclass.constructor.call(this, {
      iconCls: 'cm-list-bulleted-16',
      text: 'Bulleted List',
      tooltip: 'Insert bulleted list',
      commandName: 'bulletedlist'
    });
  }
});


com.coremedia.ui.ckhtmleditor.IndentAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.IndentAction.superclass.constructor.call(this, {
      iconCls: 'indent-16',
      text: 'Indent',
      tooltip: 'Indent',
      commandName: 'indent'
    });
  }
});


com.coremedia.ui.ckhtmleditor.OutdentAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.OutdentAction.superclass.constructor.call(this, {
      iconCls: 'outdent-16',
      text: 'Outdent',
      tooltip: 'Outdent',
      commandName: 'outdent'
    });
  }
});


com.coremedia.ui.ckhtmleditor.PasteTextAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.PasteTextAction.superclass.constructor.call(this, {
      iconCls: 'cm-paste-16',
      text: 'Paste',
      tooltip: 'Paste as plaintext',
      commandName: 'pastetext'
    });
  }
});


com.coremedia.ui.ckhtmleditor.LinkAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.LinkAction.superclass.constructor.call(this, {
      iconCls: 'cm-externallink-16',
      text: 'Link',
      tooltip: 'Link',
      commandName: 'link'
    });
  }
});

com.coremedia.ui.ckhtmleditor.UnlinkAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.UnlinkAction.superclass.constructor.call(this, {
      iconCls: 'cm-externallink-16',
      text: 'Unlink',
      tooltip: 'Unlink',
      commandName: 'unlink'
    });
  }
});

com.coremedia.ui.ckhtmleditor.UndoAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.UndoAction.superclass.constructor.call(this, {
      iconCls: 'undo-16',
      text: 'Undo',
      tooltip: 'Undo',
      commandName: 'undo'
    });
  }
});

com.coremedia.ui.ckhtmleditor.RedoAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.RedoAction.superclass.constructor.call(this, {
      iconCls: 'redo-16',
      text: 'Redo',
      tooltip: 'Redo',
      commandName: 'redo'
    });
  }
});
