/**
 * @license Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	// %REMOVE_START%
	config.plugins =
		'basicstyles,' +
		'blockquote,' +
		'clipboard,' +
		'contextmenu,' +
		'dialog,' +
		'dialogui,' +
		'divarea,' +
		'entities,' +
		'fakeobjects,' +
		'find,' +
		'floatpanel,' +
		'htmlwriter,' +
		'indent,' +
		'indentlist,' +
		'link,' +
		'list,' +
		'menu,' +
		'panel,' +
		'pastefromword,' +
		'pastetext,' +
		'showborders,' +
		'table,' +
		'tabletools,' +
		'undo,' +
		'wysiwygarea';
	// %REMOVE_END%
};

// %LEAVE_UNMINIFIED% %REMOVE_LINE%
