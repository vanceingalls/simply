'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:messages
 # @description
 # # messages
###
angular.module 'invisionApp'
  .directive 'messages', ($rootScope) ->
    restrict: 'EA'
    template: '<div class="messages" ng-click="compose()"></div>'
    replace: true
    link: (scope, element, attrs) ->
      scope.compose = -> $rootScope.overlayActive = true