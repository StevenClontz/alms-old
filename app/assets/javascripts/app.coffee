almsApp = angular.module('alms',[
  'templates', # angular-rails-templates
  'ui.router', # ui-router
  'alms.controllers', # alms controllers

]).config(['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->

  # For any unmatched url, redirect to /
  $urlRouterProvider.otherwise("/")

  # Set up the states
  $stateProvider
    .state('home',
      url: "/"
      templateUrl: "home.html"
      controller: "HomeController as _"
    )
    .state('state1',
      url: "/example1"
      templateUrl: "state1.html"
      controller: "State1Controller as _"
    )
    .state('state2',
      url: "/example2"
      templateUrl: "state2.html"
      controller: "State2Controller as _"
    )
])


almsControllers = angular.module('alms.controllers',[
]).controller("HomeController", [
  ->
    @foo = 'bar'
]).controller("State1Controller", [
  ->
    @foo = 'baz'
]).controller("State2Controller", [
  ->
    @foo = 'oof'
])