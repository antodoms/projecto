
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "webapp_examiner_spec/version"

Gem::Specification.new do |spec|
  spec.name          = "webapp_examiner_spec"
  spec.version       = WebappExaminerSpec::VERSION
  spec.authors       = ["Anto Dominic"]
  spec.email         = ["antodoms@gmail.com"]

  spec.summary       = "This is the spec test to be used for in the website"
  spec.description   = "To include the project tests in webapp examiner test run needs to be included here"
  spec.homepage      = "https://web-examiner.herokuapp.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/antodoms/webapp_examiner_spec.git"
    spec.metadata["changelog_uri"] = "https://github.com/antodoms/webapp_examiner_spec/blob/develop/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_dependency "rspec", "~> 3.0"
  spec.add_dependency "capybara", "~> 2.13"
  spec.add_dependency "selenium-webdriver"
  spec.add_dependency "webdrivers"
end
