# coding: utf-8

module AppiumGesture
  # find element with accessibility_id strategy
  def tap_name(element_name)
    wait { find_element(accessibility_id: element_name) }.click
  end

  # find element with xpath strategy
  def tap_xpath(element_xpath)
    wait { find_element(xpath: element_xpath) }.click
  end

  # find element with id strategy
  def tap_id(element_id)
    wait { find_element(id: element_id) }.click
  end

  # find element with xpath strategy
  # in addition, the method search element with including words
  def tap_ele_include(element_name)
    wait { find(element_name) }.click
  end

  def tap_text(text_name)
    wait { text(text_name) }.click
  end

  def back_page
    back
  end
end
