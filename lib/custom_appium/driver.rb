require 'appium_lib'

# light wrapper
require_relative 'commons/gesture'
require_relative 'commons/common'

module AppiumDriver
  #------------
  # basic operations
  # -----------

  include AppiumGesture
  include AppiumCommon

  # return instance of [Driver]
  def driver_start_with(caps, server_url)
    @driver ||= driver_start(caps, server_url)
  end

  def driver_cleanup
    driver_quit if @driver
  end

  #------------
  # driver operations
  # -----------

  # return [Driver]
  def driver_start(desired_capabilities, appium_server)

    server_caps = {
        debug: false, #true
        server_url: appium_server,
        wait: 60 # equal to @default_wait in appium_lib source code.
    }

    caps = { caps: desired_capabilities, appium_lib: server_caps }

    Appium::Driver.new(caps).start_driver

    # Define the methods on all objects.
    # Note that this can also be scoped to limit the potential for conflicts.
    # Example: Appium.promote_appium_methods ::Example::Spec
    # Another alternative is to not promote at all. Instead access methods via $driver
    Appium.promote_appium_methods RSpec::Core::ExampleGroup

    @driver
  end

end