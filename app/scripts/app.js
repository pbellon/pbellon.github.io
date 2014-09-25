var neuPortfolio;

angular.module('pbellonPortfolio.config', ['ui.router']);

angular.module('pbellonPortfolio.controller', []);

neuPortfolio = angular.module('pbellonPortfolio', ['pbellonPortfolio.config', 'pbellonPortfolio.controller', 'ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'restangular', 'ui.router']);
