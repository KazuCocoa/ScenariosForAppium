module AppiumIosActionSheet

  # tap particular text if exist
  def tap_action_sheet_if_exist(text)
    sleep 1 # wait for animation
    if wait_true(message: "failed to wait #{text} on actionsheet with timeout") {
      execute_script('$.mainApp().actionSheet().buttons().length > 0') }
      execute_script("$.mainApp().actionSheet().buttons()['#{text}'].tap();")
    end
  end

  def ignore_tap_alert_if_exist(text)
    begin
      tap_action_sheet_if_exist(text)
    rescue
      # nothing
    end
  end
end