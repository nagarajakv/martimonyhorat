'use strict';

var main_app = angular.module('main_app', [
    'ngRoute',
    'ui.router'
]);

main_app.config(function($routeProvider) {
  $routeProvider
  .when("/", {
    templateUrl : "html/signin.html",
	controller: "SignInController"
  })
  .when("/home", {
    templateUrl : "html/home.html",
	controller: "HomeController"
  })
  .when("/user", {
    templateUrl : "html/user.html",
	controller : "UserController"
  })
  .when("/forgot", {
    templateUrl : "html/forgot.html",
	controller : "ForgotController"
  });
  //.otherwise({redirectTo: '/'});
  
  
});