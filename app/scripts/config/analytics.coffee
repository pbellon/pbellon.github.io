angular.module('dummPortfolio.config').run [ '$rootScope', '$location', '$window', ($rootScope, $location, $window)->
        $rootScope.$on '$stateChangeSuccess', ->
            return if not $window.ga
            $window.ga 'send', 'pageview', page: $location.path()
]
