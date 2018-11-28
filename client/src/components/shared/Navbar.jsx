import React from 'react';
import { Link } from 'react-router-dom';
import AuthButton from '../admin/AuthButton';

export default () => {
    return (
        <nav className="navbar navbar-dark navbar-expand-lg navbar-darkfixed-top" style={{ backgroundColor: "#9198e5" }}>
            <Link to="/" className="navbar-brand" href="#"><b>Tuna No Crust's</b> Blog</Link>
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"></span>
            </button>
            <div className="collapse navbar-collapse" id="navbarText">
                <ul className="navbar-nav ml-auto">
                    <li className="nav-item active">
                        <Link to="/" className="nav-link">Blogs</Link>
                    </li>
                    <li className="nav-item active">
                        <Link to="/compose" className="nav-link">Compose</Link>
                    </li>
                    <li className="nav-item active">
                        <Link to="/contact" className="nav-link">Contact Me</Link>
                    </li>
                    <li className="nav-item active">
                        <AuthButton />
                    </li>
                </ul>
            </div>
        </nav>
    );
}