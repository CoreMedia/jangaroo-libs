/* jshint node: true */

'use strict';

var tools = require( './utils/tools' );

module.exports = function( grunt ) {
	tools.setupMultitaskConfig( grunt, {
		task: 'jscs',
		defaultOptions: grunt.file.readJSON( '.jscsrc' ),
		addGitIgnore: 'excludeFiles',
		targets: {
			all: function() {
				return [ '**/*.js' ];
			},

			git: function() {
				return tools.getGitDirtyFiles( true ).filter( function( file ) {
					return ( /\.js$/ ).test( file );
				} );
			}
		}
	} );

	grunt.loadNpmTasks( 'grunt-jscs' );
};
