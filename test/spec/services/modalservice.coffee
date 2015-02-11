'use strict'

describe 'Service: modalService', ->

  # load the service's module
  beforeEach module 'invisionApp'

  # instantiate service
  modalService = {}
  beforeEach inject (_modalService_) ->
    modalService = _modalService_

  it 'should do something', ->
    expect(!!modalService).toBe true
