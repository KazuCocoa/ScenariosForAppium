require 'turnip'
require 'turnip_formatter'

# OUT_REPORT defined in capabilities.rb
require_relative '../config/capabilities'

Dir.glob("spec/acceptance/#{ENV['os']}/#{ENV['scope']}/step_definitions/*steps.rb") { |f| load(f, true) }
Dir.glob("spec/acceptance/#{ENV['os']}/step_definitions/*steps.rb") { |f| load(f, true) }


TurnipFormatter.configure do |config|
  config.title = 'My title'
end

RSpec.configure do |c|

  OUT_REPORT = "#{OUT_REPORT_PATH}/turnip_report.html".freeze

  c.add_formatter RSpecTurnipFormatter, OUT_REPORT
end