module BasicSteps

  def app_driver(device, server_url)
    case device
    when 'iphone'
      driver_start_with(IOS_CAPS, server_url)
    when 'ipad'
      @driver ||= driver_start_with(IOS_CAPS_IPAD, server_url)
    when 'android'
      @driver ||= driver_start_with(ANDROID_CAPS, server_url)
    else
      @driver ||= driver_start_with(device, server_url)
    end
  end

  # Device
  step ':device で試験を行う' do |device|
    app_driver(device, APPIUM_SERVER_URL)
  end

  step '私は :time 秒待つ' do |time|
    sleep time.to_f
  end

  step 'I close app' do
    driver_cleanup
  end

  # gesture - we must wait a little time because of animation
  ## Tap
  step '私は :name をタップする' do |name|
    sleep 1
    tap_name(name)
  end

  step '私は :xpath のxpathをタップする' do |xpath|
    sleep 1
    tap_xpath(xpath)
  end

  step '私は :ele を含む文字をタップする' do |ele|
    sleep 1
    tap_ele_include(ele)
  end

  # textで指定した文字列を含む要素に対してタップ操作をする
  # '私は :name をタップする'との違いは、要素の文字列が完全一致かどうか
  step '私は :text のテキストをタップする' do |text|
    sleep 1
    tap_text(text)
  end

  ## back to previous page
  step '私は前のページに戻る' do
    sleep 1.5
    back_page
  end

  # Input text
  step '私は :text と :value に文字を入力する' do |text, value|
    sleep 0.5
    find_element(:xpath, "//*[@value=#{value}]").send_keys text
  end

  step 'スクリーンショットを :filename という名前で撮る' do |filename|
    save_screen_with_1_as(filename)
  end

end

RSpec.configure do |c|
  c.include BasicSteps
end