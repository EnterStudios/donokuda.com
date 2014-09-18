`import DS from 'ember-data'`

Project = DS.Model.extend
  active: DS.attr('boolean')
  client: DS.attr('string')
  color: DS.attr('string')
  logoFilename: DS.attr('string')
  name: DS.attr('string')
  teaser: DS.attr('string')
  url: DS.attr('string')
  year: DS.attr('date')

`export default Project`
