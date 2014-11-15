# coding: utf-8

require 'turnip'
require 'turnip_formatter'

# OUT_REPORT defined in capabilities.rb
Dir[File.join(File.dirname(__FILE__), "..", "config/c_appium/capabilities.rb")].each { |f| require f }

Dir.glob("spec/acceptance/#{ENV['os']}/step_definitions/#{ENV['scope']}/**/*steps.rb") { |f| load(f, true) }
Dir.glob('spec/acceptance/step_definitions/**/*steps.rb') { |f| load(f, true) }

TurnipFormatter.configure do |config|
  config.title = 'My title'
end

RSpec.configure do |c|

  OUT_REPORT = "#{OUT_REPORT_PATH}/turnip_report.html".freeze

  c.add_formatter RSpecTurnipFormatter, OUT_REPORT
end
