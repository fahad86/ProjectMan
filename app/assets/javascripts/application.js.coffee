#= require angular
#= require angular-resource
#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require_self
#= require_tree .
@app = angular.module('app', ['ngResource'])
@app.config(["$httpProvider", (provider)->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')])
@app.factory "Project", ["$resource", ($resource)->
  $resource "/projects/:id",
  {
    id: "@id"
  },
  {
    update: { method:'PUT' }
    delete: { method:'DELETE' }
  }
]
