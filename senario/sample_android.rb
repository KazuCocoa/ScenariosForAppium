# -*- encoding: utf-8 -*-

require 'rubygems'
require 'selenium-webdriver'
require 'date'
require 'rspec'

require '../parameters' # obtain each parameters

describe 'lalacall basic functional check' do

  before :all do
    # Net::Http, which is standard http module in Ruby, has a default
    # internal timeout of 60 secound.
    # We need to extend it because selenium use more than 60 secound
    # in many time.
    @client = Selenium::WebDriver::Remote::Http::Default.new
    @client.timeout = 120 # secound
    @driver = Selenium::WebDriver.for(:remote,
                                      :http_client => @client,
                                      :desired_capabilities => ANDROID_CAPABILITIES,
                                      :url => SERVER_RUL)
    @driver.manage.timeouts.implicit_wait = 10 # seconds
    @driver_wait = Selenium::WebDriver::Wait.new :timeout => 30
  end

  after :all do
    @driver.quit if @driver
  end

  before :each do
  end

  after :each do
  end

  # sinario
  # 初期化
  describe '' do
    
    before :all do

    end

    after :all do

    end

    before :each do

    end

    after :each do

    end

    context '' do
      it do
      end
    end
  end

  describe '' do
    context '' do
      it do
      end
    end
  end
end