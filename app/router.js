import Ember from 'ember';

var Router = Ember.Router.extend({
  location: PortfolioENV.locationType
});

Router.map(function() {
  this.route('about', {path: '/'});
  this.route('projects', {path: '/projects'});
});

export default Router;
