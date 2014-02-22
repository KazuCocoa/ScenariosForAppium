# coding: utf-8

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
end

RSpec.configure do |c|
  c.include GoogleSearch
  c.after(:each) do
    driver_cleanup if example.exception
  end
end