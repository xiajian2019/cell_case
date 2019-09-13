source 'https://gems.ruby-china.com'

gem 'rails', '~> 5.1.6'
gem 'mysql2', '0.5.2'
gem "puma", "~> 3.11"

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.9.1'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bootstrap-sass'
gem 'sprockets', '~> 3.7.2'

# cell view component 测试 gem
gem 'cells-rails'
gem 'cells-erb'

gem 'slim-rails'

# 快速搭建后台
gem "godmin"

### github component 测试的 gem

# https://github.com/primer/octicons
gem "octicons_helper"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

gem "benchmark-ips"

# github 新出的，被合并到了 Rails 6.1 中
gem "actionview-component"

# using gon share variables to frot-end
gem 'gon'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'pry-doc'
end

group :development do
  gem 'guard'

  gem 'guard-livereload', '~> 2.5', require: false

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'annotate', '~> 2.7.2'
end

