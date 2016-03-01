#global module:false

"use strict"

module.exports = (grunt) ->
    grunt.loadNpmTasks "grunt-bower-task"
    grunt.loadNpmTasks "grunt-contrib-copy"

    grunt.initConfig

        copy:
            jquery:
                files: [{
                    expand: true
                    cwd: "bower_components/jquery/dist/"
                    src: "jquery.min.js"
                    dest: "vendor/js/"
                    }]

    grunt.registerTask "build", [
        "copy"
    ]

    grunt.registerTask "default", [
        "build"
    ]
