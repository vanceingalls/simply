'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:avatar
 # @description
 # # avatar
###
angular.module 'invisionApp'
  .directive 'avatar', ->
    restrict: 'EA'
    templateUrl: 'views/avatar.html'
    replace: true
    link: (scope, element, attrs) ->
      scope.navitems = [{
        href: 'profile'
        title: 'Profile'
      },{
        href: 'followers'
        title: 'Followers'
      },{
        href: 'following'
        title: 'Following'
      },{
        href: 'settings'
        title: 'Settings'
      }]

      scope.toggleState = false
      scope.toggle = -> scope.toggleState = !scope.toggleState