import React from 'react';
import { Link } from 'react-router-dom';
import moment from 'moment';

import Shine from '../../images/shine.jpg';

export default (props) => {
    let { id, title, _created, username } = props.blog;
    return (
        <div className="col-md-4 mb-2">
            <div className="card border-dark">
                <img className="card-img-top" src={Shine} alt={title} />
                <div className="card-body">
                    <h2 className="card-title">{title}</h2>
                    <p className="card-text mb-0">{username}</p>
                    <p className="card-text"><i>{moment(_created).format('MMM DD YYYY')}</i></p>
                    <Link to={`/blog/${id}`} className="btn btn-primary">View</Link>
                </div>
            </div>
        </div>
    );
};