`import Ember from 'ember'`

Router = Ember.Router.extend({
  location: PortfolioENV.locationType
})

Router.map ->
  @route('about', {path: '/'})
  @resource('projects')

`export default Router`
