class ContactCtrl
    constructor: ($scope)->
        @scope = $scope
        @email = 'mailto:bellon.pierre@gmail.com'


angular.module('dummPortfolio.controller').controller 'ContactCtrl', ContactCtrl
