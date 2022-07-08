/* bender-tags: editor,utils */

'use strict';

bender.editors = {
	framed: {},
	inline: {
		creator: 'inline'
	}
};

bender.test( {
	'test': function() {
		assert.areSame( 2, CKEDITOR.tools.object.keys( this.editors ).length, 'this.editors' );
		assert.areSame( 2, CKEDITOR.tools.object.keys( this.editorBots ).length, 'this.editorBots' );
		assert.areSame( 2, CKEDITOR.tools.object.keys( bender.editors ).length, 'bender.editors' );
		assert.areSame( 2, CKEDITOR.tools.object.keys( bender.editorBots ).length, 'bender.editorBots' );
		assert.areSame( 'framed', bender.editors.framed.name );
		assert.areSame( 'inline', bender.editors.inline.name );
	}
} );
