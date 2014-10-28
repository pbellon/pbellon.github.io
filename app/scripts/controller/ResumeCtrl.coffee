class ResumeCtrl

    constructor: (@scope, @global, @resume)->
        @scope.email = @global.email
        @scope.github = @global.github
        @scope.twitter = @global.twitter
        @scope.mailtoEmail = 'mailto:'+ @global.email
        @scope.resume = @resume

    @$inject: [ '$scope', 'constants.global', 'constants.resume' ]


angular.module('dummPortfolio').controller 'ResumeCtrl', ResumeCtrl
