# source 'http://rubygems.org'
source 'http://ruby.taobao.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'active_scaffold'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

gem 'devise'

gem 'carrierwave'
#gem 'nested_form'
gem "nested_form", :git => 'git://github.com/ryanb/nested_form.git'
gem 'acts-as-taggable-on', '~> 2.2.2'
gem 'sunspot_rails'
gem 'sunspot_solr'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :development, :test do
  # To use debugger
  gem 'ruby-debug19', :require => 'ruby-debug'

  gem "rspec", "~> 2.7.0"
  gem "rspec-rails", "~> 2.7.0"
  gem "factory_girl_rails"
  gem "simplecov"
  gem "mocha"
end
