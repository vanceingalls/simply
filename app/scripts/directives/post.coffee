'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:post
 # @description
 # # post
###
angular.module 'invisionApp'
  .directive 'post', ->
    restrict: 'E'
    templateUrl: 'views/post.html'
    replace: true
    scope: {
      post: '='
    }
    link: (scope, element, attrs) ->
