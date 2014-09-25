# declaration of other app module
angular.module('dummPortfolio.config', ['ui.router'])
angular.module('dummPortfolio.controller', [])


neuPortfolio = angular.module('dummPortfolio', [
    'dummPortfolio.config'
    'dummPortfolio.controller'
    'ngAnimate'
    'ngCookies'
    'ngTouch'
    'ngSanitize'
    'restangular'
    'ui.router'
  ])
