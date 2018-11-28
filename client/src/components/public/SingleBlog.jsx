import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import moment from 'moment';

export default class SingleBlog extends Component {

    constructor(props) {
        super(props);
        this.state = {
            blog: {},
            tags: []
        };
    }

    async componentWillMount() {
        try {
            let blogData = await fetch(`/api/blogs/${this.props.match.params.id}`);
            let blog = await blogData.json();

            let userData = await fetch(`/api/users/single/${blog.author}`);
            let user = await userData.json();

            let tagData = await fetch(`/api/q/spBlogTags/${blog.id}`)
            let tags = await tagData.json();

            blog.author = user.username;

            this.setState({ blog, tags });
        } catch (e) {
            console.log(e);
        }
    }

    renderTags() {
         return this.state.tags.map(tag => {
            return <h5 className="d-inline m-1"><span class="badge badge-secondary">{tag.name}</span></h5>
        });
    }

    render() {
        let { title, author, content, _created } = this.state.blog;
        return (
            <main className="py-5">
                <article className="container pt-5">
                    <div className="row">
                        <div className="col">
                            <h1>{title}</h1>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col">
                            <h4><i>{author}</i></h4>
                        </div>
                    </div>
                    <div className="row mb-1">
                        <div className="col">
                            {this.renderTags()}
                        </div>
                    </div>
                    <div className="row">
                        <div className="col">
                            <p>{content}</p>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col offset-1">
                            <p>{moment(_created).format('MMM DD YYYY')}</p>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col offset-1">
                            <Link className="btn btn-outline-primary" to="/">Back to All Blogs</Link>
                        </div>
                    </div>
                </article>
            </main >
        );
    }
}
