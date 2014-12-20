require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rails'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
end

def _signup_testuser
  visit '/'
  click_link 'Sign up'
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'password')
  fill_in('Password confirmation', with: 'password')
  click_button('Sign up')
end

def _login_testuser
  _create_testuser
  visit '/'
  click_link 'Log in'
  fill_in('Email', with: 'test@example.com')
  fill_in('Password', with: 'password')
  click_button 'Log in'
end

def _create_testuser
  User.create(email: 'test@example.com', password: 'password',password_confirmation: 'password')
end

def _add_a_photo
  visit '/'
  _login_testuser
  attach_file('post[image]',File.join(Rails.root, '/spec/testImageFiles/13-percent.jpg'))
  fill_in('price', with: '5')
  click_button 'Bang'
end

def _add_a_comment
  _add_a_photo
  click_link 'comment'
  fill_in 'comment', with: 'test comment'
  click_button 'Comment'  
end
