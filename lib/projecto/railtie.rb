require "projecto"
require "rails"

module Projecto
  class Railtie < Rails::Railtie
    railtie_name :projecto
    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/*.rake").each { |f| load f }
    end
  end
end