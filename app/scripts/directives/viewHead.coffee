mod = angular.module('dummPortfolio.directives')
mod.directive( 'viewTitle', [
    '$rootScope'
    ($rootScope)->
        restrict: 'EA'
        link: (scope, iElement)->
            setViewTitle = (title)->
                $rootScope.viewTitle = title
                return
            # If we've been inserted as an element then we detach from the DOM because the caller
            # doesn't want us to have any visual impact in the document.
            # Otherwise, we're piggy-backing on an existing element so we'll just leave it alone.
            tagName = iElement[0].tagName.toLowerCase()
            if tagName == 'view-title' or tagName == 'viewtitle'
                iElement.remove()

            scope.$watch( ->
                    iElement.text()
                , setViewTitle
            )
            scope.$on '$destroy', ->
                delete $rootScope.viewTitle
])

mod.directive(
    'viewHead', ->
        head = angular.element(document.head)
        return {
            restrict: 'A'
            link: (scope, iElement)->
                # Move the element into the head of the document.
                # Although the physical location of the document changes, the element remains
                # bound to the scope in which it was declared, so it can refer to variables from
                # the view scope if necessary.
                head.append(iElement)

                # When the scope is destroyed, remove the element.
                # This is on the assumption that we're being used in some sort of view scope.
                # It doesn't make sense to use this directive outside of the view, and nor does it
                # make sense to use it inside other scope-creating directives like ng-repeat.
                scope.$on '$destroy', ->
                    iElement.remove()
        }
)
