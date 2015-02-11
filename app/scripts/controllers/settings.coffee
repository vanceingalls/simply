'use strict'

###*
 # @ngdoc function
 # @name invisionApp.controller:SettingsCtrl
 # @description
 # # SettingsCtrl
 # Controller of the invisionApp
###
angular.module 'invisionApp'
  .controller 'SettingsCtrl', ($scope) ->
    $scope.user =
      name: 'Jessica Tuan'
      email: 'jessica@mail.com'
      password: 'password01'
      image: '/images/avatars/jessica.png'

    $scope.notifications = [{
      text: 'email me when my posts are marked as favorites'
      value: true
    },{
      text: 'email me when I’m mentioned'
      value: true
    },{
      text: 'email me when I get a reply'
      value: true
    },{
      text: 'email me when someone follows me'
      value: false
    }]

    $scope.privacy = [{
      text: 'allow anyone to tag me'
      value: true
    },{
      text: 'only allow people I follow to tag me'
      value: false
    },{
      text: 'don’t allow anyone to tag me'
      value: false
    },{
      text: 'add a  location to my posts'
      value: true
    },{
      text: 'let others find me by my email address'
      value: true
    },{
      text: 'tailor ads based on my information'
      value: true
    }]