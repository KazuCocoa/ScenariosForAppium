# coding: utf-8

module AppiumIosAlert

  def alert_accept_if_exist
    # from ruby_lib of driver.send(:bridge).acceptAlert
    alert_accept if execute_script('$.mainApp().alert().buttons().length > 0')
  end

  def alert_dismiss_if_exist
    # from ruby_lib of driver.send(:bridge).dismissAlert
    alert_dismiss if execute_script('$.mainApp().alert().buttons().length > 0')
  end

end
