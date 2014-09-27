'use strict'

class ProjectDetailCtrl
    @$inject: ['$scope', 'project']
    constructor: (@scope, project)->
        @current = project

angular.module('dummPortfolio.controller').controller 'ProjectDetailCtrl', ProjectDetailCtrl
