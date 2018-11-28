import React, { Component } from 'react';

export default class ContactForm extends Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            message: '',
            feedback: ''
        };
    }

    async sendEmail(e) {
        e.preventDefault();

        let body = {
            message: this.state.message
        };

        try {
            let res = await fetch('/contact', {
                method: 'POST',
                headers: {
                    "Content-type": "application/json"
                },
                body: JSON.stringify(body)
            });

            this.setState({
                email: '',
                message: '',
                feedback: 'You message has been sent, thank you!'
            });
        } catch (err) {
            console.log(err);
        }
    }

    render() {
        return (
            <main className="py-5">
                <div className="container py-5">
                    <div className="row">
                        <form className="col-md-6 offset-md-2" onSubmit={(e) => this.sendEmail(e)}>
                            <div className="form-row">
                                <div className="col form-group">
                                    <input
                                        className="form-control"
                                        type="text"
                                        placeholder="Your Email"
                                        value={this.state.email}
                                        onChange={(e) => this.setState({ email: e.target.value })}
                                        required
                                    />
                                </div>
                            </div>
                            <div className="form-row">
                                <div className="col form-group">
                                    <textarea
                                        className="form-control"
                                        placeholder="Your Message"
                                        value={this.state.message}
                                        onChange={(e) => this.setState({ message: e.target.value })}
                                        required
                                    />
                                </div>
                            </div>
                            <div className="form-row form-group">
                                <div className="col">
                                    <button className="btn btn-primary btn-lg w-100">Contact Me!</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div className="row">
                        <div className="col-md-6 offset-md-2">
                            <p className="text-success">{this.state.feedback}</p>
                        </div>
                    </div>
                </div>
            </main>
        );
    }
};