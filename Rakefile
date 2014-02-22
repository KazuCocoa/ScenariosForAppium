require 'rspec/core/rake_task'
task default: :spec

def setup_android
  device = `adb devices`
  device_hash = device.delete("\n").match(/\w+\tdevice$/).to_s.gsub(/\tdevice$/, '')
  sh "adb -s #{device_hash} shell am start -a android.intent.action.MAIN -n org.openqa.selenium.android.app/.MainActivity"
  sh "adb -s #{device_hash} forward tcp:8080 tcp:8080"
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  #setup_android if ENV['device'] == 'android'
  spec.pattern = "spec/acceptance/**/*.feature"
end
