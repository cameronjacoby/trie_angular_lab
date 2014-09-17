WordsControllers = angular.module("WordsControllers", [])

class WordsCtrl
  
  constructor: (@scope)->
    @greeting = "hello world!"

  sayHello: () ->
    "hello again!"

WordsControllers.controller("WordsCtrl", ["$scope", WordsCtrl])