describe "HomeController", ->
  ctrl  = null
  scope = null

  setupController = ->
    inject ($controller, $rootScope)->
      scope = $rootScope.$new()
      ctrl = $controller 'HomeController as _',
                         $scope: scope

  beforeEach module("alms")
  beforeEach setupController()

  it 'defaults to no sections', ->
    expect(scope._.sections).toNgEqual([])