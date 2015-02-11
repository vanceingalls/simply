'use strict'

describe 'Directive: postbox', ->

  # load the directive's module
  beforeEach module 'invisionApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<postbox></postbox>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the postbox directive'
