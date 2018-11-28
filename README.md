## Updates
V3.1
* Adding backend setup for Mailgun-js
* Adding route to test sending emails with

V3.0
* Adding frontend auth components and wiring them into my App.jsx
* Also used blog services to post new blogs :) 

V2.1
* Prepping for frontend auth by making a ComposeBlog component that manually sets its headers as an example
  
V2.0
* Added Passport with Local Strat, Bearer Strat, and middelware to use it.  List of steps taken here: https://github.com/przekwas/bham-auth-server-checklist with accompanying [YouTube vid here](https://youtu.be/3J8ih5149WY)!

V1.5
* Server
	*  `server/src/queries/spBlogTags.js` added a new function to query using a stored procedure for blog tags! Its structure can be found in `server/src/config/db-demo.sql` near the bottom. That's all the MySQL I've ran for my project :)
	*  `server/src/routes/api/queries` updated my queries route to have a new endpoint to get blog tags
	* Updated the endpoints table for the new route

* Frontend
	*  `client/src/components/blogs/SingleBlog.jsx` updated to include *another* promise to get blog tags based on a blog's id that adds the array of tags to its own piece of state
	* added new class method to render any tags if they exist as bootstrap badges with `renderTags()`
# Note
I do not have my blog post, edit, or delete done on *frontend* yet as I'll build those after we get auth working!  The routes, however, work in postman :)

## Check it Out!
[All Blogs Homepage](https://imgur.com/3Gd1hqt)

[Single Blog](https://imgur.com/iiJ5VRT)

### Endpoints
| Endpoint | Method | Purpose |
|--|--|--|
| `/api/blogs/` | ALL | basic Blog CRUD operation |
| `/api/users/single/:id` | GET | getting one user only |
| `/api/users/me` | GET | middleware checks user of a token for validity |
| `/api/q/blogsWithAuthor` | GET | getting all blogs joined with a username from the users table |
| `/api/q/spBlogTags/:id` | GET | stored procedure to get blog tags from a blog id |
| `/auth/login` | POST | login route using valid email and password |


### Things to check out on Server
1. `server/src/routes/api/queries.js` is a custom route for executing more complex queries should I need them
2. `server/src/queries/*` is now where I keep `table.js` (update your imports if you do this) and where I'll write my custom queries that aren't your basic CRUD operations (get all, get one, update, insert, delete)
3. `server/src/queries/getBlogsWithAuthor.js` is where I write my get all blogs joined with users table!  I export it for use in my `/api/q/*` routes
4. In my `server/src/routes/` you'll notice I moved `api` into its own directory.  And `api` also has its own `index.js` ;)
5. This leaves me the ability to make a *different* directory for auth routes when the time comes!  Keeps things separated so you don't have like 15 routes in one directory like I did on my final project

### Things to check out on Frontend
1. `client/src/components/App.jsx` this is my "layout" component of how my page looks.  It has my navbar, the switch acting as the "body" of my page, and a footer below the switch.  Generally a good idea to keep this one pretty simple
2. `client/src/components/*` you can have multiple directories in here to keep your components more organized!  I don't want my navbar and footer components mixed with my blog components since they do different things for me.  Just make sure your imports are correct and it's no problem
3. Out of laziness I didn't want to write another join query for a single blog joined with the users table .. so in `client/src/components/blogs/SingleBlog.jsx` in my `componentWillMount()` I execute two promises:  
	* one gets the single blog from my `match.params.id`, then that object `blog` has an `author` column in my database so I use `blog.author` as the `id` for my get one user promise right after!  Then I overwrite `blog.author` with `user.username` since that's the author name I want appearing on the page. Boom roasted
4.   I use [Moment JS](https://momentjs.com/) to format my `_created` into a nice looking time for when my blog post was written
		* `npm install --save moment`
		* In the file you wanna make your date look nice: `import  moment  from  'moment';`
		* Use `moment(_created).format('MMM DD YYYY')` to make it look nice.  Yours might be like `props.blog._created` unless you destructure like I do
		* Check out their documentation for all the cool formats you can do!  It's the string `"'MMM DD YYYY'` that tells moment *how* for format it for you.