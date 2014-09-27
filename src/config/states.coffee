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
        .state('contact'
            url: '/contact'
            templateUrl: 'partials/contact.html'
            controller: 'ContactCtrl'
        )
        .state('projects'
            template: '<div ui-view></div>'
            url: '/projects'
            abstract: true
            resolve:
                projects: ['constants.projects', (PROJECTS)->
                    PROJECTS.all
                ]
        )
        .state('projects.list'
            url: ''
            templateUrl: 'partials/projects.list.html'
            controller: 'ProjectsCtrl as projects'
        )
        .state('projects.detail'
            url: '/:id'
            templateUrl: 'partials/projects.detail.html'
            controller: 'ProjectDetailCtrl as project'
            resolve:
                project: (projects, $stateParams)->
                    _.findWhere(projects, id: parseInt $stateParams.id)
        )
        $urlRouterProvider.otherwise('/home')
]
