# Specifies rules for the Guard gem to use when monitoring the project

require 'active_support/core_ext'

guard 'spork' do
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
  watch('spec/support/')

  ### Specify the name of your here
  watch('myapp.rb')           # for example, reload spork when myapp.rb is changed
end

guard 'rspec', :wait => 60, :all_after_pass => false, :cli => '--drb' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/factories/.+\.rb$})
  watch('spec/spec_helper.rb')                { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})          { "spec" }

  ### Specify the name of your here
  watch('myapp.rb')                           { "spec" }
end