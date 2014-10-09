class ProjectListCtrl
    constructor: (PROJECTS, @selectedTags)->
        console.log 'received selectedTags: ', @selectedTags
        @list = PROJECTS

    all: => @list

    filteredProjects: =>
        filtered = _.where @all(), (project)=>
            if @selectedTags.length > 0
                _.every @selectedTags, (tag)-> _.contains project.tags, tag
            else
                true

        console.log 'filteredProjects:', filtered
        filtered

    count: => @all().length

    unselectTag: (tag)=>
        @selectedTags = _.reject @selectedTags, (v)-> v == tag
        @selectedTags

    selectTag: (tag)=>
        console.log 'selectTag: ', tag

        if @selectedTags.indexOf(tag) is -1
            console.log 'pushing tag !'
            @selectedTags.push tag

        console.log @selectedTags

    @$inject: ['projects', 'tags']






angular.module('dummPortfolio.controller').controller 'ProjectListCtrl', ProjectListCtrl
