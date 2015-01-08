require 'date'
require 'rspec'

require_relative '../lib/c_appium/driver'
require_relative '../lib/utils'

require_relative '../config/c_appium/capabilities' # need to require if you don't use turnip

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

RSpec.configure do |c|

  c.include AppiumCustomDriver

  ## hooks for all test suite
  c.before(:suite, type: :feature) do
    puts '============start test suite============'
    $driver.driver_quit if $driver
  end
  c.after(:suite, type: :feature) do
    $driver.driver_quit if $driver
    puts '============finish test suite============'
  end

  ## hooks for all test suite
  c.before(:context, type: :feature) do
    # do something
  end
  c.after(:context, type: :feature) do
    # do something
  end

  ## hooks for each
  c.before(:example, type: :feature) do |example|
    # do something
  end
  c.after(:example, type: :feature) do |example| # example method deleted in RSpec3
    if example.exception
      save_screen_in(SCREENSHOT_SAVE_PATH_ERRORS,
                     "#{example.example_group.description}_#{DateTime.now.strftime("%Y-%m-%d-%H%M%S")}_failed_test")
    end

    $driver.driver_quit if $driver
  end

end