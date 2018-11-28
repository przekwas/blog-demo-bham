import { Router } from 'express';
import { sendEmail } from '../../utils/mailgun';

let router = Router();

router.post('/', (req, res, next) => {
    sendEmail('przekwas@gmail.com', 'no-reply@fakecompany.com', 'We have made Contact!!', req.body.message)
    .then(() => res.send("Email sent!"));
});

export default router;