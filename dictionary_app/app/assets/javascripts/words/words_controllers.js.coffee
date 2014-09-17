WordsControllers = angular.module("WordsControllers", [])

class WordsCtrl
  
  constructor: ($scope, @Word, @Trie) ->
    @greeting = "Hello world"
    @Word.all().success (data) ->
      $scope.wordList = data
    @Trie.hello()

  addWord: (word) ->
    @Word.create(word).success (data) ->
      console.log(data)

WordsControllers.controller("WordsCtrl", ["$scope", "Word", "Trie", WordsCtrl])