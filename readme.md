![books](https://media.giphy.com/media/3LrK7Q7UhF5MnhZ5ja/giphy.gif)

# Homework

Tonight your homework is to create a two model rails app that serves json. Your database should be structured as follows:

- Authors table with first name and last name columns.
- Books table with title and author id.

Your app should have the following routes working:
### GET
- /authors should return a json object with all the authors.
- /authors/:author_id should return a json object with a specific author.
- /authors/:author_id/books should return a json objects of all books by a specific author.
- /authors/:author_id/books/:id should return a json object with a specific book.

### POST
- /authors should allow you to create a new author.
- /authors/:author_id/books/ should allow you to create a new book.

### PUT/PATCH
- /authors/:author_id should allow you to edit an author
- /authors/:author_id/books/:id should alloy to edit a book.

### Delete
- /authors/:author_id should allow you to delete an author.
- /authors/:author_id/books/:id should allow you to delete a specific book.

## Getting started
 - generate a new rails project with ```rails new your_project_name_here --database=postgresql --api```

- next `cd` into your project and run `rails db:create`.

 - next use the rails generator to generate your models. You will want to run `rails g model Author` and `rails g model Book`.

- update the migration files accordingly based on the resource structure outlined above. You can use [this](https://git.generalassemb.ly/wdi-nyc-lambda/active_record_intro/blob/master/demo/db/migrate/20170901040406_create_courses.rb) as a reference for how your migration should look.

- run `rails db:migrate`

 Go ahead and add some data to your tables from the rails console. There is some seed data [here](seeds.rb). If you want to use that cut and paste the data into the seeds file in your project and run ```rails db:seed```

At this point, you are ready to implement the necessary routes / controller actions to fill out the app.  Remember you can generate a controller with `rails generate controller <Plural Controller Name, e.g. Users or Tweets>`.  If you need a reference for either the routes or controller code don't hesitate to look over the README's from today's lessons [here](https://git.generalassemb.ly/wdi-nyc-lambda/rails_controller_lesson) and [here](https://git.generalassemb.ly/wdi-nyc-lambda/rails-associations-routes-controllers).

Try to test frequently with Postman!

## Submission

When you are finished push up your repo and create an issue ticket on this repo with a link to yours.
