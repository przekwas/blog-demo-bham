import { Router } from 'express';
import Table from '../../queries/table';
import { tokenMiddleware, isLoggedIn } from '../../middleware/auth.mw';

let router = Router();
let usersTable = new Table('users');

router.get('/single/:id', (req, res) => {
    usersTable.getOne(req.params.id)
        .then(results => res.json({ username: results.username }))
        .catch(e => res.status(500).send(e));
});

router.get('/me', tokenMiddleware, isLoggedIn, (req, res) => {
    res.json(req.user);
});

export default router;