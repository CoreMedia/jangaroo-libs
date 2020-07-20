/**
 * Custom Configuration for CKEditor as released as part of Jangaroo-Libs.
 */

/* exported CKBUILDER_CONFIG */

var CKBUILDER_CONFIG = {
	skin: 'moono-lisa',
	ignore: [
		'bender.js',
		'bender.ci.js',
		'.bender',
		'bender-err.log',
		'bender-out.log',
		'.travis.yml',
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
	plugins: {
		basicstyles: 1,
		blockquote: 1,
		clipboard: 1,
		copyformatting: 1,
		contextmenu: 1,
		dialog: 1,
		dialogui: 1,
		divarea: 1,
		enterkey: 1,
		entities: 1,
		fakeobjects: 1,
		find: 1,
		floatpanel: 1,
		htmlwriter: 1,
		indent: 1,
		indentlist: 1,
		link: 1,
		list: 1,
		magicline: 1,
		menu: 1,
		pastefromgdocs: 1,
		pastefromlibreoffice: 1,
		pastefromword: 1,
		pastetext: 1,
		pastetools: 1,
		showborders: 1,
		table: 1,
		tableselection: 1,
		tabletools: 1,
		undo: 1,
		wysiwygarea: 1
	}
};
