module GoogleSearch
  step 'test with :device' do |device|
    @device = device
  end

  step 'go to :target_site' do |target_site|
    appium_driver.get target_site
  end

  step 'input :word in search field' do |word|
    appium_driver.find_element(:id, 'lst-ib').send_keys(word)
  end

  step 'submit form' do
    appium_driver.find_element(:id, 'tsf').submit
  end

  step 'display search page ?' do
    #wait = Selenium::WebDriver::Wait.new(timeout: 3)
    expect { driver_wait(3).until { appium_driver.find_element(:id, 'hdtb_msb') } }.not_to raise_error
  end

  step 'save screenshot :number' do |number|
    save_picture_as("#{@device.to_s}-#{number}")
    driver_cleanup
  end

  step 'I do action as the following steps:' do |table|
    table.hashes.each do |hash|
      case hash['Action']
      when 'go_site' then
        appium_driver.get hash['Target']
      when 'input_field' then
        appium_driver.find_element(:id, 'lst-ib').send_keys(hash['Target'])
      when 'submit' then
        appium_driver.find_element(:id, 'tsf').submit
      end
    end
  end
  
end

RSpec.configure do |c|
  c.include GoogleSearch
end