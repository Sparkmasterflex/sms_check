source "https://rubygems.org"

# Declare your gem's dependencies in sms_check.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

gem 'haml'
gem 'attr_encrypted'

group :development, :test do
  gem 'rspec-rails'
  gem 'mocha', '0.11.4'
  gem 'shoulda-matchers'
end

gem 'guard-rspec', require: false

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 1.1'
  gem 'cucumber-rails', '1.3.0'
  gem 'capybara'
  gem 'rack_session_access'
  gem "email_spec"
  gem "launchy", "~> 2.1.0"
end
