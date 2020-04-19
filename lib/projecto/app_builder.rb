module Projecto
  class AppBuilder < Rails::AppBuilder
    def set_ruby_version
      create_file ".ruby-version", "#{Projecto::RUBY_VERSION}\n", force: true
    end

    def gemfile
      template "Gemfile.erb", "Gemfile"
    end
  end
end