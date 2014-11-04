class ProjectListCtrl
    constructor: (PROJECTS, @selectedTags)->
        @list = PROJECTS

    all: => @list

    filteredProjects: =>
        filtered = _.where @all(), (project)=>
            if @selectedTags.length > 0
                _.every @selectedTags, (tag)-> _.contains project.tags, tag
            else
                true
        filtered

    count: => @all().length

    hasSelectedTags: => @selectedTags.length > 0

    unselectTag: (tag)=>
        @selectedTags = _.reject @selectedTags, (v)-> v == tag
        @selectedTags

    selectTag: (tag)=>
        if @selectedTags.indexOf(tag) is -1
            @selectedTags.push tag

    @$inject: ['projects', 'tags']

angular.module('dummPortfolio.controller').controller 'ProjectListCtrl', ProjectListCtrl
