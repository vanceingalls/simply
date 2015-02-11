'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:addmedia
 # @description
 # # addmedia
###
angular.module 'invisionApp'
  .directive 'addmedia', ->
    restrict: 'EA'
    templateUrl: 'views/addmedia.html'
    replace: true
    link: (scope, element, attrs) ->
