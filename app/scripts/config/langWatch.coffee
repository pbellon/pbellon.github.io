angular.module('dummPortfolio.config').run [ '$rootScope', '$location', '$translate', ($rootScope, $location, $translate)->
    $rootScope.$on '$stateChangeSuccess', ->
        lang = $location.search().lang
        if $location.search().hasOwnProperty 'lang'
            $translate.use(lang)
        else
            $location.search lang:$translate.use()



    $rootScope.$on 'lang:changed', (e, lang)->
        $rootScope.lang = lang
        $location.search(lang: lang)
]
