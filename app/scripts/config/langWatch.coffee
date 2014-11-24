angular.module('dummPortfolio.config').run [
    '$rootScope'
    '$state'
    '$translate'
    '$location'
    ($rootScope, $state, $translate, $location)->
        $rootScope.$on '$stateChangeSuccess', (ev, toState, toParams) ->
            lang = toParams.locale
            changeLang = 'en'
            $translate.use(lang)
            changeLang = 'fr' if lang is 'en'
            $rootScope.changeLang = changeLang
            $rootScope.changeLangURL = $location.absUrl().replace(lang, changeLang)
            return
]
