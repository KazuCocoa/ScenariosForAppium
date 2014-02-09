# coding: utf-8

require 'rubygems'
require 'selenium-webdriver'
require 'date'
require 'rspec'

Dir[File.join(File.dirname(__FILE__), "..", "config", "**/*.rb")].each { |f| require f }
Dir[File.join(File.dirname(__FILE__), "..", "lib", "**/*.rb")].each { |f| require f }

# if you would like to use factorygirl
#config.before(:all) do
#  FactoryGirl.reload
#end

# 絶対パスの取得
def absolute_app_path
    file = File.join(File.dirname(__FILE__), APP_PATH)
    raise "App doesn't exist #{file}" unless File.exist? file
    file
end
