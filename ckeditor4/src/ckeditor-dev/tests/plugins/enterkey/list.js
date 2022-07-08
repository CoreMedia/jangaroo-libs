/* bender-tags: editor,list */

( function() {
	'use strict';

	var editors = {},
		oldIE = CKEDITOR.env.ie && CKEDITOR.env.version < 9;

	editors = {};

	function assertEnter( name, data, expected, action, message, selMatters ) {
		var editor = bender.editors[ name ];

		bender.tools.setHtmlWithSelection( editor, data );

		if ( action === true )
			editor.execCommand( 'enter' );
		else
			action( editor );

		assert[ expected.exec ? 'isMatching' : 'areSame' ](
			expected,
			bender.tools.fixHtml(
				bender.tools.compatHtml( selMatters ? bender.tools.getHtmlWithSelection( editor ) : editor.getData(),
					true, true ),
				true, true ),
			message || 'Assertion failed.' );
	}

	bender.editors = {
		enterP: {
			name: 'enterP',
			config: {
				enterMode: CKEDITOR.ENTER_P
			}
		},
		enterBR: {
			name: 'enterBR',
			config: {
				enterMode: CKEDITOR.ENTER_BR
			}
		},
		enterDIV: {
			name: 'enterDIV',
			config: {
				enterMode: CKEDITOR.ENTER_P,
				extraPlugins: 'div'
			}
		}
	};

	bender.editorsConfig = {
		plugins: 'entities,button,enterkey,list,toolbar',
		allowedContent: true
	};

	bender.test( {
		init: function() {
			var name;

			for ( name in bender.editors ) {
				bender.editors[ name ].insertText( name );
			}
		},
		/**
		 * Press enter key before nested list should introduce placeholder in new list item.
		 */
		test_enterkey_before_nestedList: function() {
			// We're unable to put the collapsed cursor at exact position
			// before sub list in this case in IE.
			if ( CKEDITOR.env.ie )
				assert.ignore();

			assertEnter( 'enterP',
				'<ol>' +
					'<li>x^\n' +
						'<ol>' +
							'<li>y</li>' +
						'</ol>' +
					'</li>' +
				'</ol>',

				'<ol>' +
					'<li>x</li>' +
					'<li>' +
						'&nbsp;' +
						'<ol>' +
							'<li>y</li>' +
						'</ol>' +
					'</li>' +
				'</ol>',
				true );
		},

		/**
		 * Press enter key in the end of an inline style element before nested list should introduce placeholder in new list item.
		 */
		test_enterkey_before_nestedList_2: function() {
			assertEnter( 'enterP',
				'<ol>' +
					'<li>' +
						'<b>x^</b>' +
						'<ol>' +
							'<li>y</li>' +
						'</ol>' +
					'</li>' +
				'</ol>',

				'<ol>' +
					'<li>' +
						'<b>x</b>' +
					'</li>' +
					'<li>' +
						'&nbsp;' +
						'<ol>' +
							'<li>y</li>' +
						'</ol>' +
					'</li>' +
				'</ol>',
				true );
		},

		/**
		 * Press enter key in the middle of an inline style element before nested list doesn't introduce placeholder.
		 */
		test_enterkey_before_nestedList_3: function() {
			assertEnter( 'enterP',
				'<ol>' +
					'<li>' +
						'<b>x^x</b>' +
						'<ol>' +
							'<li>y</li>' +
						'</ol>' +
					'</li>' +
				'</ol>',

				'<ol>' +
					'<li>' +
						'<b>x</b>' +
					'</li>' +
					'<li>' +
						'<b>x</b>' +
						'<ol>' +
							'<li>y</li>' +
						'</ol>' +
					'</li>' +
				'</ol>',
				true );
		},
		// End of https://dev.ckeditor.com/ticket/3165

		// https://dev.ckeditor.com/ticket/5460
		'test enterkey at the end of nested list item': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'x' +
						'<ul>' +
							'<li>y^</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'x' +
						'<ul>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>' +
				'<p>&nbsp;</p>',
				function( editor ) {
					var i = 0;
					while ( i++ < 3 )
						editor.execCommand( 'enter' );
				},
				true );
		},

		'test enterkey in first empty &lt;li&gt;, block-less: collapse list': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>x</li>' +
					'<li>' +
						'z' +
						'<ul>' +
							'<li>^</li>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
					'<li>^&nbsp;</li>' +
					'<li>' +
						'z' +
						'<ul>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				true, 'List should collapse.', true );
		},

		'test enterkey in first empty &lt;li&gt;, block-less: collapse list (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<ul>' +
					'<li>x</li>' +
					'<li>' +
						'<ul>' +
							'<li>^</li>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
					'<li>^&nbsp;</li>' +
					'<li>' +
						'<ul>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

			true, 'List should collapse.', true );
		},

		'test enterkey in middle empty &lt;li&gt;, block-less: split list': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'<ul>' +
							'<li>x</li>' +
							'<li>^</li>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'<ul>' +
							'<li>x</li>' +
						'</ul>' +
					'</li>' +
					'<li>^&nbsp;</li>' +
					'<li>' +
						'<ul>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				true, 'List should collapse.', true );
		},

		'test enterkey in middle empty &lt;li&gt;, block-less: split list (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<ul>' +
					'<li>' +
						'<ul>' +
							'<li>x</li>' +
							'<li>^</li>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'<ul>' +
							'<li>x</li>' +
						'</ul>' +
					'</li>' +
					'<li>^&nbsp;</li>' +
					'<li>' +
						'<ul>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				true, 'List should collapse.', true );
		},

		'test enterkey in last empty &lt;li&gt;, block-less: collapse list': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>x</li>' +
					'<li>' +
						'<ul>' +
							'<li>y</li>' +
							'<li>^</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
					'<li>' +
						'<ul>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'List should collapse.', true );
		},

		'test enterkey in last empty &lt;li&gt;, block-less: collapse list (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<ul>' +
					'<li>x</li>' +
					'<li>' +
						'<ul>' +
							'<li>y</li>' +
							'<li>^</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
					'<li>' +
						'<ul>' +
							'<li>y</li>' +
						'</ul>' +
					'</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'List should collapse.', true );
		},

		'test enterkey in first empty &lt;li&gt;, block, extract contents': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>^</li>' +
					'<li>x</li>' +
				'</ul>',

				'<p>^&nbsp;</p>' +
				'<ul>' +
					'<li>x</li>' +
				'</ul>',

				true, 'Paragraph should be extracted right before the list.', true );
		},

		'test enterkey in first empty &lt;li&gt;, block, extract contents (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<ul>' +
					'<li>^</li>' +
					'<li>x</li>' +
				'</ul>',

				new RegExp(
					'\\^(<br />)?&nbsp;' +
					'<ul>' +
						'<li>x</li>' +
					'</ul>' ),

				true, 'New line should be extracted right before the list.', true );
		},

		'test enterkey in middle empty &lt;li&gt;, block, split list': function() {
			assertEnter( 'enterP',
				'<ul class="c" id="i" style="color:red;">' +
					'<li>x</li>' +
					'<li>^</li>' +
					'<li>y</li>' +
				'</ul>',

				'<ul class="c" id="i" style="color:red;">' +
					'<li>x</li>' +
				'</ul>' +
				'<p>^&nbsp;</p>' +
				'<ul class="c" style="color:red;">' +
					'<li>y</li>' +
				'</ul>',

				true, 'List should be divided by a paragraph.', true );
		},

		'test enterkey in middle empty &lt;li&gt;, block, split list (ENTER_BR)': function() {
			var match = new RegExp( oldIE ?
				(
					'<ul class="c" id="i" style="color:red;">' +
						'<li>x</li>' +
					'</ul>' +
					'<br />\\^' +
					'<ul class="c" style="color:red;">' +
						'<li>y</li>' +
					'</ul>'
				) : (
					'<ul class="c" id="i" style="color:red;">' +
						'<li>x</li>' +
					'</ul>' +
					'\\^(<br />)?&nbsp;' +
					'<ul class="c" style="color:red;">' +
						'<li>y</li>' +
					'</ul>'
				) );

			assertEnter( 'enterBR',
				'<ul class="c" id="i" style="color:red;">' +
					'<li>x</li>' +
					'<li>^</li>' +
					'<li>y</li>' +
				'</ul>',
				match,

				true, 'List should be divided.', true );
		},

		'test enterkey in last empty &lt;li&gt;, block, extract contents': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>x</li>' +
					'<li>^</li>' +
				'</ul>' +
				'<p>y</p>',

				'<ul>' +
					'<li>x</li>' +
				'</ul>' +
				'<p>^&nbsp;</p>' +
				'<p>y</p>',

				true, 'A paragraph should be extracted right after the list.', true );
		},

		'test enterkey in last empty &lt;li&gt;, block, extract contents (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<ul>' +
					'<li>x</li>' +
					'<li>^</li>' +
				'</ul>' +
				'<p>moo</p>',

				new RegExp(
					'<ul>' +
						'<li>x</li>' +
					'</ul>' +
					'(\\^(<br />)?(&nbsp;)?)|(<br />\\^)' +
					'<p>moo</p>'
				),

				true, 'A new line should be extracted right after the list.', true );
		},

		'test enterkey: preserve &lt;li&gt; styles': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>x</li>' +
					'<li style="color:red;">^</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
				'</ul>' +
				'<p style="color:red;">^&nbsp;</p>',

				true, 'Styles should be preserved.', true );
		},

		'test enterkey: preserve &lt;li&gt; classes': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>x</li>' +
					'<li class="foo bar">^</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
				'</ul>' +
				'<p class="foo bar">^&nbsp;</p>',

				true, 'Classes should be preserved.', true );
		},

		'test enterkey: preserve text direction': function() {
			assertEnter( 'enterP',
				'<div dir="rtl">' +
					'<ul dir="ltr">' +
						'<li>x</li>' +
						'<li class="foo bar">^</li>' +
					'</ul>' +
				'</div>',

				'<div dir="rtl">' +
					'<ul dir="ltr">' +
						'<li>x</li>' +
					'</ul>' +
					'<p class="foo bar" dir="ltr">^&nbsp;</p>' +
				'</div>',

				true, 'Direction should be preserved if different than cointainer\'s.', true );
		},

		'test enterkey: leaves empty list item with h1 format': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>x</li>' +
					'<li><h1>^</h1></li>' +
					'<li>y</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
				'</ul>' +
				'<h1>^&nbsp;</h1>' +
				'<ul>' +
					'<li>y</li>' +
				'</ul>',

				true, 'List should be split and format preserved.', true );
		},

		'test enterkey: leaves empty list item with a paragraph': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>x</li>' +
					'<li><p>^</p></li>' +
					'<li>y</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
				'</ul>' +
				'<p>^&nbsp;</p>' +
				'<ul>' +
					'<li>y</li>' +
				'</ul>',

				true, 'List should be split.', true );
		},

		'test enterkey: force block: style (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<ul>' +
					'<li>x</li>' +
					'<li style="color:red;">^</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
				'</ul>' +
				'<div style="color:red;">^&nbsp;</div>',

				true, 'Style forces block.', true );
		},

		'test enterkey: force block: class (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<ul>' +
					'<li>x</li>' +
					'<li class="foo">^</li>' +
				'</ul>',

				'<ul>' +
					'<li>x</li>' +
				'</ul>' +
				'<div class="foo">^&nbsp;</div>',

				true, 'Class forces block.', true );
		},

		'test enterkey: force block: dir change (ENTER_BR)': function() {
			assertEnter( 'enterBR',
				'<div dir="rtl">' +
					'<ul dir="ltr">' +
						'<li>x</li>' +
						'<li>^</li>' +
					'</ul>' +
				'</div>',

				'<div dir="rtl">' +
					'<ul dir="ltr">' +
						'<li>x</li>' +
					'</ul>' +
					'<div dir="ltr">^&nbsp;</div>' +
				'</div>',

				true, 'Dir change forces block.', true );
		},
		// https://dev.ckeditor.com/ticket/11982
		'test enterkey: nested empty list': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'foo' +
						'<ul>' +
							'<li>^</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>foo</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'New item should be added to the list.', true );
		},

		// https://dev.ckeditor.com/ticket/11982
		'test enterkey: nested list with empty item': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'foo' +
						'<ul>' +
							'<li>bar</li>' +
							'<li>^</li>' +
						'</ul>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'foo' +
						'<ul>' +
							'<li>bar</li>' +
						'</ul>' +
					'</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'New item should be added to the list.', true );
		},

		// (#2205)
		'test enterkey: block p placeholder at the end': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'foo' +
						'<p>^</p>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'foo' +
					'</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'New item should be added to the list.', true );
		},

		// (#2205)
		'test enterkey: block p placeholder at the beginning': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'<p>^</p>' +
						'foo' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'foo' +
					'</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'New item should be added to the list.', true );
		},

		// (#2205)
		'test enterkey: block div placeholder at the beginning': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'<div>^</div>' +
						'foo' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'foo' +
					'</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'New item should be added to the list.', true );
		},

		// (#2205)
		'test enterkey: block div placeholder at the end': function() {
			assertEnter( 'enterP',
				'<ul>' +
					'<li>' +
						'foo' +
						'<div>^</div>' +
					'</li>' +
				'</ul>',

				'<ul>' +
					'<li>' +
						'foo' +
					'</li>' +
					'<li>^&nbsp;</li>' +
				'</ul>',

				true, 'New item should be added to the list.', true );
		}
	} );
} )();
