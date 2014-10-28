require 'turnip_formatter'

RSpec.configure do |c|
  c.add_formatter RSpecTurnipFormatter, "report/report.html"
end

TurnipFormatter.configure do |config|
  config.title = 'My title'
end
