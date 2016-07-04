//= wrapped
//= require_self
//= require_tree services
//= require_tree controllers
//= require_tree directives
//= require_tree templates
//= require /app/core/services/appService

angular.module("app.index", [
    "app.core",
    "ngAnimate",
    "ngRoute",
    "ngResource",
    "ngProgress",
    "ui.bootstrap.dropdown",
    "ui.bootstrap.collapse",
    "ui.bootstrap"
]).
config(function ($routeProvider) {
    $routeProvider.when('/',{
        templateUrl: '/assets/app/index/templates/landing/index.gsp'
    })
    .when('/login',{
        templateUrl:'/assets/app/index/templates/login/index.gsp'
    })
    .when('/configuration',{
        templateUrl:'/assets/app/index/templates/template/form.gsp'
    })
    .otherwise({redirecTo:'/'})
});
