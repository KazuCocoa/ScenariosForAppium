# coding: utf-8

def rand_str(length)
  str = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  Array.new(length){str[rand(str.size)]}.join
end

module AppiumCommon

#------------
# save screenshot
# -----------

  def save_screen_as(filename)
    FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH) unless FileTest.exist?(SCREENSHOT_SAVE_PATH)
    screenshot "#{SCREENSHOT_SAVE_PATH}/#{filename}.png"
  end

  def save_screen_with_05_as(filename)
    sleep 0.5
    save_screen_as(filename)
    sleep 0.5
  end

  def save_screen_with_1_as(filename)
    sleep 1
    save_screen_as(filename)
    sleep 1
  end

end
