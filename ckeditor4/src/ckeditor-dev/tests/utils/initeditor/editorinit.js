/* bender-tags: editor,utils */

'use strict';

bender.editor = {
	name: 'foo'
};

bender.test( {
	'init': function() {
		assert.areSame( 'foo', this.editor.name, 'Editor name.' );
	},

	'test': function() {
		assert.areSame( 'foo', this.editor.name, 'this.editor' );
		assert.areSame( 'foo', this.editorBot.editor.name, 'this.editorBot' );
		assert.areSame( 'foo', bender.editor.name, 'bender.editor' );
	}
} );
