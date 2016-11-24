module.exports = function (grunt) {
  'use strict';

  // These plugins provide necessary tasks.
  //require('load-grunt-tasks')(grunt);
  //require('time-grunt')(grunt);

  grunt.loadNpmTasks('grunt-zombie');

  // --- Project configuration ---
  grunt.initConfig({

    zombie: {
      options: {
        targetfiles: "src/test/js/testfile.js"
      }
    },

    // --- Properties ---
    pkg: grunt.file.readJSON('package.json'),
    distDir: 'target/zombie',

    // --- Task configuration ---
    clean: {
      options: {
        force: true
      },
      build: ['<%=  distDir %>']
    }
  });

  // --- Tasks ---

  grunt.registerTask('build', ['zombie']);
  grunt.registerTask('default', ['build']);
};
