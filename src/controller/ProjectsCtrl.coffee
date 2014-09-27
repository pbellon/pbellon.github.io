class ProjectsCtrl
    @$inject: ['projects']

    constructor: (PROJECTS)->
        @list = PROJECTS

    all: => @list

    count: =>
        @all().length





angular.module('dummPortfolio.controller').controller 'ProjectsCtrl', ProjectsCtrl
