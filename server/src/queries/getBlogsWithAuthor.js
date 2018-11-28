import { executeQuery } from '../config/db';

export default () => {
    let sql = `
    SELECT b.*, u.username FROM blogs b
    JOIN users u ON u.id = b.author
    ORDER BY _created DESC
    `;
    return executeQuery(sql);
}