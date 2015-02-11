'use strict'

describe 'Directive: searchbar', ->

  # load the directive's module
  beforeEach module 'invisionApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<searchbar></searchbar>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the searchbar directive'
