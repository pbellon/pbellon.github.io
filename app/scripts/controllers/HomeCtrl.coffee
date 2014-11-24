class HomeCtrl
    constructor: ($scope)->
        $scope.hello = 'world'
        console.log 'HomeCtrl activated'

angular.module('dummPortfolio.controller').controller 'HomeCtrl', HomeCtrl
