/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

/* exported CKBUILDER_CONFIG */

var CKBUILDER_CONFIG = {
	skin: 'moono',
	ignore: [
		'bender.js',
		'.bender',
		'bender-err.log',
		'bender-out.log',
		'dev',
		'docs',
		'.DS_Store',
		'.editorconfig',
		'.gitignore',
		'.gitattributes',
		'gruntfile.js',
		'.idea',
		'.jscsrc',
		'.jshintignore',
		'.jshintrc',
		'less',
		'.mailmap',
		'node_modules',
		'package.json',
		'README.md',
		'tests'
	],
	plugins : {
		'basicstyles' : 1,
		'blockquote' : 1,
		'clipboard' : 1,
		'contextmenu' : 1,
		'divarea' : 1,
		'entities' : 1,
		'find' : 1,
		'htmlwriter' : 1,
		'indentlist' : 1,
		'link' : 1,
		'list' : 1,
		'pastefromword' : 1,
		'pastetext' : 1,
		'showborders' : 1,
		'tabletools' : 1,
		'undo' : 1,
		'wysiwygarea' : 1

	},
	languages : {
		'de' : 1,
		'en' : 1
	}
};
