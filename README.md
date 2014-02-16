## Swoonatra
 
New to the **Sinatra DSL // Ruby Web Framework**?  
Check out the website **[HERE](http://www.sinatrarb.com/)** and **[GitHub Repo](https://github.com/sinatra/sinatra)**.

At a high level, this template comes with the following features:  

- A **modular** Sinatra app using **Ruby 2.1.0** built in to get you started fast. 
- Local development using **SQLite3**, and production using **PostgreSQL** on Heroku.
- Support for **ActiveRecord** model inheritance and database migrations.
- Debugging tools like **Better Errors**, **Pry Debugger**, and **Sinatra Reloader**.
- **RSpec Integration** for testing your application, models, and concerns.
- **Authentication Support** for **API**, **OAuth Keys**, or any sensitive information.

Inline *comments* explain the code base. Feel free to delete as necessary.  
This template *does not* come with any UI in place. Styling is up to you.

---

This project is made with <3 and uses a collection of tips and tricks.  
Let me know if you have any suggestions via comments via pull request!

### { Getting Started with Swoonatra }

Here are a few sections on how you can get started with this template.

#### >>> GET UP AND RUNNING

In order to use this template:

1.  Clone the repository via: `git clone git@github.com:CarlosPlusPlus/swoonatra.git`
2.  `cd` into the repository and remove the .git folder: `rm -rf .git`
3.  Initialize folder as a Git repository and push up to a created repository on GitHub:
	- `git init`
	- `git commit -m "First commit."`
	- `git remote add origin git@github.com:[**Username**]/[**Repository Name**].git`
	- `git push -u origin master`
4.  Ensure you have **PostgreSQL** installed on your machine.
	- If not installed and on a MAC, use Homebrew via Terminal: `brew install postgresql`
5. Run a `bundle install` to install all gem dependencies.
6. Run `rackup` to start your local server.
7. Visit `localhost:9292` in your favorite browswer.

All set and good to go for local development.

Don't forget to update `README.md` with your project specific information!

#### >>> DATABASE SETUP

The SQLite3 **development** database will be generated when running `rackup` for the 1st time.  
This is located in: `db/development.sqlite3`

The SQLite3 **test** database will be generated when running `rspec` for the 1st time.  
This is located in: `db/test.sqlite3`

In **production**, the database will connect with the Heroku **postgreSQL** database automatically.

Please note that the `.gitignore` file is setup to ignore both local databases.

### { Deployment to Heroku }
 
If you've never used Heroku before, follow this **[Quick Start Guide](https://devcenter.heroku.com/articles/quickstart)** to get setup.  
For more technical detail, I recommend you read about it **[HERE](https://devcenter.heroku.com/articles/getting-started-with-ruby)**. 

Once you are ready to launch your application, perform the following steps:

- `heroku create` to create an application on Heroku.
- `heroku addons:add heroku-postgresql:dev` to initialize a Heroku postgreSQL database.
- `heroku config` to see the `[HEROKU_POSTGRESQL_COLOR_URL]`, needed for the next step.
- `heroku pg:promote [HEROKU_POSTGRESQL_COLOR_URL]` to set primary database.
- `heroku labs:enable user-env-compile` to prvoide ENV variables during precompilation.
- `git push heroku master` to push your application up to Heroku.
- `heroku open` to open the application and view it on Heroku.

**NOTE** - if you're using ActiveRecord models, you need to run database migrations on Heroku:  

- `heroku run rake db:migrate` in your project's root directory.

My personal recommendation would be to begin testing on Heroku ASAP!  
This ensures both local & production setups are working as expected.


### { Addtional Informtion }

Here is some additional and important information you should know when using **Swoonatra**.

#### >>> SECURITY & AUTHENTICATION

This template allows you to safeguard against checking in sensitive information into GitHub!  

In order to use **API Keys**, **OAuth Keys**, or **sensitive information** in your application:

- In the root directory: `cp config/authentication.example.rb config/authentication.rb`
- Add your information to `config/authentication.rb` as shown in the file.

This will allow you to access them everywhere via the `ENV` hash in your application.


#### >>> GEMFILE

Here are the gems included with this template:

**Framework**  

- [sinatra](http://www.sinatrarb.com/)
- [sinatra-contrib](https://github.com/sinatra/sinatra-contrib)
- [activerecord](http://guides.rubyonrails.org/active_record_querying.html)
- [sinatra-activerecord](https://github.com/bmizerany/sinatra-activerecord)
- [sinatra-flash](https://github.com/SFEley/sinatra-flash)
- [sinatra-redirect-with-flash](https://github.com/vast/sinatra-redirect-with-flash)
- [sqlite3](https://github.com/luislavena/sqlite3-ruby)
- [rake](http://rake.rubyforge.org/)

---

**Development / Debug**  

- [tux](https://github.com/cldwalker/tux)
- [better_errors](https://github.com/charliesome/better_errors)
- [binding_of_caller](https://github.com/banister/binding_of_caller)
- [pry-debugger](https://github.com/nixme/pry-debugger)

---

**Test**

- [capybara](www.test.com)
- [factory_girl](www.test.com)
- [rspec](www.test.com)

---

**Production**  

- [pg](https://github.com/ged/ruby-pg)

### { Code Status }

**Travis CI** Build Status  
[![Build Status](https://travis-ci.org/CarlosPlusPlus/swoonatra.png?branch=master)](https://travis-ci.org/CarlosPlusPlus/swoonatra)  

**Code Climate** Code Quality  
[![Code Climate](https://codeclimate.com/github/CarlosPlusPlus/swoonatra.png)](https://codeclimate.com/github/CarlosPlusPlus/swoonatra)

**Gemnamsium** Dependency Analysis  
[![Dependency Status](https://gemnasium.com/CarlosPlusPlus/swoonatra.png)](https://gemnasium.com/CarlosPlusPlus/swoonatra)
