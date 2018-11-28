import {Router } from 'express';

import blogsRouter from './blogs';
import usersRouter from './users';
import queriesRouter from './queries';

let router = Router();

router.use('/blogs', blogsRouter);
router.use('/users', usersRouter);
router.use('/q', queriesRouter);

export default router;