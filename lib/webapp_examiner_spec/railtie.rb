require "webapp_examiner_spec"
require "rails"

module WebappExaminerSpec
  class Railtie < Rails::Railtie
    railtie_name :webapp_examiner_spec
    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/*.rake").each { |f| load f }
    end
  end
end