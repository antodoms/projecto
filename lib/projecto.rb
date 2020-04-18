require "projecto/version"
require "projecto/railtie" if defined?(Rails)
require "projecto/engine"

module Projecto
  class Error < StandardError; end

  def self.root
    File.expand_path '..', __dir__
  end

  def self.test_path
    File.expand_path("../spec/features", __dir__)
  end
end
