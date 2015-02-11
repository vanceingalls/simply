'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:header
 # @description
 # # header
###
angular.module 'invisionApp'
  .directive 'header', ->
    restrict: 'EA'
    templateUrl: 'views/header.html'
    replace: true
    link: (scope, element, attrs) ->
