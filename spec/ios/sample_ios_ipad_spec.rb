require 'spec_helper'
 
describe 'sample scenario for ipad' do
 
  before :all do
    @driver = setupAppium(IOS_CAPABILITIES_SAFARI_IPAD, APPIUM_SERVER_URL)
    @driver_wait = waitAppiumDriver(30)
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
