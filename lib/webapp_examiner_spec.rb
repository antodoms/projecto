require "webapp_examiner_spec/version"
require "webapp_examiner_spec/railtie" if defined?(Rails)

module WebappExaminerSpec
  class Error < StandardError; end

  def self.root
    File.expand_path '..', __dir__
  end

  def self.test_path
    File.expand_path("../spec/features", __dir__)
  end
end
