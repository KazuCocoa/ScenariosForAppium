# coding: utf-8

require 'date'
require 'rspec'

Dir[File.join(File.dirname(__FILE__), "..", "lib", "**/*.rb")].each { |f| require f }
Dir[File.join(File.dirname(__FILE__), "..", "config", "**/*.rb")].each { |f| require f }

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

RSpec.configure do |c|

  c.include AppiumDriver

  if ENV['os'] == 'android'
    c.include AppiumAndroidKey
  elsif ENV['os'] == 'ios'
    c.include AppiumIosKey
    c.include AppiumIosAlert
  end

  ## hooks for all
  c.before(:all, type: :feature) do
    $driver.driver_quit if $driver
  end
  c.after(:all, type: :feature) do
    # do something
  end

  ## hooks for each
  c.before(:each, type: :feature) do |example|
    # do something
  end
  c.after(:each, type: :feature) do |example| # example method deleted in RSpec3
    if example.exception
      save_screen_in(SCREENSHOT_SAVE_PATH_ERRORS,
                     "#{example.example_group.description}_#{DateTime.now.strftime("%Y-%m-%d-%H%M%S")}")
    end

    $driver.driver_quit if $driver
  end
end
