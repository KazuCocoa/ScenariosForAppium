module AppiumGestureIos

  # I get an error after this scroll_to
  # info: [debug] Socket data being routed.
  # info: [debug] Got null result from instruments
  # error: Couldn't parse result buffer: SyntaxError: Unexpected end of input
  # info: [debug] Waited for 5049ms so far
  def scroll_to_accessibility_id(element_name)
    #execute_script("au.getElementByAccessibilityId('#{element_name}').scrollToVisible();")
    element = wait(timeout: 10, interval: 0.5, message: "failed to tap #{element_name} with timeout") {
      find_element(accessibility_id: element_name) }
    execute_script('mobile: scroll', element)
  end

end