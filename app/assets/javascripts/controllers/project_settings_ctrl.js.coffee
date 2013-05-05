@ProjectSettingsCtrl = ($scope, Project)->
  $scope.updateProjectSettings = ->
    $scope.projectSettings.project.$update ->
      $("#project-settings").modal("hide")
