`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend({
  location: config.locationType
})

Router.map ->
  @route('about', {path: '/'})
  @resource 'projects'
  @resource 'project', path: 'projects/:project_id', Ember.K

`export default Router`
