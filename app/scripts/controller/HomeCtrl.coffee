class HomeCtrl
    constructor: ($scope)->
        $scope.hello = 'world'

angular.module('dummPortfolio.controller').controller 'HomeCtrl', HomeCtrl
