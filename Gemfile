source 'https://rubygems.org'

gem "bundler", ">= 1.5.0"

gem 'rails', '6.1.3.2'
gem 'rouge', '~> 3.26.0'
gem 'request_store', '~> 1.5.0'
gem "mini_mime", "~> 1.0.1"
gem "actionpack-xml_parser"
gem 'roadie-rails', '~> 2.2.0'
gem 'marcel'
gem "mail", "~> 2.7.1"
gem 'csv', '~> 3.1.1'
gem 'nokogiri', '~> 1.11.1'
gem 'i18n', '~> 1.8.2'
gem "rbpdf", "~> 1.20.0"
gem 'addressable'
gem 'rubyzip', '~> 2.3.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :x64_mingw, :mswin]

# TOTP-based 2-factor authentication
gem 'rotp'
gem 'rqrcode'

# Optional gem for LDAP authentication
group :ldap do
  gem 'net-ldap', '~> 0.17.0'
end

# Optional gem for OpenID authentication
group :openid do
  gem "ruby-openid", "~> 2.9.2", :require => "openid"
  gem "rack-openid"
end

# Optional gem for exporting the gantt to a PNG file
group :minimagick do
  gem 'mini_magick', '~> 4.11.0'
end

# Optional Markdown support, not for JRuby
group :markdown do
  gem 'redcarpet', '~> 3.5.1'
end

# Include database gems for the adapters found in the database
# configuration file
require 'erb'
require 'yaml'

gem "mysql2", "~> 0.5.3", :platforms => [:mri, :mingw, :x64_mingw]

group :development do
  gem "yard"
end

group :test do
  gem "rails-dom-testing"
  gem 'mocha', '>= 1.4.0'
  gem 'simplecov', '~> 0.21.2', :require => false
  gem "ffi", platforms: [:mingw, :x64_mingw, :mswin]
  # For running system tests
  # gem 'puma'
  gem 'capybara', '~> 3.35.3'
  gem "selenium-webdriver"
  gem 'webdrivers', '~> 4.4', require: false
end

plugins_pattern = File.join(__dir__, 'plugins/*/{Gemfile,PluginGemfile}')
plugins_gemfiles = Dir.glob(plugins_pattern)

plugins_gemfiles.each do |gemfile|
  eval_gemfile(gemfile)
end
