module AppiumGesture

  # wait(timeout: 30, interval: 0.5, message: "example message")
  # default timeout is 30s, interval is 0.5
  # See ruby_lib GitHub page if you would like to know more.

  # find element with accessibility_id strategy
  def tap_name(element_name)
    sleep 0.5
    wait(timeout: 10, interval: 0.5, message: "failed to tap #{element_name} with timeout") {
      find_element(accessibility_id: element_name) }.click
  end

  # find element with xpath strategy
  # XPath is ambiguous strategy. So
  def tap_xpath(element_xpath)
    sleep 1
    wait(timeout: 10, interval: 0.5, message: "failed to tap #{element_xpath} with timeout") {
      find_element(xpath: element_xpath) }.click
  end

  # find element with id strategy
  def tap_id(element_id)
    sleep 0.5
    wait(timeout: 10, interval: 0.5, message: "failed to tap #{element_id} with timeout") {
      find_element(id: element_id) }.click
  end

  # find element with class strategy
  def tap_class(ui_class)
    sleep 0.5
    wait(timeout: 10, interval: 0.5, message: "failed to tap #{ui_class} with timeout") {
      find_element(class: ui_class) }.click
  end

  # find element with xpath strategy
  # in addition, the method search element with including words
  def tap_ele_include(element_name)
    sleep 0.5
    wait(timeout: 10, interval: 0.5, message: "failed to tap #{element_name} with timeout") {
      find(element_name) }.click
  end

  def tap_text(text_name)
    sleep 0.5
    wait(timeout: 10, interval: 0.5, message: "failed to tap #{text_name} with timeout") {
      text(text_name) }.click
  end

  def back_page
    wait(timeout: 10, interval: 0.5, message: 'failed to back with timeout') {
      back }
  end
end