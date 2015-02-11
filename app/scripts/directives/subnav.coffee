'use strict'

###*
 # @ngdoc directive
 # @name invisionApp.directive:subnav
 # @description
 # # subnav
###
angular.module 'invisionApp'
  .directive 'subnav', ($rootScope) ->
    restrict: 'EA'
    replace: true
    templateUrl: 'views/subnav.html'
    link: (scope, element, attrs) ->
      scope.subnavitems = [{
        view: 'all'
        title: 'All Posts'
        active: true
      },{
        view: 'photos'
        title: 'Photos'
      },{
        view: 'videos'
        title: 'Videos'
      }]

      $rootScope.viewState = 'all'
      scope.changeView = (view, $event) ->
        current = _.findWhere scope.subnavitems, active: true
        next = _.findWhere scope.subnavitems, view: view
        next.active = true
        current.active = false
        $rootScope.viewState = view
