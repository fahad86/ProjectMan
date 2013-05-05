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

  $scope.openSettings = (project)->
    $scope.projectSettings =
      project: project
    $("#project-settings").modal("show")

  $scope.openLog = (project)->
    project.$gitLog ->
      $scope.projectLog =
        project: project
      $("#project-log").modal("show")
