## Rapid Prototyping in Sinatra (RPS) - Boiler Plate  

*A boiler plate which can be used to quickly spin-up Sinatra web-framework apps.*  
By default, this boiler plate comes loaded with the [Flat-UI CSS Theme](designmodo.github.io/Flat-UI/‎).

---

The baseline for this repository comes from a very awesome person:

- **[Ratpack](https://github.com/ashleygwilliams/ratpack)** by [Ashley Williams](www.github.com/ashleygwilliams)

Let me know if you have any suggestions via comments / pull request!


### Information and Resources

Here is general information and resources to be used with the boilerplate:

#### Up and Running

1. `bundle install`
2. `shotgun`
3. visit `localhost:9393`


#### Security and Authentication

- Rename `config/authentication.example.rb` to `config/authentication.rb`
- Add your API and authentication tokens etc. to `config/authentication.rb`

#### Gemfile

Here are the gems included with this boiler plate:

**Framework**  

- [sinatra](http://www.sinatrarb.com/)
- [sqlite3](https://github.com/luislavena/sqlite3-ruby)
- [activerecord](http://guides.rubyonrails.org/active_record_querying.html)
- [sinatra-activerecord](https://github.com/bmizerany/sinatra-activerecord)
- [rake](http://rake.rubyforge.org/)

**Debug**  

- [better_errors](https://github.com/charliesome/better_errors)
- [debugger](https://github.com/cldwalker/debugger)

**Development**  

- [shotgun](https://github.com/rtomayko/shotgun)
- [tux](http://tagaholic.me/2011/04/10/tux-a-sinatra-console.html)

**Test**  

- [rspec](https://github.com/rspec)
- [guard](http://guardgem.org/)
- [guard-rspec](https://github.com/guard/guard-rspec)
- [guard-spork](https://github.com/guard/guard-spork)
- [spork](https://github.com/sporkrb/spork)
- [capybara](https://github.com/jnicklas/capybara)
- [rb-fsevent](https://github.com/thibaudgg/rb-fsevent)
- [growl](https://github.com/visionmedia/growl)


####FOR TESTING:
**Setup:**

- Change `app.rb` to match your main sinatra app controller in these files:
  1. `Guardfile`
  2. `spec/spec_helper.rb`
- Make sure you've run   `bundle install`

**To Use:**

1C create test files file i`n spec/requests/...._spec.`rb or edit the example
2`. bundle exec gua1rd
3K keep guard running and it will continuously run your tests
4To test without Guard or Spork runse `rspec spec/requests/` to test everything in the foldk"".""
5. Can write tests using Capybara orTRack/test methods

