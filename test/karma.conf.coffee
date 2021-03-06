# Karma configuration
# http://karma-runner.github.io/0.12/config/configuration-file.html
# Generated on 2015-02-10 using
# generator-karma 0.9.0

module.exports = (config) ->
  config.set
    # base path, that will be used to resolve files and exclude
    basePath: '../'

    # testing framework to use (jasmine/mocha/qunit/...)
    frameworks: ['jasmine']

    # list of files / patterns to load in the browser
    files: [
      # bower:js
      'bower_components/jquery/dist/jquery.js'
      'bower_components/angular/angular.js'
      'bower_components/angular-route/angular-route.js'
      'bower_components/angular-touch/angular-touch.js'
      'bower_components/underscore/underscore.js'
      'bower_components/get-style-property/get-style-property.js'
      'bower_components/get-size/get-size.js'
      'bower_components/eventie/eventie.js'
      'bower_components/doc-ready/doc-ready.js'
      'bower_components/eventEmitter/EventEmitter.js'
      'bower_components/matches-selector/matches-selector.js'
      'bower_components/outlayer/item.js'
      'bower_components/outlayer/outlayer.js'
      'bower_components/masonry/masonry.js'
      'bower_components/angular-sanitize/angular-sanitize.js'
      'bower_components/imagesloaded/imagesloaded.js'
      'bower_components/angular-mocks/angular-mocks.js'
      # endbower
      # bower:coffee
      # endbower
      'app/scripts/**/*.coffee'
      'test/mock/**/*.coffee'
      'test/spec/**/*.coffee'
    ],

    # list of files / patterns to exclude
    exclude: [
    ]

    # web server port
    port: 8080

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: [
      'PhantomJS'
    ]

    # Which plugins to enable
    plugins: [
      'karma-phantomjs-launcher',
      'karma-jasmine',
      'karma-coffee-preprocessor'
    ]

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false

    colors: true

    preprocessors: '**/*.coffee': ['coffee']

    # Uncomment the following lines if you are using grunt's server to run the tests
    # proxies: '/': 'http://localhost:9000/'
    # URL root prevent conflicts with the site root
    # urlRoot: '_karma_'
