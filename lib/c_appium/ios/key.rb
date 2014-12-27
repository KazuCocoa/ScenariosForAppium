module AppiumIosKey

  # keyboard
  def enter_search_button_ja_local
    sleep 0.5
    hide_keyboard '検索'
  end

  def enter_search_button_en_local
    sleep 0.5
    hide_keyboard 'Search'
  end

end