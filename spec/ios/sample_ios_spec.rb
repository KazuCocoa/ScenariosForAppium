require 'spec_helper'

describe 'sample scenario' do

  before :all do
    @driver = setupAppium(IOS_CAPABILITIES, APPIUM_SERVER_URL)
    @driver_wait = waitAppiumDriver(30)
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
      it '' do
      end
    end
  end
end