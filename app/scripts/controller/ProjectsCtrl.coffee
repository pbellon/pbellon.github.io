class ProjectsCtrl
    constructor: (PROJECTS)->
        @list = PROJECTS

    all: => @list

    count: =>
        @all().length

    @$inject: ['projects']




angular.module('dummPortfolio.controller').controller 'ProjectsCtrl', ProjectsCtrl
