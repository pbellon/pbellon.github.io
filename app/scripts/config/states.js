angular.module('pbellonPortfolio.config').config([
  '$stateProvider', '$urlRouterProvider', '$locationProvider', function($stateProvider, $urlRouterProvider, $locationProvider) {
    $stateProvider.state('home', {
      url: '/home',
      templateUrl: 'partials/home.html',
      controller: 'HomeCtrl'
    }).state('projects', {
      url: '/projects',
      templateUrl: 'partials/projects.html',
      controller: 'ProjectsCtrl'
    }).state('contact', {
      url: '/contact',
      templateUrl: 'partials/contact.html',
      controller: 'ContactCtrl'
    });
    return $urlRouterProvider.otherwise('/home');
  }
]);
