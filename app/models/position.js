import DS from 'ember-data';

export default DS.ModelFragment.extend({
  x: DS.attr('number'),
  y: DS.attr('number')
});
