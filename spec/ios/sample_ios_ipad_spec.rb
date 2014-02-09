require 'spec_helper'
 
describe 'sample scenario for ipad' do
 
  before :all do
    # Net::Http, which is standard http module in Ruby, has a default
    # internal timeout of 60 secound.
    # We need to extend it because selenium use more than 60 secound
    # in many time.
    @client = Selenium::WebDriver::Remote::Http::Default.new
    @client.timeout = 120 # secound
    @driver = Selenium::WebDriver.for(:remote,
                                      :http_client => @client,
                                      :desired_capabilities => IOS_CAPABILITIES_SAFARI_IPAD,
                                      :url => SERVER_RUL)
    @driver.manage.timeouts.implicit_wait = 10 # seconds
    @driver_wait = Selenium::WebDriver::Wait.new :timeout => 60
  end
 
  after :all do
    @driver.quit if @driver
  end
 
  before :each do
  end
 
  after :each do
  end
 
  # scenario
  # 初期化
  describe '' do
 
    before :all do
      @driver.get('https://docs.google.com/document/d/1lNM-UXOP2ttWLrRSwx76dLgxaeFtontlOegsg3i1_mU/edit?usp=drive_web')
    end
 
    after :all do
 
    end
 
    before :each do
 
    end
 
    after :each do
    end
 
    context '' do
      it 'open login page' do
        @driver_wait.until { @driver.find_element(xpath: '//*[@id="header_buttons"]').displayed? }
        @driver.find_element(xpath: '//*[@id="header_buttons"]/li[2]/a').click
      end
    end
  end
end
