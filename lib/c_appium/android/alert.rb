module AppiumAndroidAlert

  # https://github.com/appium/ruby_lib/blob/master/lib/appium_lib/android/element/alert.rb
  def ignore_wait_alert_accept_if_exist
    begin
      alert_accept
    rescue
      # nothing
    end
  end

  def ignore_wait_alert_dismiss_if_exist
    begin
      alert_dismiss
    rescue
      # nothing
    end
  end

  #alert_click value
  def click_alert(text)
    sleep 0.5
    alert_click text
  end

end