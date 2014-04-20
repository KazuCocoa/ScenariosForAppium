# coding: utf-8

require 'selenium-webdriver'
require 'date'
require 'rspec'
require 'turnip'
require 'appium_lib'

Dir[File.join(File.dirname(__FILE__), "..", "config", "**/*.rb")].each { |f| require f }
Dir[File.join(File.dirname(__FILE__), "..", "lib", "**/*.rb")].each { |f| require f }

Dir.glob('spec/**/*steps.rb') { |f| load(f, true) }
