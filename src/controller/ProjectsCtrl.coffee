class ProjectsCtrl
    @$inject: ['$scope']
    constructor: (@scope)->
        # stuff stuff
        @scope.projects = [
            {
                title: 'Detective.io'
                link: 'https://detective.io'
                short_description: """
                Detective description
                """
                github: "https://github.com/jplusplus/detective.io/"
            },
            {
                title: 'SpendingStories'
                link: 'https://spendingstories.org'
                short_description: """
                SpendingStories description
                """
            },
        ]



angular.module('dummPortfolio.controller').controller 'ProjectsCtrl', ProjectsCtrl
