'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:overlay
 # @description
 # # overlay
###
angular.module 'invisionApp'
  .directive 'overlay', ($rootScope) ->
    restrict: 'EA'
    templateUrl: 'views/overlay.html'
    transclude: true
    replace: true
    link: (scope, element, attrs) ->
      scope.close = -> $rootScope.overlayActive = false