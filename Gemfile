source 'https://rubygems.org'
ruby '2.2.2'
gem 'rails', '4.2.0'
gem 'sass-rails', '~> 5.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

# change #00425 added next 1 lines
#gem 'formtastic'
gem 'formtastic-bootstrap'
# change #003 added next 1 lines
gem 'audited-activerecord', "~> 4.0"

# #00443 - Adding ActiveAdmin again
gem 'activeadmin', github: 'activeadmin'

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 3.3'
  gem 'spring'
end
gem 'bootstrap-sass'
gem 'devise'
gem 'pundit'
group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end
