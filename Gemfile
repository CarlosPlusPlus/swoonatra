source "https://rubygems.org"

gem "sinatra"
gem "sqlite3"
gem "activerecord"
gem "sinatra-activerecord"
gem "rake"

group :debug do
	gem "better_errors"
	gem "debugger"
end

group :development do
  gem "shotgun"
  gem "tux"
end


group :development, :test do
  gem 'rspec'
  gem 'guard'
  gem 'guard-rspec', '2.5.2'

  # spork gems
  gem 'guard-spork', '1.4.2'
  gem 'spork', '0.9.2'
end

group :test do
  gem 'capybara', '1.1.2'

  ###### System-dependent gems
  # Mac OSX
  # gem 'rb-fsevent', '0.9.1', :require => false
  # gem 'growl', '1.0.3'
end

FOR README
FOR TESTING:
COMMIT ADD GEMS FOR TESTING, MODIFY README
ADD spec/requests/spec_helper.rb for all of the tests
  