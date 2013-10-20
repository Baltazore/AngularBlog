#= require_self
#= require_tree ./services/global
#= require_tree ./services/main
#= require_tree ./filters/global
#= require_tree ./filters/main
#= require_tree ./controllers/global
#= require_tree ./controllers/main
#= require_tree ./directives/global
#= require_tree ./directives/main

# Creates new Angular module called 'Blog'
Blog = angular.module('Blog', [])

# Sets up routing
Blog.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/post/:postId', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

])
