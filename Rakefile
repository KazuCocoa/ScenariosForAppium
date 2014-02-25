require 'rspec/core/rake_task'
task default: :spec

RSpec::Core::RakeTask.new(:spec) do |spec|
  if ENV['scope'] == 'acceptance'
    spec.pattern = 'spec/acceptance/**/*.feature'
  elsif ENV['scope'] == 'feature'
    spec.pattern = 'spec/feature/**/*_spec.rb'
  else
    spec.pattern << 'spec/**/*.feature'
  end

end
