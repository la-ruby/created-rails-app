source "https://rubygems.org"

ruby "3.3.1"

gem 'rails', :github => 'rails/rails', :branch => '7-2-stable'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', :github => 'hotwired/turbo-rails', :branch => 'main'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

gem "devise", "~> 5.0.beta", :git => "https://github.com/heartcombo/devise", :branch => "main"

gem "pundit", "~> 2.4"

gem "sidekiq", "~> 7.3"
gem "aws-sdk-s3", require: false

gem "administrate", "~> 0.20.1"

gem "kaminari", "~> 1.2"

gem "factory_bot_rails", "~> 6.4", :groups => [:test, :development]

gem "faker", "~> 3.5"
gem 'simplecov', require: false, group: :test

gem "minitest-test_profile", "~> 0.2.2", :group => :test

gem "webmock", "~> 3.24", :group => :test

gem "sendgrid-ruby", ">= 6.7"

gem "rollbar", "~> 3.6"

gem "view_component", "~> 3.21"
gem "stimulus_reflex", github: "la-ruby/stimulus_reflex", branch: "noprompt"

gem "redis-session-store", "~> 0.11.5"
