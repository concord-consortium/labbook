ruby '2.2.10'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0.0'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem "newrelic_rpm"

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem "jquery-ui-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# Dependencies for the actual app
gem "uuidtools"
gem "paperclip", '~> 3.5.4'
gem "aws-sdk", '~> 1'
gem 'haml'

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~>1.4.2'
  gem 'rspec-rails', '~> 2.13.2'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn', '~>4.8.3'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# add samesite cookie fix
gem 'rack-secure_samesite_cookies', {:git => 'git://github.com/concord-consortium/secure-samesite-cookies', :tag => 'v1.0.2'}
