# declaration of other app module
angular.module('dummPortfolio.constants', [])
angular.module('dummPortfolio.config', ['ui.router'])
angular.module('dummPortfolio.controller', [])


neuPortfolio = angular.module('dummPortfolio', [
    'dummPortfolio.constants'
    'dummPortfolio.config'
    'dummPortfolio.controller'
    'ngAnimate'
    'ngCookies'
    'ngTouch'
    'ngSanitize'
    'restangular'
    'ui.router'
  ])
