require "rails/generators"
require "rails/generators/rails/app/app_generator"

module Projecto
  class AppGenerator < Rails::Generators::AppGenerator
    class_option :database, type: :string, aliases: "-d", default: "postgresql",
                            desc: "Configure for selected database (options: #{DATABASES.join('/')})"

    class_option :skip_bootsnap, type: :boolean, default: true,
                            desc: "Skip bootsnap gem"
    class_option :skip_turbolinks, type: :boolean, default: false,
                            desc: "Skip turbolinks gem"
    class_option :skip_webpack_install, type: :boolean, default: true,
                            desc: "Don't run Webpack install"

    def finish_template
      invoke :projecto_customizations
    end

    def projecto_customizations
      build :set_ruby_version
      build :setup_rspec
    end
         
    protected

    def get_builder_class
      Projecto::AppBuilder
    end
  end
end