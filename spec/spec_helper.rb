$LOAD_PATH.unshift(File.expand_path('.'))
ENV['RACK_ENV'] ||= 'test'

require 'type_app'

require 'capybara/rspec'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.color_enabled = true
end