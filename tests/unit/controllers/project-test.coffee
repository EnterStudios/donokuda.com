`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:project', 'ProjectController', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test '#roles', ->
  controller = @subject()
  controller.set 'model', Ember.Object.create({ roles: 'designer, developer, juggler' })

  result = controller.get('rolesList')

  ok Ember.isArray(result)
  ok result.contains('designer')
  ok result.contains('developer')
  ok result.contains('juggler')
