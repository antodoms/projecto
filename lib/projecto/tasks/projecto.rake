namespace :projecto do
  desc "runing rspec locally"
  task :run_test do
    require "projecto"
    test_path = Projecto.test_path
    build_command = "bundle exec rspec"
    test_feature = ENV["project"]
    test_feature_tag = ENV["feature"]

    build_command << " #{test_path}/#{test_feature}/*" if test_feature
    build_command << " --tag #{test_feature_tag}" if test_feature && test_feature_tag

    system(build_command)
  end
end