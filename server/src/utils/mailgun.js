import mailgunLoader from 'mailgun-js';
import dotenv from 'dotenv';

dotenv.config();

let mailgun = mailgunLoader({
    apiKey: process.env.MAILGUN_API_KEY,
    domain: process.env.MAILGUN_DOMAIN
});

const sendEmail = (to, from, subject, content) => {
    let data = {
        to,
        from,
        subject,
        text: content //or html: content
    };
    return mailgun.messages().send(data);
};

export { sendEmail };