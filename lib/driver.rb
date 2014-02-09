# coding: utf-8

def setupAppium(desired_capabilities, appium_server)
    # Net::Http, which is standard http module in Ruby, has a default
    # internal timeout of 60 secound.
    # We need to extend it because selenium use more than 60 secound
    # in many time.
    @client = @client || Selenium::WebDriver::Remote::Http::Default.new
    @client.timeout = 999999

    @driver = Selenium::WebDriver.for(:remote,
                                      http_client: @client,
                                      desired_capabilities: desired_capabilities,
                                      url: appium_server)
    # for Seledroid
    #@driver.extend Selenium::WebDriver::DriverExtensions::HasTouchScreen
    @driver.manage.timeouts.implicit_wait = 30 # seconds

    @driver
end


def waitAppiumDriver(time)
    @driver_wait = Selenium::WebDriver::Wait.new timeout: time
end
