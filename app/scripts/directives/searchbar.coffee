'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:searchbar
 # @description
 # # searchbar
###
angular.module 'invisionApp'
  .directive 'searchbar', ->
    restrict: 'EA'
    template: '<form class="search"><input class="search-input" type="text" /></form>'
    replace: true
    link: (scope, element, attrs) ->

