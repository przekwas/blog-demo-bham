import { Router } from 'express';
import getBlogsWithAuthor from '../../queries/getBlogsWithAuthor';
import spBlogTags from '../../queries/spBlogTags';

let router = Router();

router.get('/blogsWithAuthor', (req, res) => {
    getBlogsWithAuthor()
        .then(results => res.send(results))
        .catch(e => res.status(500).send(e));
});

router.get('/spBlogTags/:id', (req, res) => {
    spBlogTags(req.params.id)
        .then(results => res.send(results[0]))
        .catch(e => res.status(500).send(e));
});

export default router;