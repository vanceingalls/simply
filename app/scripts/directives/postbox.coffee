'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:postbox
 # @description
 # # postbox
###
angular.module 'invisionApp'
  .directive 'postbox', ->
    restrict: 'EA'
    replace: true
    templateUrl: 'views/postbox.html'
    link: (scope, element, attrs) ->
