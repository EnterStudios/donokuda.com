`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'project', {
  # Specify the other units that are required for this test.

}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model

#  test '#hasUrl with a url returns true', (assert)->
#    project = @subject({url: "//test.url"})
#    equal project.get('hasUrl'), true
#
#  test '#hasUrl without a url returns false', (assert)->
#    project = @subject({url: undefined})
#    assert.ok project.get('hasUrl'), false
