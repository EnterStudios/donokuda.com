`import Ember from 'ember'`

formatUrl = (value) ->
  regex = /[^.*\/\/].+/
  value.match(regex)

FormatUrlHelper = Ember.Handlebars.makeBoundHelper formatUrl

`export { formatUrl }`

`export default FormatUrlHelper`
