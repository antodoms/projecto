require "rails"
require "projecto/version"
require "projecto/railtie" if defined?(Rails)
require "projecto/engine" if defined?(Rails)
require "projecto/generators/app_generator" if defined?(Rails)
require "projecto/app_builder" if defined?(Rails)

module Projecto
  class Error < StandardError; end

  def self.root
    File.expand_path '..', __dir__
  end

  def self.test_path
    File.expand_path("../spec/features", __dir__)
  end
end
