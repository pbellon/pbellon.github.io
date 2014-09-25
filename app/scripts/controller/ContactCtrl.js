var ContactCtrl;

ContactCtrl = (function() {
  function ContactCtrl($scope) {
    this.scope = $scope;
  }

  return ContactCtrl;

})();

angular.module('pbellonPortfolio.controller').controller('ContactCtrl', ContactCtrl);
