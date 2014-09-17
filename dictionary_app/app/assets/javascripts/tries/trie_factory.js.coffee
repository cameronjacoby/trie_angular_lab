TrieFactory = angular.module("TrieFactory", [])

TrieFactory.factory("Trie", [ () ->
  return {
    hello: () ->
      console.log('I AM A TRIE!!!!!')
  }
])