var HomeCtrl;

HomeCtrl = (function() {
  function HomeCtrl($scope) {
    $scope.hello = 'world';
  }

  return HomeCtrl;

})();

angular.module('pbellonPortfolio.controller').controller('HomeCtrl', HomeCtrl);
