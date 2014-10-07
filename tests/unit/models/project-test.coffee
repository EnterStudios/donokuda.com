`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'project', 'Project', {
  # Specify the other units that are required for this test.
  needs: []
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok model

test '#hasUrl with a url returns true', ->
  project = @subject({url: "//test.url"})
  equal project.get('hasUrl'), true

test '#hasUrl without a url returns false', ->
  project = @subject({url: undefined})
  equal project.get('hasUrl'), false
