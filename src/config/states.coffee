angular.module('dummPortfolio.config').config [
    '$stateProvider'
    '$urlRouterProvider'
    '$locationProvider'
    ($stateProvider, $urlRouterProvider, $locationProvider)->
        $stateProvider.state('home',
            url: '/home'
            templateUrl: 'partials/home.html'
            controller: 'HomeCtrl'
        )
        .state('projects'
            url: '/projects'
            templateUrl: 'partials/projects.html'
            controller: 'ProjectsCtrl'
        )
        .state('contact'
            url: '/contact'
            templateUrl: 'partials/contact.html'
            controller: 'ContactCtrl'
        )
        $urlRouterProvider.otherwise('/home')
]
