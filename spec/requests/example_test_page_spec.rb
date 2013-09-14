# Can use Capybara or the Rack/test methods
# Execute tests by running: "guard", or "rspec rspec spec/requests/" to test everything without Guard or Spork

# Capybara example
require 'spec_helper'

describe "my first test" do
  subject { page }

  describe "Home page" do
    before { visit '/first' }
    it { should have_content('xxx') }
  end
end

# Rack/test example
