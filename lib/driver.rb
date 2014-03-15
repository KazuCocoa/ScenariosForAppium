# coding: utf-8

def appium_driver
  case @device
    when 'iphone'
      @driver ||= driver_setup(IOS_CAPABILITIES, APPIUM_SERVER_URL)
    when 'android'
      @driver ||= driver_setup(ANDROID_CAPABILITIES, APPIUM_SERVER_URL)
  end
end

def driver_cleanup
  appium_driver.quit if @driver
  @driver = nil
end

def save_picture_as(filename)
    FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH) unless FileTest.exist?(SCREENSHOT_SAVE_PATH)
    appium_driver.save_screenshot "#{SCREENSHOT_SAVE_PATH}/#{filename}.png"
end

def driver_wait(time)
  Selenium::WebDriver::Wait.new(timeout: time)
end


# return [Driver]
def driver_setup(desired_capabilities, appium_server)
  # Net::Http, which is standard http module in Ruby, has a default
  # internal timeout of 60 secound.
  # We need to extend it because selenium use more than 60 secound
  # in many time.
  @client = @client || Selenium::WebDriver::Remote::Http::Default.new
  @client.timeout = 120

  @driver ||= Selenium::WebDriver.for(:remote,
                                    http_client: @client,
                                    desired_capabilities: desired_capabilities,
                                    url: appium_server)
  # for Seledroid
  #@driver.extend Selenium::WebDriver::DriverExtensions::HasTouchScreen
  @driver.manage.timeouts.implicit_wait = 30 # seconds

  @driver
end
