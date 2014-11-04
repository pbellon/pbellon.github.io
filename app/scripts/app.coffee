### global _:false ###
'use strict';

# declaration of other app module
angular.module('dummPortfolio.constants', [])
angular.module('dummPortfolio.services', ['dummPortfolio.constants', 'pascalprecht.translate'])
angular.module('dummPortfolio.config', ['ui.router', 'dummPortfolio.services'])
angular.module('dummPortfolio.controller', [])


neuPortfolio = angular.module('dummPortfolio', [
    'dummPortfolio.constants'
    'dummPortfolio.config'
    'dummPortfolio.controller'
    'dummPortfolio.services'
    'ngAnimate'
    'ngCookies'
    'ngTouch'
    'ngSanitize'
    'restangular'
    'ui.router'
    'btford.markdown'
    'pascalprecht.translate'
  ])

#= require_tree constants/
#= require_tree config/
#= require_tree controllers/
#= require_tree services/
