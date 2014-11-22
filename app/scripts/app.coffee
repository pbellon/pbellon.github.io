### global _:false ###
### global document:false ###
'use strict';

# declaration of other app module
angular.module('dummPortfolio.constants', [])
angular.module('dummPortfolio.services', ['dummPortfolio.constants', 'pascalprecht.translate'])
angular.module('dummPortfolio.config', ['ui.router', 'dummPortfolio.services'])
angular.module('dummPortfolio.controller', [])
angular.module('dummPortfolio.directives', ['ng'])


neuPortfolio = angular.module('dummPortfolio', [
    'dummPortfolio.constants'
    'dummPortfolio.config'
    'dummPortfolio.controller'
    'dummPortfolio.services'
    'dummPortfolio.directives'
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
#= require_tree directives/
#= require_tree services/
