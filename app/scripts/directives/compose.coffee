'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:compose
 # @description
 # # compose
###
angular.module 'invisionApp'
  .directive 'compose', ->
    restrict: 'EA'
    templateUrl: 'views/compose.html'
    link: (scope, element, attrs) ->
      scope.postmessage = -> console.log 'message posted'
