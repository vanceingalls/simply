'use strict'

###*
 # @ngdoc function
 # @name invisionApp.controller:PostsCtrl
 # @description
 # # PostsCtrl
 # Controller of the invisionApp
###
angular.module 'invisionApp'
  .controller 'PostsCtrl', ($scope, $timeout, $rootScope) ->
    $scope.posts = [{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!'
      picture: 'pic1'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'You have to see this bike. It will make your daily commute a absolute joy ride! vimeo.com/p/mV0PUrHRwQ/'
    },{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'My view this morning is simply beautiful... instagram.com/p/mV0PUrHRwQ/'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: '8 Apps to Turn Your Pipe Dreams Into Prototypes on.mash.to/1oubyu8'
      picture: 'pic2'
    },{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'Need some reading? 11 free ebooks for designers | Creative Bloq bit.ly/1lE5QDM via @netmag'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'Sponsor // Bootstrap Responsive Templates bit.ly/1qfjLOl #design'
      video: 'vid1'
    },{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'How to get animations out of your head. http://bit.ly/1q7BngO  Funny and useful.'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'Road trip!  bit.ly/1hkXFdK'
      video: 'vid2'
    },{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'Thoughtful brand decisions vs. emotional brand decisions.  ow.ly/vtT2i'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'My view this morning is simply beautiful'
    },{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
    },{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'My view this morning is simply beautiful'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
      video: 'vid2'
    },{
      avatar: 'sam'
      name: 'Sam Soffes'
      post: 'How to Get Inspired: the Right Way - Designmodo bit.ly/1lE4uJc Good stuff from @designmodo!'
    },{
      avatar: 'sam'
      name: 'Meg Robichaud'
      post: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
    }]

    # massage data
    age = 1
    _.each $scope.posts, (post) ->
      # fake the age
      post.age = age
      age += Math.ceil(Math.random() * 5)

      # autolink
      linkRE = /(^|\s)(\w*\.\w+(\/\w*)*)/g
      userRE = /(^|\s)@(\w*)/g
      topicRE = /(^|\s)#(\w*)/g

      post.post = post.post.replace linkRE, '$1<a href="http://$2" target="_blank">$2</a>'
      post.post = post.post.replace userRE, '$1<a href="user/$2">@$2</a>'
      post.post = post.post.replace topicRE, '$1<a href="topic/$2">#$2</a>'

    # i understand how incredibly ugly this timeout is and hope this isn't a deal breaker
    waitFor = (condition, fn)=>
      if condition()
        fn()
      else
        $timeout ->
          waitFor condition, fn
        , 100

    msnry = null
    waitFor ->
      posts = $scope.posts.length
      $('.post').length == posts
    , =>
      container = document.querySelector('.posts')

      msnry = new Masonry container,
        # options...
        itemSelector: '.post'
        gutter: 26

      # initialize Masonry after all images have loaded
      $('.posts').imagesLoaded -> msnry.layout()

    $scope.mode = (post) ->
      state = $rootScope.viewState
      show = state == 'all' or (state == 'photos' and post.picture) or (state == 'videos' and post.video)
      $timeout ->
        msnry and msnry.layout()
      , 500

      return show
