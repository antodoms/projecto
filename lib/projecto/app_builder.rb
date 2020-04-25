module Projecto
  class AppBuilder < Rails::AppBuilder
    def set_ruby_version
      create_file ".ruby-version", "#{Projecto::RUBY_VERSION}\n", force: true
    end

    def gemfile
      template "Gemfile.erb", "Gemfile"
    end

    # Test environment for projecto
    def setup_rspec
      create_file ".rspec", "--require rails_helper\n", force: true
      template "rspec/rails_helper", "spec/rails_helper.rb", force: true
      template "rspec/spec_helper", "spec/spec_helper.rb", force: true
    end

    def custom_application_config
      config = <<-RUBY
    config.generators do |g|
      g.orm              :active_record
      g.test_framework   :test_unit, fixtures: true
      g.integration_tool :test_unit
    end
      RUBY

      inject_into_class "config/application.rb", "Application", config
    end

    def setup_heroku
      copy_file "Procfile", "Procfile", force: true
    end

    def setup_assets
      copy_file "assets/config/manifest.js", "app/assets/config/manifest.js", force: true
      copy_file "assets/javascripts/application.js", "app/assets/javascripts/application.js", force: true
    end

    def setup_view_application
      template "views/application.html.erb", "app/views/layouts/application.html.erb", force: true
    end
  end
end