module AppiumDeviceInfos

  ### Settings
  # capabilities
  def caps_platform_name
    driver_attributes[:caps][:platformName] # driver_attributes defined in appium_lib
  end

  def caps_platform_version
    driver_attributes[:caps][:platformVersion] # driver_attributes defined in appium_lib
  end

  def caps_device_name
    driver_attributes[:caps][:deviceName] # driver_attributes defined in appium_lib
  end

  ## for iOS
  def ios8?
    return true if ios8_1? || ios8_0?
    false
  end

  def ios8_1?
    return true if caps_platform_version == '8.1'
    false
  end
  def ios8_0?
    return true if caps_platform_version == '8.0'
    false
  end


  def iphone6?
    return true if caps_device_name == 'iPhone 6'
    false
  end

  def iphone6plus?
    return true if caps_device_name == 'iPhone 6 Plus'
    false
  end

end