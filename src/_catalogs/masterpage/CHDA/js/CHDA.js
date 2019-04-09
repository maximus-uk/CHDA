// Activates the Carousel
$('.carousel').carousel({
  interval: 5000
})
  
// Activates Tooltips for Social Links
$('.tooltip-social').tooltip({
  selector: "a[data-toggle=tooltip]"
})

//var siteURL = _spPageContextInfo.webAbsoluteUrl;
//console.log("url="+siteURL);

var app = angular.module('chdaApp',[]);

app.controller('fdController', function($scope){
//    $scope.message='Welcome to the '+ +' Page';
});

// configure our routes
/*
app.config(function($locationProvider, $routeProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider

    // route for the home page
    .when('home.aspx', {
      templateUrl : '/sites/chda/it/sitepages/home.aspx',
      controller  : 'homeController'
    })

    // route for the knowledge page
    .when('home.aspx#knowledge', {
      templateUrl : '/sites/chda/it/sitepages/knowledge.html',
      controller  : 'knowledgeController'
    });
});

// create the controller and inject Angular's $scope
app.controller('homeController', function($scope) {
  // create a message to display in our view
  $scope.message = 'This is the front door team home page';
});

app.controller('knowledgeController', function($scope) {
  $scope.message = 'Welcome to the team knowledge library';
});
*/