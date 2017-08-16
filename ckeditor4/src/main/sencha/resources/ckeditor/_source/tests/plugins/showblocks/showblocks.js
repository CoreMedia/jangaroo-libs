/* bender-tags: editor,unit */
/* bender-ckeditor-plugins: showblocks */

bender.editor = true;

bender.test(
{
	// http://dev.ckeditor.com/ticket/4355
	'test command exec not require editor focus': function() {
		var bot = this.editorBot, editor = this.editor;

		var focused = false;
		editor.on( 'focus', function() {
			focused = true;
		} );

		bot.execCommand( 'showblocks' );
		assert.isFalse( focused );
	}
} );