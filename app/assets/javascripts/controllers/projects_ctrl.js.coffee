@ProjectsCtrl = ($scope, Project)->
  $scope.projects = Project.query()

  $scope.newProject = new Project
  $scope.submitNewProject = ->
    $scope.newProject.$save ->
      $scope.projects = Project.query()
      $scope.newProject = new Project

  $scope.deleteProject = (project)-> 
    project.$delete ->
      $scope.projects = Project.query()
