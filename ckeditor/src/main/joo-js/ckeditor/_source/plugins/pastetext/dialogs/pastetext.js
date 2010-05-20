/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

(function()
{
	CKEDITOR.dialog.add( 'pastetext', function( editor )
		{
			return {
				title : editor.lang.pasteText.title,

				minWidth : CKEDITOR.env.ie && CKEDITOR.env.quirks ? 368 : 350,
				minHeight : 240,

				onShow : function()
				{
					// Reset the textarea value.
					this.setupContent( { text : '' } );
				},

				onOk : function()
				{
					var data = {};
					this.commitContent( data );
					// Insert the text.
					var text = data.text;
					editor = this.getParentEditor();

					setTimeout( function()
					{
						editor.fire( 'paste', { 'text' : text } );
					}, 0 );
				},

				contents :
				[
					{
						label : editor.lang.common.generalTab,
						id : 'general',
						elements :
						[
							{
								type : 'html',
								id : 'pasteMsg',
								html : '<div style="white-space:normal;width:340px;">' + editor.lang.clipboard.pasteMsg + '</div>'
							},
							{
								type : 'html',
								id : 'content',
								style : 'width:340px;height:170px',
								html :
									'<textarea style="' +
										'width:346px;' +
										'height:170px;' +
										'resize: none;' +
										'border:1px solid black;' +
										'background-color:white">' +
									'</textarea>',

								focus : function()
								{
									this.getElement().focus();
								},

								setup : function( data )
								{
									// Set the textarea value.
									this.getInputElement().setValue( data.text || '' );
								},
								commit : function( data )
								{
									// Get the textarea value.
									data.text = this.getInputElement().getValue();
								}
							}
						]
					}
				]
			};
		});
})();
