`import Ember from 'ember'`

ProjectController = Ember.ObjectController.extend
  rolesList: (->
    @get('model.roles').split(', ')
  ).property('model.roles')

`export default ProjectController`
