import React, { Component } from 'react';
import BlogPreviewCard from './BlogPreviewCard';

export default class AllBlogs extends Component {
    constructor(props) {
        super(props);
        this.state = {
            blogs: []
        };
    }

    async componentDidMount() {
        try {
            let res = await fetch('/api/q/blogsWithAuthor');
            let blogs = await res.json();
            this.setState({ blogs });
        } catch (e) {
            console.log(e);
        }
    }

    render() {
        return (
            <main className="py-3">
                <div className="container pt-3 pb-5">
                    <div className="row">
                        {this.state.blogs.map(blog => {
                            return <BlogPreviewCard key={blog.id} blog={blog} />
                        })}
                    </div>
                </div>
            </main>
        );
    }
};