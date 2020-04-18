module Projecto
  class Engine < ::Rails::Engine
    require "rspec-rails"
    require "capybara"
    require "selenium-webdriver"
    require "webdrivers"
    require "sanitize"
  end
end