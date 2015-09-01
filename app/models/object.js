import DS from 'ember-data';

export default DS.ModelFragment.extend({
  inlets: DS.hasManyFragments('object'),
  position: DS.hasManyFragments(),
  value: DS.attr('string')
});
