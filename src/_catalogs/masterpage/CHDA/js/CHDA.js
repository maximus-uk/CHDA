// Activates the Carousel
$('.carousel').carousel({
  interval: 5000
})
  
// Activates Tooltips for Social Links
$('.tooltip-social').tooltip({
  selector: "a[data-toggle=tooltip]"
})

// create the module and name it scotchApp
var app = angular.module('chdaApp',['ngRoute']);

app.controller('fdController', function($scope){
  $scope.message='Knowledge Page';
});

// configure our routes
app.config(function($routeProvider) {
  $routeProvider

    // route for the home page
    .when('/', {
      templateUrl : 'sitepages/home.html',
      controller  : 'homeController'
    })

    // route for the knowledge page
    .when('/knowledge', {
      templateUrl : 'sitepages/knowledge.html',
      controller  : 'knowledgeController'
    });
});

// create the controller and inject Angular's $scope
scotchApp.controller('homeController', function($scope) {
  // create a message to display in our view
  $scope.message = 'Everyone come and see how good I look!';
});

scotchApp.controller('knowledgeController', function($scope) {
  $scope.message = 'Look! I am an  page.';
});