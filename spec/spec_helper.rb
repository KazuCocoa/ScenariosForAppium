# coding: utf-8

require 'date'
require 'rspec'
require 'turnip'

require 'appium_lib'

Dir[File.join(File.dirname(__FILE__), "..", "config", "**/*.rb")].each { |f| require f }
Dir[File.join(File.dirname(__FILE__), "..", "lib", "**/*.rb")].each { |f| require f }

Dir.glob("spec/acceptance/#{ENV['os']}/step_definitions/#{ENV['scope']}/**/*steps.rb") { |f| load(f, true) }
Dir.glob('spec/acceptance/step_definitions/**/*steps.rb') { |f| load(f, true) }

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

OUT_REPORT='report'

RSpec.configure do |c|

  FileUtils.mkdir_p(OUT_REPORT) unless FileTest.exist?(OUT_REPORT)
  #c.output_stream ||= File.open("#{OUT_REPORT}/report-#{ENV['scope']}.html", 'w')

  c.include AppiumDriver

  c.include AppiumAndroid if ENV['os'] == 'android'
  c.include AppiumIos if ENV['os'] == 'ios'

  ## hooks for all
  c.before(:all, type: :feature) do
    $driver.driver_quit if $driver
  end
  c.after(:all, type: :feature) do
    # do something
  end

  ## hooks for each
  c.before(:each, type: :feature) do
    # do something
  end
  c.after(:each, type: :feature) do |example| # example method deleted in RSpec3
    if example.exception
      # do something after scenarios failed
      # like "After do |scenario|" in Cucumber
    end

    $driver.driver_quit if $driver
  end
end
