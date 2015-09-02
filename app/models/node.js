import DS from 'ember-data';

export default DS.ModelFragment.extend({
  positions: DS.hasOneFragment('position'),
  value: DS.attr('string')
});
