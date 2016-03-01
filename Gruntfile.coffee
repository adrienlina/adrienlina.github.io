#global module:false

"use strict"

module.exports = (grunt) ->
    grunt.loadNpmTasks "grunt-bower-task"
    grunt.loadNpmTasks "grunt-contrib-copy"

    grunt.initConfig

        copy:
            bootstrap:
                files: [{
                    expand: true
                    cwd: "bower_components/bootstrap/dist/css/"
                    src: "bootstrap.min.css"
                    dest: "vendor/css/"
                },
                {
                    expand: true
                    cwd: "bower_components/bootstrap/dist/js/"
                    src: "bootstrap.min.js"
                    dest: "vendor/js/"
                },
                {
                    expand: true
                    cwd: "bower_components/bootstrap/dist/fonts/"
                    src: "*"
                    dest: "vendor/fonts/"
                }]
            jquery:
                files: [{
                    expand: true
                    cwd: "bower_components/jquery/dist/"
                    src: "jquery.min.js"
                    dest: "vendor/js/"
                }]
            angular:
                files: [{
                    expand: true
                    cwd: "bower_components/angular/"
                    src: "angular.min.js"
                    dest: "vendor/js/"
                }]


    grunt.registerTask "build", [
        "copy"
    ]

    grunt.registerTask "default", [
        "build"
    ]
