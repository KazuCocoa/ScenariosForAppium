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
  desired_capabilities.merge(server_url: appium_server)

  Appium::Driver.new(desired_capabilities).start_driver

end
