import { executeQuery } from '../config/db';

export default (blogid) => {
    let sql = `
    call spBlogTags(${blogid});
    `;
    return executeQuery(sql);
}