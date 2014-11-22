angular.module('dummPortfolio').run [
    '$rootScope'
    '$state'
    '$translate'
    'constants.globals'
    ($rootScope, $state, $translate, GLOBALS)->
        $rootScope.langUsed  = $translate.use
        $rootScope.lang = $translate.use()

        $rootScope.changeLang = ->
            if $rootScope.lang is 'fr'
                use  = 'en'
            else
                use = 'fr'

            $translate.use(use)
            $rootScope.$broadcast 'lang:changed', use

        $rootScope.$state = $state
        $rootScope.globals = ->
            GLOBALS
        return
]
