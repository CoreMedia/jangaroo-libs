/* bender-tags: clipboard,pastefromword */
/* jshint ignore:start */
/* bender-ckeditor-plugins: pastefromword,ajax,list */
/* jshint ignore:end */
/* bender-include: _lib/q.js,_helpers/promisePasteEvent.js,_helpers/assertWordFilter.js,_helpers/createTestCase.js */
/* bender-include: _helpers/createTestSuite.js,_helpers/pfwTools.js */
/* global pfwTools,createTestSuite */

( function() {
	'use strict';

	var config = {
		extraAllowedContent: 'p{text-indent,margin,margin-top,margin-bottom};' +
			'ul{margin,margin-top,margin-bottom};' +
			'ol{margin,margin-top,margin-bottom}',
		disallowedContent: 'span;p{text-align,margin-left,margin-right}',
		pasteTools_keepZeroMargins: true,
		language: 'en'
	};

	bender.editor = {
		config: config
	};

	bender.test( createTestSuite( {
		browsers: [
			'chrome',
			'edge',
			'firefox',
			'safari'
		],
		wordVersions: [ 'word2016' ],
		tests: {
			'Keep_zero_margins_in_lists': true
		},

		ignoreAll: CKEDITOR.env.ie || bender.tools.env.mobile,

		customFilters: [
			pfwTools.filters.font
		]
	} ) );
} )();
