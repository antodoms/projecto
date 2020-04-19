require "rails"

module Projecto
  class Engine < ::Rails::Engine
    require "rails"
    require "rake"
    require "rspec-rails"
    require "capybara"
    require "selenium-webdriver"
    require "webdrivers"
    require "sanitize"
  end
end