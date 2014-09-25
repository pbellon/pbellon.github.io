var ProjectsCtrl;

ProjectsCtrl = (function() {
  ProjectsCtrl.$inject = ['$scope'];

  function ProjectsCtrl(scope) {
    this.scope = scope;
    this.scope.projects = [
      {
        title: 'Detective.io',
        link: 'https://detective.io',
        short_description: "Detective description",
        github: "https://github.com/jplusplus/detective.io/"
      }, {
        title: 'SpendingStories',
        link: 'https://spendingstories.org',
        short_description: "SpendingStories description"
      }
    ];
  }

  return ProjectsCtrl;

})();

angular.module('pbellonPortfolio.controller').controller('ProjectsCtrl', ProjectsCtrl);
