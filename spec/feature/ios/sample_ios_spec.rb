require 'spec_helper'

describe 'search with google' do
  before(:all) do
    driver_cleanup
  end

  describe 'with iPhone6 x ios7' do
    after(:each) do
      driver_cleanup if example.exception
    end

    context 'search ゆき' do
      before(:all) do
        @device = 'iphone'
        appium_driver
      end
      after(:all) do
        driver_cleanup
      end

      let(:word) { 'ゆき' }
      let(:url) { 'http://google.com' }

      it 'URLにhttp;//google.comを入力する' do
        appium_driver.get(url)
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
      end
    end

    context 'search 本' do
      before(:all) do
        @device = 'iphone'
        appium_driver
      end
      after(:all) do
        driver_cleanup
      end

      let(:word) { '本' }
      let(:url) { 'http://google.com' }

      it 'URLにhttp;//google.comを入力する' do
        appium_driver.get(url)
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
      end
    end

  end
end