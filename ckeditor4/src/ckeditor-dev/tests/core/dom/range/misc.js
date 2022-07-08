/* bender-tags: editor,dom,range */

( function() {
	'use strict';

	var doc = CKEDITOR.document,
		html1 = document.getElementById( 'playground' ).innerHTML,
		html2 = document.getElementById( 'playground2' ).innerHTML;

	var tests = {
		setUp: function() {
			document.getElementById( 'playground' ).innerHTML = html1;
			document.getElementById( 'playground2' ).innerHTML = html2;
		},

		test__constructor: function() {
			var range = new CKEDITOR.dom.range( doc );

			assert.isNotNull( range, 'range must not be null' );

			assert.isNull( range.startContainer, 'startContainer must be null' );
			assert.isNull( range.startOffset, 'startOffset must be null' );
			assert.isNull( range.endContainer, 'endContainer must be null' );
			assert.isNull( range.endOffset, 'endOffset must be null' );

			assert.isTrue( range.collapsed, 'range must be collapsed' );
			assert.areSame( doc.getBody().$, range.root.$,
				'range boundary must default to body element' );

			var container = doc.getById( 'playground' );
			range = new CKEDITOR.dom.range( container );
			assert.areSame( container.$, range.root.$, 'range boundary element must match.' );
		},

		test_collapsed: function() {
			var range = new CKEDITOR.dom.range( doc );
			range.setStartAt( doc.getById( '_P' ), CKEDITOR.POSITION_AFTER_START );

			assert.isTrue( range.collapsed );
		},

		test_collapse: function() {
			var range = new CKEDITOR.dom.range( doc );
			range.setStartAt( doc.getById( '_Para' ), CKEDITOR.POSITION_AFTER_START );
			range.setEndAt( doc.getById( '_Span' ), CKEDITOR.POSITION_BEFORE_END );

			assert.areSame( document.getElementById( '_Para' ), range.startContainer.$, 'startContainer' );
			assert.areSame( document.getElementById( '_Span' ), range.endContainer.$, 'endContainer' );
			assert.isFalse( range.collapsed, 'collapsed' );

			range.collapse( true );

			assert.areSame( document.getElementById( '_Para' ), range.startContainer.$, 'startContainer' );
			assert.areSame( document.getElementById( '_Para' ), range.endContainer.$, 'endContainer' );
			assert.isTrue( range.collapsed, 'collapsed' );
		},

		test_selectNodeContents_Element: function() {
			var range = new CKEDITOR.dom.range( doc );

			// Test with an Element node.
			range.selectNodeContents( doc.getById( '_Para' ) );

			assert.areSame( document.getElementById( '_Para' ), range.startContainer.$, 'range.startContainer' );
			assert.areSame( 0, range.startOffset, 'range.startOffset' );
			assert.areSame( document.getElementById( '_Para' ), range.endContainer.$, 'range.endContainer' );
			assert.areSame( 3, range.endOffset, 'range.endOffset' );
			assert.isFalse( range.collapsed, 'range.collapsed' );
		},

		test_selectNodeContents_Text: function() {
			var range = new CKEDITOR.dom.range( doc );

			// Test with a Text node.
			range.selectNodeContents( doc.getById( '_Para' ).getFirst() );

			assert.areSame( document.getElementById( '_Para' ).firstChild, range.startContainer.$, 'range.startContainer' );
			assert.areSame( 0, range.startOffset, 'range.startOffset' );
			assert.areSame( document.getElementById( '_Para' ).firstChild, range.endContainer.$, 'range.endContainer' );
			assert.areSame( 8, range.endOffset, 'range.endOffset' );
			assert.isFalse( range.collapsed, 'range.collapsed' );
		},

		test_collapse_ToStart: function() {
			var range = new CKEDITOR.dom.range( doc );

			range.selectNodeContents( doc.getById( '_P' ) );
			range.collapse( true );

			assert.areSame( document.getElementById( '_P' ), range.startContainer.$, 'range.startContainer' );
			assert.areSame( 0, range.startOffset, 'range.startOffset' );
			assert.areSame( document.getElementById( '_P' ), range.endContainer.$, 'range.endContainer' );
			assert.areSame( 0, range.endOffset, 'range.endOffset' );
			assert.isTrue( range.collapsed, 'range.collapsed' );
		},

		test_collapse_ToEnd: function() {
			var range = new CKEDITOR.dom.range( doc );

			range.selectNodeContents( doc.getById( '_Para' ) );
			range.collapse( false );

			assert.areSame( document.getElementById( '_Para' ), range.startContainer.$, 'range.startContainer' );
			assert.areSame( 3, range.startOffset, 'range.startOffset' );
			assert.areSame( document.getElementById( '_Para' ), range.endContainer.$, 'range.endContainer' );
			assert.areSame( 3, range.endOffset, 'range.endOffset' );
			assert.isTrue( range.collapsed, 'range.collapsed' );
		},

		/**
		 *  Test trim with text range.
		 */
		test_trim: function() {
			var text = doc.getById( '_trim_ct' ).getFirst();
			var range = new CKEDITOR.dom.range( doc );
			range.setStart( text, 2 );
			range.setEnd( text, 6 );
			range.trim();

			assert.isFalse( range.collapsed );
			assert.isTrue( range.startContainer.equals( doc.getById( '_trim_ct' ) ) );
			assert.areEqual( range.startOffset, 1 );
			assert.isTrue( range.endContainer.equals( doc.getById( '_trim_ct' ) ) );
			assert.areEqual( range.endOffset, 2 );
		},

		/**
		 * Trim range which collapsed at text node boundary.
		 */
		test_trim_3790: function() {

			var ct = doc.getById( '_trim_ct' );
			ct.setHtml( '<span id="_SPAN1">text</span>' );

			// <span id="_SPAN1">text^</span>
			var range = new CKEDITOR.dom.range( doc );
			range.setStartAt( doc.getById( '_SPAN1' ).getFirst(), CKEDITOR.POSITION_BEFORE_END );
			range.collapse( true );
			range.trim( true );

			// <span id="_SPAN1">text^</span>
			assert.isTrue( range.collapsed );
			assert.areEqual( doc.getById( '_SPAN1' ).$, range.startContainer.$ );
			assert.areEqual( range.startOffset, 1 );
		},

		/**
		 * Trim range which collapsed inside text node.
		 */
		test_trim_3790_2: function() {

			var ct = doc.getById( '_trim_ct' );
			ct.setHtml( '<span id="_SPAN1">text</span>' );

			// <span id="_SPAN1">te^xt</span>
			var range = new CKEDITOR.dom.range( doc );
			range.setStart( doc.getById( '_SPAN1' ).getFirst(), 2 );
			range.collapse( true );
			range.trim( true );

			// <span id="_SPAN1">te^xt</span>
			assert.isTrue( range.collapsed );
			assert.areEqual( doc.getById( '_SPAN1' ).$, range.startContainer.$ );
			assert.areEqual( range.startOffset, 1 );
		},

		// Test enclosed node doesn't exist.
		test_enclosed_node: function() {
			var range = new CKEDITOR.dom.range( doc );
			range.setStart( doc.getById( '_enclosed' ), 1 );
			range.setEnd( doc.getById( '_enclosed_i' ), 1 );
			// <p> Test [<i>enclosed]</i> node.</p>

			assert.isNull( range.getEnclosedNode() );
		},

		// Test enclosed node doesn't exist.
		test_enclosed_node2: function() {
			var range = new CKEDITOR.dom.range( doc );
			range.setStart( doc.getById( '_enclosed' ).getLast(), 1 );
			range.setEnd( doc.getById( '_enclosed' ).getLast(), 5 );
			// <p> Test <i>enclosed</i> [node].</p>

			assert.isNull( range.getEnclosedNode() );
		},

		// Test enclosed node exist.
		test_enclosed_node3: function() {
			var range = new CKEDITOR.dom.range( doc );
			range.setStart( doc.getById( '_enclosed' ).getFirst(), 6 );
			range.setEnd( doc.getById( '_enclosed' ).getLast(), 0 );
			// <p> Test [<i>enclosed</i>] node.</p>

			assert.isTrue( doc.getById( '_enclosed_i' ).equals( range.getEnclosedNode() ) );
		},

		// Test getEnclosedNode returns text node (#2089).
		test_enclosed_node4: function() {
			var range = new CKEDITOR.dom.range( doc );
			range.setStart( doc.getById( '_enclosed_i' ).getFirst(), 0 );
			range.setEnd( doc.getById( '_enclosed_i' ).getLast(), 8 );
			// <p> Test <i>[enclosed]</i> node.</p>

			assert.areSame( doc.getById( '_enclosed_i' ).getFirst(), range.getEnclosedNode() );
		},

		/* Start of https://dev.ckeditor.com/ticket/6735 */

		'test checkReadOnly when both range boundaries are inside of read-only element': function() {
			var source = 'some <strong contenteditable="false"> sample [text</strong> and a <a href="javascript:void(0)" contenteditable="false">link]</a>',
			range = bender.tools.setHtmlWithRange( doc.getById( 'editable_playground' ), source )[ 0 ];
			assert.isTrue( range.checkReadOnly() );
		},

		'test checkReadOnly when only one range boundary is inside of read-only element': function() {
			var source = '<strong contenteditable="false"> some [sample</strong> text]',
			range = bender.tools.setHtmlWithRange( doc.getById( 'editable_playground' ), source )[ 0 ];
			assert.isTrue( range.checkReadOnly() );
		},

		'test checkReadOnly when entire range is inside of read-only element': function() {
			var source = 'some <strong contenteditable="false"> [sample text ]</strong>',
			range = bender.tools.setHtmlWithRange( doc.getById( 'editable_playground' ), source )[ 0 ];
			assert.isTrue( range.checkReadOnly() );
		},

		'test checkReadOnly when read-only element is enclosed within the range': function() {
			var source = '[some <strong contenteditable="false"> sample text </strong> and ]',
			range = bender.tools.setHtmlWithRange( doc.getById( 'editable_playground' ), source )[ 0 ];
			assert.isFalse( range.checkReadOnly() );
		},

		/* End of https://dev.ckeditor.com/ticket/6735 */

		'test checkReadOnly when entire range is enclosed in an editable element which is contained by another read-only element': function() {
			var source = 'some <strong contenteditable="false"> sample text and <a href="javascript:void(0)" contenteditable="true">a [link].</a></strong>',
			range = bender.tools.setHtmlWithRange( doc.getById( 'editable_playground' ), source )[ 0 ];
			assert.isFalse( range.checkReadOnly() );
		},

		'test removeEmptyBlocksAtEnd - at the beginning': function() {
			var source = '<div><div><p>[</p></div>te]xt</div>',
				playground = doc.getById( 'editable_playground' ),
				range = bender.tools.setHtmlWithRange( playground, source )[ 0 ];
			range.removeEmptyBlocksAtEnd();

			assert.areEqual( '<div>[te]xt</div>', bender.tools.getHtmlWithRanges( playground, new CKEDITOR.dom.rangeList( [ range ] ) ) );
		},

		'test removeEmptyBlocksAtEnd - at the end': function() {
			var source = '<div>te[xt<div><p>]</p></div></div>',
				playground = doc.getById( 'editable_playground' ),
				range = bender.tools.setHtmlWithRange( playground, source )[ 0 ];
			range.removeEmptyBlocksAtEnd( true );

			assert.areEqual( '<div>te[xt]</div>', bender.tools.getHtmlWithRanges( playground, new CKEDITOR.dom.rangeList( [ range ] ) ) );
		},

		'test removeEmptyBlocksAtEnd - leave non-empty': function() {
			var source = '<div>te[xt<div><p>]</p>x</div></div>',
				playground = doc.getById( 'editable_playground' ),
				range = bender.tools.setHtmlWithRange( playground, source )[ 0 ];
			range.removeEmptyBlocksAtEnd( true );

			assert.areEqual( '<div>te[xt<div>]x</div></div>', bender.tools.getHtmlWithRanges( playground, new CKEDITOR.dom.rangeList( [ range ] ) ) );
		},

		'test clone': function() {
			var range = new CKEDITOR.dom.range( doc );

			range.selectNodeContents( doc.getBody() );

			var range2 = range.clone();

			assert.areSame( range.root, range2.root, 'root' );
			assert.areSame( range.startContainer, range2.startContainer, 'startContainer' );
			assert.areSame( range.endContainer, range2.endContainer, 'endContainer' );
			assert.areSame( range.startOffset, range2.startOffset, 'startOffset' );
			assert.areSame( range.endOffset, range2.endOffset, 'endOffset' );
			assert.areSame( range.collapsed, range2.collapsed, 'collapsed' );
		},

		'test _setStartContainer': function() {
			var range = new CKEDITOR.dom.range( doc ),
				start = new CKEDITOR.dom.element( 'a', doc );

			doc.getBody().append( start );

			range._setStartContainer( start );
			assert.areSame( start, range.startContainer );
		},

		'test _setEndContainer': function() {
			var range = new CKEDITOR.dom.range( doc ),
				end = new CKEDITOR.dom.element( 'a', doc );

			doc.getBody().append( end );

			range._setEndContainer( end );
			assert.areSame( end, range.endContainer );
		},

		'test _getTableElement': function() {
			var range = new CKEDITOR.dom.range( doc );

			// Collapsed range inside td.
			range.setStart( doc.getById( '_td1' ).getFirst(), 1 );
			range.collapse();

			assert.isTrue( range._getTableElement().equals( doc.getById( '_td1' ) ), 'collapsed td' );

			// Collapsed range inside th.
			range = new CKEDITOR.dom.range( doc );
			range.setStart( doc.getById( '_th1' ).getFirst(), 1 );
			range.collapse();

			assert.isTrue( range._getTableElement().equals( doc.getById( '_th1' ) ), 'collapsed th' );

			// Normal range inside td.
			range = new CKEDITOR.dom.range( doc );
			range.selectNodeContents( doc.getById( '_td1' ).getFirst() );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_td1' ) ), 'inside td' );

			// Partial range inside td.
			range = new CKEDITOR.dom.range( doc );
			range.setStart( doc.getById( '_td1' ).getFirst(), 1 );
			range.setEnd( doc.getById( '_td1' ).getFirst(), 3 );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_td1' ) ), 'partial inside td' );

			// Selected cell.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_td1' ) );
			range.setEndAfter( doc.getById( '_td1' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_td1' ) ), 'selected td' );

			// Selected heading.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_th1' ) );
			range.setEndAfter( doc.getById( '_th1' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_th1' ) ), 'selected th' );

			// Selected thead.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_thead' ) );
			range.setEndAfter( doc.getById( '_thead' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_thead' ) ), 'selected thead' );

			// Selected tbody.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_tbody' ) );
			range.setEndAfter( doc.getById( '_tbody' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_tbody' ) ), 'selected tbody' );

			// Selected tfoot.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_tfoot' ) );
			range.setEndAfter( doc.getById( '_tfoot' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_tfoot' ) ), 'selected tfoot' );

			// Selected table.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_table1' ) );
			range.setEndAfter( doc.getById( '_table1' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_table1' ) ), 'selected table1' );

			// Selected two cells.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_td1' ) );
			range.setEndAfter( doc.getById( '_td2' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_td1' ) ), 'selected 2 tds and returns first of it' );

			// Selected two cells from different tables.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_td2' ) );
			range.setEndAfter( doc.getById( '_td3' ) );

			assert.isNull( range._getTableElement(), 'selected 2 tds from different tables' );

			// Selected two tables.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_table1' ) );
			range.setEndAfter( doc.getById( '_table2' ) );

			assert.isNull( range._getTableElement(), 'selected 2 tables' );

			// Selected paragraph.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_P' ) );
			range.setEndAfter( doc.getById( '_P' ) );

			assert.isNull( range._getTableElement(), 'selected paragraph' );

			// Special case in Safari: selecting cell inside one-cell table.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_td3' ) );
			range.setEndAfter( doc.getById( '_td3' ) );

			assert.isTrue( range._getTableElement().equals( doc.getById( '_td3' ) ), 'selected td in one-cell table' );

			// Filtering returned elements.
			range = new CKEDITOR.dom.range( doc );
			range.setStartBefore( doc.getById( '_td1' ) );
			range.setEndAfter( doc.getById( '_td1' ) );

			assert.isTrue( range._getTableElement( 'tbody' ).equals( doc.getById( '_tbody' ) ), 'filtering elements' );
		}
	};

	bender.test( tests );
} )();
