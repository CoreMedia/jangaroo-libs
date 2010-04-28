Ext.namespace('com.coremedia.ui.ckhtmleditor');

/**
 * @class com.coremedia.ui.ckhtmleditor.LinkDialog
 * @extends com.coremedia.ui.ckhtmleditor.Dialog
 * @xtype ck.dialog.link
 */
com.coremedia.ui.ckhtmleditor.LinkDialog = Ext.extend(com.coremedia.ui.ckhtmleditor.Dialog, {
  constructor: function(config) {
    com.coremedia.ui.ckhtmleditor.LinkDialog.superclass.constructor.call(this, Ext.apply(config, {
      title: 'Insert Link',
      width:400,
      height:200,
      items: {
        xtype: 'form',
        frame: true,
        defaults: {width: 230},
        items: [
          {
            xtype: 'combo',
            name: 'url.protocol',
            typeAhead: true,
            triggerAction: 'all',
            editable: false,
            fieldLabel: 'Protocol',
            mode: 'local',
            forceSelection: true,
            store:
              [
                'http://',
                'https://',
                'ftp://',
                'mailto:'
              ]
          },
          {
            xtype: 'textfield',
            name: 'url.url',
            fieldLabel: 'URL',
            allowBlank: false
          },
          {
            xtype: 'combo',
            name: 'target.type',
            typeAhead: true,
            triggerAction: 'all',
            editable: false,
            fieldLabel: 'Target type',
            mode: 'local',
            forceSelection: true,
            store:
              [
                [ 'notSet' , "---"    ],
                [ 'frame'  , "Frame"  ],
                [ 'popup'  , "Popup"  ],
                [ '_blank' , "Blank"  ],
                [ '_top'   , "Top"    ],
                [ '_self'  , "Self"   ],
                [ '_parent', "Parent" ]
              ]
          },
          {
            xtype: 'textfield',
            name: 'target.name',
            fieldLabel: 'Target'
          }
        ]
      }
    }));
  }
});

// register xtype
Ext.reg('ck.dialog.link', com.coremedia.ui.ckhtmleditor.LinkDialog);
