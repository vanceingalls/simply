'use strict'

###*
 # @ngdoc overview
 # @name invisionApp
 # @description
 # # invisionApp
 #
 # Main module of the application.
###
angular
  .module 'invisionApp', [
    'ngRoute',
    'ngTouch',
    'ngSanitize'
  ]
  .config ($routeProvider, $locationProvider) ->
    # use history push state for clean urls
    $locationProvider.html5Mode true

    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/settings',
        templateUrl: 'views/settings.html'
        controller: 'SettingsCtrl'
      .otherwise
        redirectTo: '/'