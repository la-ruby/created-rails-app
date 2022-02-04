# Load and launch SimpleCov at the very top of your test/test_helper.rb
# (or spec_helper.rb, rails_helper, cucumber env.rb, or whatever your
# preferred test framework uses)
require 'simplecov'
if ENV['COVERAGE']
  SimpleCov.start 'rails' do
    command_name 'tests'
    add_filter 'app/channels'
    add_filter 'app/controllers/applicatin_controller.rb'
    add_filter 'app/mailers/application_mailer.rb'
    add_filter 'app/jobs/application_job.rb'
    add_filter 'app/helpers/application_helper.rb'
    add_filter 'app/controllers/application_controller.rb'
  end
end
ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
