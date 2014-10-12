# coding: utf-8

module AppiumDriver
  #------------
  # basic operations
  # -----------

  # return instance of [Driver]
  def app_driver
    case @device
    when 'iphone'
      @driver ||= driver_setup(IOS_CAPS, APPIUM_SERVER_URL)
    when 'ipad'
      @driver ||= driver_setup(IOS_CAPS_IPAD, APPIUM_SERVER_URL)
    when 'android'
      @driver ||= driver_setup(ANDROID_CAPS, APPIUM_SERVER_URL)
    else
      @driver ||= driver_setup(@device, APPIUM_SERVER_URL)
    end
  end

  def driver_cleanup
    driver_quit if @driver
  end

#------------
# driver operations
# -----------

# return [Driver]
  def driver_setup(desired_capabilities, appium_server)

    server_caps = {
        debug: false, #true
        server_url: appium_server,
        wait: 20 #min
    }

    caps = { caps: desired_capabilities, appium_lib: server_caps }

    Appium::Driver.new(caps).start_driver

    # Define the methods on all objects.
    # Note that this can also be scoped to limit the potential for conflicts.
    # Example: Appium.promote_appium_methods ::Example::Spec
    # Another alternative is to not promote at all. Instead access methods via $driver
    Appium.promote_appium_methods Object

    @driver
  end

end
