class ProjectDetailCtrl
    constructor: (@scope, @state, project)->
        @current = project

    searchTag: (tag)->
        @state.go 'projects.list', {tags:tag}

    @$inject: ['$scope', '$state', 'project']

angular.module('dummPortfolio.controller').controller 'ProjectDetailCtrl', ProjectDetailCtrl
