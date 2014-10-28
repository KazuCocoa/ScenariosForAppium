require 'rspec/core/rake_task'
task default: :spec

RSpec::Core::RakeTask.new(:spec) do |spec|

  spec.rspec_opts = "--tag #{ENV['tag']}" if ENV['tag']

  if ENV['os'] == 'ios' || ENV['os'] == 'android'
    # nothing
  else
    puts '[MUST]option "os=ios" or "os=android" '
    exit 0
  end

  puts 'Use http://localhost:4723 as default setting' unless ENV['appium_server']

  if ENV['scope']
    if ENV['target']
      spec.pattern = "spec/acceptance/#{ENV['os']}/**/#{ENV['scope']}/#{ENV['target']}.feature"
    else
      spec.pattern = "spec/**/#{ENV['os']}/**/#{ENV['scope']}/**/*.feature"
    end
  else
    spec.pattern = ''
    puts "please specify scope."
    exit 0
  end

  if ENV['selendroid']
    ANDROID_CAPABILITIES = SELENDROID_CAPABILITIES
  end

end
