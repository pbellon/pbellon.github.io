class ResumeCtrl

    constructor: (@scope, @globals, @resume)->
        @scope.email = @globals.email
        @scope.github = @globals.github
        @scope.twitter = @globals.twitter
        @scope.mailtoEmail = 'mailto:'+ @globals.email
        @scope.resume = @resume

    @$inject: [ '$scope', 'constants.globals', 'constants.resume' ]


angular.module('dummPortfolio').controller 'ResumeCtrl', ResumeCtrl
