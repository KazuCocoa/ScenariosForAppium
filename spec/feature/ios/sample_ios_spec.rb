require 'spec_helper'

describe 'search with google' do

  before :all do
    @device = 'iphone'
    appium_driver
  end

  after :each do
    driver_cleanup if example.exception
  end

  let(:word) { 'ゆき' }

  it 'iPhone端末を使う' do
    @device = 'iphone'
  end

  it 'URLにhttp;//google.comを入力する' do
    appium_driver.get 'http://google.com'
  end

  it 'Googleの検索欄に"ゆき"と入力する' do
    appium_driver.find_element(:id, 'lst-ib').send_keys(word)
  end

  it '検索を開始する' do
    appium_driver.find_element(:id, 'tsf').submit
  end

  it '検索結果が表示された？' do
    expect { driver_wait(3).until { appium_driver.find_element(:id, 'hdtb_msb') } }.not_to raise_error
  end

  it 'スクリーンショットを撮る' do
    save_picture_as(@device.to_s)
    driver_cleanup
  end
end