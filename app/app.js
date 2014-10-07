import Ember from 'ember';
import Resolver from 'ember/resolver';
import loadInitializers from 'ember/load-initializers';
import DS from 'ember-data';

Ember.MODEL_FACTORY_INJECTIONS = true;

var App = Ember.Application.extend({
  modulePrefix: 'portfolio', // TODO: loaded via config
  Resolver: Resolver
});

loadInitializers(App, 'portfolio');

export default DS.FixtureAdapter.extend();
export default App;
