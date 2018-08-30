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
- /authors/:author_id/books/:id should allow you to create a new book.

### PUT/PATCH
- /authors/:author_id should allow you to edit an author
- /authors/:author_id/books/:id should alloy to edit a book.

### Delete
- /authors/:author_id should allow you to delete an author.
- /authors/:author_id/books/:id should allow you to delete a specific book.

## Getting started
start a new rails project with

 ```rails new your_project_name_here --database=postgresql --api```


 next ```cd``` into your project and run ```rails db:create```

 next use the rails generator to generate your models you will want to run ```rails g model Author``` and ```rails g model Book```

 Add your table structure to the migration files that were created when you created your models and then run ```rails db:migrate```

 Go ahead and add some data to your tables from the rails console. There is some seed data [here](seeds.rb). If you want to use that cut and paste the data into the seeds file in your project and run ```rails db:seed```

 Next you need to configure your routes and write your controllers. As you go, remember to test with postman.

 When you are finished push up your repo and create an issue ticket on this repo with a link to yours.
