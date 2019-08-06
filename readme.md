![books](https://media3.giphy.com/media/TRuV1HrNrNmP6/giphy.gif)

# Homework

Tonight your homework is to create a two model rails app that serves json. Your database should be structured as follows:

- Zoos table with name and city columns.
- Pandas table with name and age columns.

Since a zoo houses many pandas, but each panda only lives at one zoo, this is a one-to-many relationship.

Your app should have the following routes working:


## Rails

- fork and clone this repo

- `cd` into the project directory

- generate a new rails project with ```rails new pandas --database=postgresql --api```

- `cd` into the project and run `rails db:create`

- use the rails generator to generate your two models

- update the migration files accordingly based on this one-to-many relationship

- run `rails db:migrate`

Go ahead and add some data to your tables from the rails console. There is some seed data [here](seeds.rb). If you want to use that cut and paste the data into the seeds file in your project and run ```rails db:seed```

At this point, you are ready to implement the necessary routes / controller actions to fill out the app. Remember you can generate a controller with, for example, `rails g controller Pandas`. 

You will need to build full CRUD functionality for this app.

## React

Inside the rails directory, create a new React app with `create-react-app client`.
