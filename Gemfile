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
gem 'kaminari-bootstrap'
gem 'simple_form'
gem 'carrierwave', '~> 1.0'
gem 'bootstrap-growl-rails'
gem 'cocoon'
gem 'jquery-ui-rails'
gem 'momentjs-rails', '>= 2.9.0'
gem 'pry'
gem 'meta-tags'
gem 'ckeditor'
gem 'mini_magick'
gem 'dotenv-rails'
gem 'globalize', git: 'https://github.com/globalize/globalize'
gem 'activemodel-serializers-xml'
gem 'google-analytics-rails', '1.1.1'
gem 'truncate_html'
gem 'rails_12factor', group: :production
gem 'database_cleaner'
gem 'factory_bot_rails'
gem 'colorize'
gem 'faker'
gem "breadcrumbs_on_rails"

group :development, :test do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'annotate'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry'
  gem 'pry-rails'
  gem 'i18n-tasks'
  gem "capistrano", "~> 3.10", require: false
end
