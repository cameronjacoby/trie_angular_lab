WordsFactories = angular.module("WordsFactories", [])

WordsFactories.factory("Word", ["$http", ($http) ->
  return {
    all: () ->
      $http.get("/words.json")
    ,
    create: (word) ->
      $http.post("/words.json", {word: word})
  }
])