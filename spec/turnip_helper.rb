require 'turnip_formatter'

RSpec.configure do |c|
  c.add_formatter RSpecTurnipFormatter, "#{OUT_REPORT}/report.html"
end

TurnipFormatter.configure do |config|
  config.title = 'My title'
end
