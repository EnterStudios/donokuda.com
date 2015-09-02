module.exports = function(app) {
  var express = require('express');
  var patchesRouter = express.Router();

  patchesRouter.get('/', function(req, res) {
    res.send({
      'patches': [
        {
          'id': 0,
          'name': 'hello_world.swf',
          'nodes': [
            {'positions': { x: '0', y: '0' }, 'value': 'Hello World'},
            {'positions': { x: '100', y: '100' }, 'value': 'print'},
            {'positions': { x: '200', y: '200' }, 'value': 'outlet'}
          ]
        },

        {
          'id': 1,
          'name': 'another test',
          'nodes': [
            {'positions': { x: '0', y: '0' }, 'value': 'Another Test'},
            {'positions': { x: '100', y: '100' }, 'value': 'print'},
            {'positions': { x: '200', y: '200' }, 'value': 'outlet'}
          ]
        }
      ]
    });
  });

  patchesRouter.post('/', function(req, res) {
    res.status(201).end();
  });

  patchesRouter.get('/:id', function(req, res) {
    res.send({
      'patches': {
        id: req.params.id,
      }
    });
  });

  patchesRouter.put('/:id', function(req, res) {
    res.send({
      'patches': {
        id: req.params.id
      }
    });
  });

  patchesRouter.delete('/:id', function(req, res) {
    res.status(204).end();
  });

  app.use('/api/patches', patchesRouter);
};
