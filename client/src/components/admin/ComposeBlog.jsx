import React, { Component } from 'react';
import * as blogServices from '../../services/blogs';

export default class ComposeBlog extends Component {
    constructor(props) {
        super(props);
        this.state = {
            title: '',
            content: '',
            author: 1
        }
    }

    async saveBlog(e) {
        e.preventDefault();
        try {
            let res = await blogServices.insert(this.state); //NEW WAY ;)
            //OLD WAY 
            // let res = await fetch('/api/blogs', {
            //     method: "POST",
            //     headers: {
            //         "Content-type": "application/json",
            //         "Authorization": "Bearer af2r7G+STAffFVi0WYlrl9RyJWaxRBB8JBFypxASbAav6wLYbQ4l"
            //     },
            //     body: JSON.stringify(this.state)
            // })
            this.props.history.replace('/');
        } catch(e) {
            console.log(e);
        }
    }

    render() {
        return (
            <main className="py-5">
                <div className="container py-5">
                    <div className="row">
                        <form className="col-md-6 offset-md-2" onSubmit={(e) => this.saveBlog(e)}>
                            <div className="form-row">
                                <div className="col form-group">
                                    <input className="form-control" type="text" placeholder="Title" onChange={(e) => this.setState({ title: e.target.value })} required />
                                </div>
                            </div>
                            <div className="form-row">
                                <div className="col form-group">
                                    <textarea className="form-control" onChange={(e) => this.setState({ content: e.target.value })} required />
                                </div>
                            </div>
                            <div className="form-row form-group">
                                <div className="col">
                                    <button className="btn btn-primary btn-lg w-100">Publish</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </main>
        );
    }
};