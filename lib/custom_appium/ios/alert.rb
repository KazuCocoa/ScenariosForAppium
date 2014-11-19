# coding: utf-8

module AppiumIosAlert

  # UIAutomation doesn't fail with '$.mainApp().alert()'.
  # Should get element to identify return true or false.
  def alert_accept_if_exist
    # from ruby_lib of driver.send(:bridge).acceptAlert
    alert_accept if execute_script('$.mainApp().alert().buttons().length > 0')
  end

  def alert_dismiss_if_exist
    # from ruby_lib of driver.send(:bridge).dismissAlert
    alert_dismiss if execute_script('$.mainApp().alert().buttons().length > 0')
  end

  # waiting alert ...
  def wait_alert_accept_if_exist
    wait_true(timeout: 10, message: 'waiting alert dialog via wait_alert_accept_until_display_alert') {
      execute_script('$.mainApp().alert().buttons().length > 0')
    }
    alert_accept_if_exist
  end

  def wait_alert_dismiss_if_exist
    wait_true(timeout: 10,  message: 'waiting alert dialog via wait_alert_dismiss_until_display_alert') {
      execute_script('$.mainApp().alert().buttons().length > 0')
    }
    alert_dismiss_if_exist
  end

  ## ignore raise error when waiting alert ...
  def ignore_wait_alert_accept_if_exist
    begin
      wait_alert_accept_if_exist
    rescue
      # nothing
    end
  end

  def ignore_wait_alert_dismiss_if_exist
    begin
      wait_alert_dismiss_if_exist
    rescue
      # nothing
    end
  end
end
