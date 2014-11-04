angular.module('dummPortfolio.config').config [
    '$stateProvider'
    '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider)->
        $stateProvider.state('home',
            url: '/home'
            templateUrl: 'partials/home.html'
            controller: 'HomeCtrl'
        )
        .state('contact'
            url: '/contact'
            templateUrl: 'partials/contact.html'
            controller: 'ContactCtrl as contact'
        )
        .state('projects'
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
        .state('projects.list'
            url: '?tags'
            templateUrl: 'partials/projects.list.html'
            controller: 'ProjectListCtrl as projects'
        )
        .state('projects.detail'
            url: '/:id'
            templateUrl: 'partials/projects.detail.html'
            controller: 'ProjectDetailCtrl as project'
            resolve:
                project: (projects, $stateParams)->
                    _.findWhere(projects, id: parseInt $stateParams.id)
        )
        .state('resume',
            url: '/resume'
            controller: 'ResumeCtrl'
            templateUrl: 'partials/resume.html'
        )
        $urlRouterProvider.otherwise('/home')
]
