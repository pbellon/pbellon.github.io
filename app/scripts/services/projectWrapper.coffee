
angular.module('dummPortfolio.services').service 'services.projectWrapper',
    ['constants.projects', (PROJECTS)->
        wrap =  (project)->
            i18nPrefix = (project)->  'MODELS.PROJECTS.' + project.id
            i18nAttrKey  = (project, ATTR)-> i18nPrefix(project) + '.' + ATTR

            return _.extend project, {
                title: -> i18nAttrKey(this, 'TITLE')
                subtitle: -> i18nAttrKey(this, 'SUBTITLE')
                description: -> i18nAttrKey(this, 'DESCRIPTION')
            }

        wrapList: -> _.map PROJECTS.all, wrap
    ]
