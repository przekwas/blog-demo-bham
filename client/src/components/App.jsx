import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

import PrivateRoute from './admin/PrivateRoute';
import Login from './admin/Login';
import Logout from './admin/Logout';

import Navbar from './shared/Navbar';
import Footer from './shared/Footer';

import AllBlogs from './public/AllBlogs';
import SingleBlog from './public/SingleBlog';
import ComposeBlog from './admin/ComposeBlog';
import ContactForm from './public/ContactForm';

export default () => {
    return (
        <Router>
            <>
                <Navbar />
                <Switch>
                    <Route exact path='/login' component={Login} />
                    <Route exact path='/logout' component={Logout} />
                    <Route exact path='/' component={AllBlogs} />
                    <Route exact path='/blog/:id' component={SingleBlog} />
                    <Route exact path='/contact' component={ContactForm} />
                    <PrivateRoute exact path='/compose' component={ComposeBlog} />
                </Switch>
                <Footer />
            </>
        </Router>
    );
};