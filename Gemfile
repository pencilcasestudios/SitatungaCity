source 'https://rubygems.org'




# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.0'









# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.10'

# Image optimisation tool
gem 'image_optim', '~> 0.20.2', require: false

# App settings in a config.yml file
gem 'settingslogic', '~> 2.0.9'

# To help with RVM and Capistrano
# Prevents: "Text will be echoed in the clear. Please install the HighLine or Termios libraries to suppress echoed text."
gem 'highline', '~> 1.7.1'

# Allow SECRET_KEY_BASE to be defined in an environment variable (.env)
# Ref: http://daniel.fone.net.nz/blog/2013/05/20/a-better-way-to-manage-the-rails-secret-token/
gem 'dotenv-rails', '~> 2.0.0'

# Decimals Roman Numerals
gem 'roman-numerals', '~> 0.3.0'









# Static pages
gem 'high_voltage', '~> 2.2.1'

# Meta tags
gem 'meta-tags', '~> 2.0.0'









# Rails Assets
# Ref: https://rails-assets.org/
gem 'bundler', '>= 1.7.0'

source 'https://rails-assets.org' do
  # Bootstrap - UI framework
  gem 'rails-assets-bootstrap'

  # Vegas - full-screen background images
  gem 'rails-assets-vegas'
end









group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'


  # Use Capistrano for deployment
  gem 'capistrano-rails', '~> 1.1.2'

  # For the `deploy:restart` hook for passenger applications
  gem 'capistrano-passenger', '~> 0.0.2'

  # Use RVM with Capistrano (Capistrano version 3 or higher)
  gem 'rvm1-capistrano3', '~> 1.3.2.2', require: false

  # Rails specific Capistrano tasks which are not part of the official rails gem
  # Ref: https://github.com/dei79/capistrano-rails-collection
  gem 'capistrano-rails-collection', '~> 0.0.3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  #gem 'spring'
end


group :test do
  # Ref: http://girders.org/blog/2014/02/06/setup-rails-41-spring-rspec-and-guard/
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'guard-bundler', '~> 2.1.0'
  gem 'guard-rspec', '~> 4.5.0'
  gem 'rspec-rails', '~> 3.2.1'
  gem 'spring-commands-rspec', '~> 1.0.4'
end









group :production do
  gem 'mysql2', '~> 0.3.18'
end
