`import Ember from 'ember'`

Router = Ember.Router.extend({
  location: PortfolioENV.locationType
})

Router.map ->
  @route('about', {path: '/'})
  @resource('projects')
  @resource 'project', path: 'projects/:project_id', ->

`export default Router`
