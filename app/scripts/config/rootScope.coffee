angular.module('dummPortfolio').run [
    '$rootScope'
    '$state'
    'constants.globals'
    ($rootScope, $state, GLOBALS)->
        $rootScope.$state = $state
        $rootScope.globals = ->
            GLOBALS
]
