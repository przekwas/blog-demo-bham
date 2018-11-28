import { Router } from 'express';
import Table from '../../queries/table';

let router = Router();
let blogsTable = new Table('blogs');

router.get('/:id?', (req, res) => {
    if (req.params.id) {
        blogsTable.getOne(req.params.id)
            .then(results => res.send(results))
            .catch(e => res.status(500).send(e));
    } else {
        blogsTable.getAll()
            .then(results => res.send(results))
            .catch(e => res.status(500).send(e));
    }
});

router.post('/', (req, res) => {
    blogsTable.insert(req.body)
        .then(results => res.send(results))
        .catch(e => res.status(500).send(e));
});

router.put('/:id', (req, res) => {
    blogsTable.update(req.params.id, req.body)
        .then(results => res.send(`Blog ID ${req.params.id} has been updated!`))
        .catch(e => res.status(500).send(e));
});

router.delete('/:id', (req, res) => {
    blogsTable.delete(req.params.id)
        .then(results => res.send(`Blog ID ${req.params.id} has been deleted!`))
        .catch(e => res.status(500).send(e));
});

export default router;