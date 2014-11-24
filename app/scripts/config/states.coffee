angular.module('dummPortfolio.config').config [
    '$stateProvider'
    '$urlRouterProvider'
    '$locationProvider'
    ($stateProvider, $urlRouterProvider, $locationProvider)->
        $locationProvider.hashPrefix '!'
        $stateProvider.state('portfolio',
            url: '/{locale}'
            abstract: true
            template: '<div ui-view></div>'
        )
        .state('portfolio.home',
            url: ''
            templateUrl: 'partials/home.html'
            controller: 'HomeCtrl'
        )
        .state('portfolio.contact'
            url: '/contact'
            templateUrl: 'partials/contact.html'
            controller: 'ContactCtrl as contact'
        )
        .state('portfolio.projects'
            template: '<div ui-view></div>'
            url: '/projects'
            abstract: true
            resolve:
                tags: ['$stateParams', (params)->
                    if params.tags
                        return params.tags.split(',')
                    else
                        return []
                ]
                projects: ['services.projectWrapper', (wrapper)->
                    do wrapper.wrapList
                ]
        )
        .state('portfolio.projects.list'
            url: '?tags'
            templateUrl: 'partials/projects.list.html'
            controller: 'ProjectListCtrl as projects'
        )
        .state('portfolio.projects.detail'
            url: '/:id'
            templateUrl: 'partials/projects.detail.html'
            controller: 'ProjectDetailCtrl as project'
            resolve:
                project: (projects, $stateParams)->
                    _.findWhere(projects, id: parseInt $stateParams.id)
        )
        .state('portfolio.resume',
            url: '/resume'
            controller: 'ResumeCtrl'
            templateUrl: 'partials/resume.html'
        )
        $urlRouterProvider.otherwise('/en')
]
