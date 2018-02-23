source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.5'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby

gem 'coffee-rails', '~> 4.2'
gem 'bcrypt', '~> 3.1.7'

gem 'slim-rails', '3.1.1'
gem 'font-awesome-rails'
gem 'devise'
gem 'any_login'
gem 'kaminari'
gem 'simple_form'
gem 'carrierwave', '~> 1.0'
gem 'bootstrap-growl-rails'
gem 'cocoon'
gem 'jquery-ui-rails'
gem 'momentjs-rails', '>= 2.9.0'
gem 'pry'
gem 'meta-tags'

group :development, :test do
  gem 'database_cleaner'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'annotate'
  gem 'colorize'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
