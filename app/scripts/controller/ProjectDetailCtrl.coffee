class ProjectDetailCtrl
    constructor: (@scope, project)->
        @current = project

    @$inject: ['$scope', 'project']

angular.module('dummPortfolio.controller').controller 'ProjectDetailCtrl', ProjectDetailCtrl
