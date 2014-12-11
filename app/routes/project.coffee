`/*jshint -W032 */`

`import Ember from 'ember'`
`import ResetScrollMixin from 'portfolio/mixins/reset-scroll'`
`/* global marked */`

ProjectRoute = Ember.Route.extend ResetScrollMixin,
  setupController: (controller, model) ->
    @_super(controller, model)

    Ember.$.get "/case-studies/#{model.get('name').dasherize()}.md", (content) ->
      renderedContent = marked(content).htmlSafe()
      controller.set('caseStudyDetails', renderedContent)

`export default ProjectRoute`
