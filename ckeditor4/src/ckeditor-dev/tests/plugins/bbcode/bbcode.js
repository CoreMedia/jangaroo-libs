/* bender-tags: editor */
/* bender-ckeditor-plugins: smiley,bbcode,entities,enterkey */

bender.editor = { config: { autoParagraph: false } };

bender.test( {
	setUp: function() {
		var ed = this.editor, processor = ed.dataProcessor;
		// Remove protected attributes.
		processor.dataFilter.addRules( {
			attributeNames: [
				[ ( /^data-cke-.*/ ), '' ]
			]
		} );
	},

	assertToHtml: function( html, bbcode ) {
		var ed = this.editor, processor = ed.dataProcessor;
		// Fire "setData" event manually to not bother editable.
		var evtData = { dataValue: bbcode };
		ed.fire( 'setData', evtData );
		assert.areSame( html.toLowerCase(), CKEDITOR.tools.convertRgbToHex( bender.tools.fixHtml( processor.toHtml( evtData.dataValue ) ) ), 'bbcode->html' );
	},

	assertToBBCode: function( bbcode, html ) {
		var ed = this.editor, processor = ed.dataProcessor;
		assert.areSame( bbcode, processor.toDataFormat( html ), 'html->bbcode failed at:' + bbcode );
	},

	'test HTML to bbcode': function() {
		this.assertToBBCode( '[b]foo[/b]', '<strong>foo</strong>' );
		this.assertToBBCode( '[i]foo[/i]', '<em>foo</em>' );
		this.assertToBBCode( '[u]foo[/u]', '<u>foo</u>' );
		this.assertToBBCode( '[s]foo[/s]', '<s>foo</s>' );
		this.assertToBBCode( '[url]http://example.org[/url]', '<a href="http://example.org">http://example.org</a>' );
		this.assertToBBCode( '[url=http://example.com]example[/url]', '<a href="http://example.com">example</a>' );
		this.assertToBBCode( '[img]http://a.cksource.com/c/1/inc/img/demo-little-red.jpg[/img]',
							'<img src="http://a.cksource.com/c/1/inc/img/demo-little-red.jpg" />' );
		this.assertToBBCode( '[quote="citation"]quoted text[/quote]\n',
							'<blockquote><cite>citation</cite><p>quoted text</p></blockquote>' );
		this.assertToBBCode( '[size=150]large text[/size]', '<span style="FONT-SIZE:150%;">large text</span>' );
		this.assertToBBCode( '[color=#ff0000]red text[/color]', '<span style="COLOR:#ff0000;">red text</span>' );
		this.assertToBBCode( ':)', '<img src="' + this.editor.config.smiley_path + 'regular_smile.png" alt="smiley"/>' );
		this.assertToBBCode( '[list]\n[*]foo\n[*]bar\n[/list]\n', '<ul><li>foo</li><li>bar</li></ul>' );
	},

	// (#2248)
	'test HTML to bbcode justify': function() {
		this.assertToBBCode( '[left]foo[/left]', '<div style="text-align:left">foo</div>' );
		this.assertToBBCode( '[center]foo[/center]', '<div style="text-align:center">foo</div>' );
		this.assertToBBCode( '[right]foo[/right]', '<div style="text-align:right">foo</div>' );
		this.assertToBBCode( '[justify]foo[/justify]', '<div style="text-align:justify">foo</div>' );
		this.assertToBBCode( 'foo', '<div style="text-align:unset">foo</div>' );

		this.assertToBBCode( '[right][img]http://a.cksource.com/c/1/inc/img/demo-little-red.jpg[/img][/right]',
			'<div style="text-align:right"><img src="http://a.cksource.com/c/1/inc/img/demo-little-red.jpg" /></div>' );
	},

	'test bbcode to HTML': function() {
		this.assertToHtml( '<strong>foo</strong>', '[b]foo[/b]' );
		this.assertToHtml( '<em>foo</em>', '[i]foo[/i]' );
		this.assertToHtml( '<u>foo</u>', '[u]foo[/u]' );
		this.assertToHtml( '<s>foo</s>', '[s]foo[/s]' );

		this.assertToHtml( '<a href="http://example.org">http://example.org</a>', '[url]http://example.org[/url]' );
		this.assertToHtml( '<a href="http://example.com">example</a>', '[url=http://example.com]example[/url]' );

		this.assertToHtml( '<img src="http://a.cksource.com/c/1/inc/img/demo-little-red.jpg" />',
							'[img]http://a.cksource.com/c/1/inc/img/demo-little-red.jpg[/img]' );

		this.assertToHtml( '<blockquote><cite>citation</cite><div>quoted text</div></blockquote>',
							'[quote="citation"]quoted text[/quote]\n' );

		this.assertToHtml( '<span style="font-size:150%;">large text</span>', '[size=150]large text[/size]' );
		this.assertToHtml( '<span style="color:#ff0000;">red text</span>', '[color=#ff0000]red text[/color]' );
		this.assertToHtml( '<img alt="smiley" src="' + this.editor.config.smiley_path + 'regular_smile.png" title="smiley" />', ':)' );
		this.assertToHtml( '<ul><li>foo</li><li>bar</li></ul>', '[list]\n[*]foo\n[*]bar\n[/list]\n' );
	},

	// (#2248)
	'test bbcode to HTML justify': function() {
		this.assertToHtml( '<div style="text-align:left;">foo</div>', '[left]foo[/left]' );
		this.assertToHtml( '<div style="text-align:center;">foo</div>', '[center]foo[/center]' );
		this.assertToHtml( '<div style="text-align:right;">foo</div>', '[right]foo[/right]' );
		this.assertToHtml( '<div style="text-align:justify;">foo</div>', '[justify]foo[/justify]' );
	},

	// https://dev.ckeditor.com/ticket/8995
	'test escape HTML entities in bbcode': function() {
		var html = '<a href="foo&amp;bar">&amp;foo&lt;bar&gt;</a>', bbcode = '[url=foo&bar]&foo<bar>[/url]';
		this.assertToHtml( html, bbcode );
		this.assertToBBCode( bbcode, html );
	},

	'test escape HTML entities in bbcode - double encoding': function() {
		var html = '<a href="foo&amp;amp;bar&amp;amp;lt;">foo&amp;lt;bar&amp;gt;bom&amp;amp;lt;</a>', bbcode = '[url=foo&amp;bar&amp;lt;]foo&lt;bar&gt;bom&amp;lt;[/url]';
		this.assertToHtml( html, bbcode );
		this.assertToBBCode( bbcode, html );
	},

	'test escape HTML entities in bbcode - ampresands in the text': function() {
		var html = '&amp; &amp;amp; &amp;amp;amp;', bbcode = '& &amp; &amp;amp;';
		this.assertToHtml( html, bbcode );
		this.assertToBBCode( bbcode, html );
	},

	'test line-breaks': function() {
		this.assertToHtml( '<strong>foo<br /><br />bar</strong>', '[b]foo\n\nbar[/b]' );
		this.assertToBBCode( '[b]foo\n\nbar[/b]', '<strong>foo<br /><br />bar</strong>' );
		this.assertToHtml( '<strong>foo<br /><br />bar</strong>', '[b]foo\r\n\r\nbar[/b]' );
	},

	'test enterMode': function() {
		var editor = this.editor,
			bot = this.editorBot;

		bot.setHtmlWithSelection( 'foo^bar' );
		editor.execCommand( 'enter' );

		assert.areSame( 'foo\nbar', editor.getData() );
	}
} );

//]]>
