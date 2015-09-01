module.exports = function(app) {
  var express = require('express');
  var patchesRouter = express.Router();

  patchesRouter.get('/', function(req, res) {
    res.send({
      'patches': []
    });
  });

  patchesRouter.post('/', function(req, res) {
    res.status(201).end();
  });

  patchesRouter.get('/:id', function(req, res) {
    res.send({
      'patches': {
        id: req.params.id,
        'name': 'hello_world.swf',
        'objects': [
          {id: 0, 'pos': [0, 0], 'value': 'Hello World'},
          {id: 1, 'pos': [100, 100], 'value': 'print', 'inlet': [0]},
          {id: 2, 'pos': [200, 200], 'value': 'outlet', 'inlet': [1]}
        ]
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
