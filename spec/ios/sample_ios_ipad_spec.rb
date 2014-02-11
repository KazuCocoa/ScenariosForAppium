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

    end
 
    after :all do
 
    end
 
    before :each do
 
    end
 
    after :each do
    end
 
    context '' do
      it 'open google page' do
        @driver.get('https://docs.google.com/presentation/d/1MuRT5dyCFUoBmP_UGoHqripSD9-OR-W9wuFZ7k_E6Fw/edit#slide=id.g2b552edee_00')
      end

      it 'open login page' do
        @driver_wait.until { @driver.find_element(xpath: '//*[@id="Email"]').displayed? }

        @driver.find_element(name: 'Email').send_key 'fly.49.89.over@gmail.com'

        @driver.find_element(name: 'Passwd').send_key '***'

        @driver.find_element(name: 'signIn').click

        # { @driver.find_element(xpath: '//*[@id="header_buttons"]').displayed? }        
        #@driver.find_element(xpath: '//*[@id="header_buttons"]/li[2]/a').click
      end

      it 'wait until open page' do
        @driver_wait.until { @driver.find_element(xpath: '//*[@id="docs-aria-speakable"]').displayed? }
      end

      it 'go next page after 10 sec' do
        sleep 2
        @driver.find_element(xpath: '/html/body/div[4]/div[1]/div[4]/div').click
      end

      it 'go next page after 10 sec' do
        sleep 2
        @driver.find_element(xpath: '/html/body/div[4]/div[1]/div[4]/div').click
      end

      it 'go next page after 10 sec' do
        sleep 2
        @driver.find_element(xpath: '/html/body/div[4]/div[1]/div[4]/div').click
      end

      it 'go next page after 10 sec' do
        sleep 2
        @driver.find_element(xpath: '/html/body/div[4]/div[1]/div[4]/div').click
      end

      it 'go next page after 10 sec' do
        sleep 2
        @driver.find_element(xpath: '/html/body/div[4]/div[1]/div[4]/div').click
      end

      it 'go next page after 10 sec' do
        sleep 2
        @driver.find_element(xpath: '/html/body/div[4]/div[1]/div[4]/div').click
        sleep 2
      end

    end
  end
end
