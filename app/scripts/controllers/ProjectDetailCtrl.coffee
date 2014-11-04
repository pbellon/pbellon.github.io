class ProjectDetailCtrl
    constructor: (@translate, @scope, @state, project)->
        @current = project
        @translate(@current.title()).then (v)=>
            i18nK = 'TEMPLATES.PROJECTS.DETAIL.SEE_WEBSITE'
            @translate(i18nK,{title: v}).then (title)=>
                @scope.seeWebsite = title
                return

    searchTag: (tag)->
        @state.go 'projects.list', {tags:tag}

    @$inject: ['$translate', '$scope', '$state', 'project']

angular.module('dummPortfolio.controller').controller 'ProjectDetailCtrl', ProjectDetailCtrl
