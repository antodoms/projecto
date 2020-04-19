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
  end
end