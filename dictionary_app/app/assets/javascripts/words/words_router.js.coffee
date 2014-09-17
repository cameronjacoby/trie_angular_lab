WordsRouter = angular.module("WordsRouter", [
  "ngRoute"
])

class Router
  
  constructor: (@routeProvider, @locationProvider) ->
    console.log("Initialized Router")
    console.log("Setting Up")
    @routeProvider
      .when "/",
        templateUrl: "/word_templates",
        controller: "WordsCtrl as words"

    @locationProvider.html5Mode(true)

WordsRouter.config(["$routeProvider", "$locationProvider", Router])

WordsRouter.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]