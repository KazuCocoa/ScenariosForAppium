# -*- encoding: utf-8 -*-

# please modify the following path to fit your app
#APP_PATH_IOS = '/Users/kazuaki/Library/Developer/Xcode/DerivedData/SampleForAppium-fmhghmrlprlpisbamziauoqidtwh/Build/Products/Debug-iphoneos/SampleForAppium.app'.freeze
#APP_PATH_IOS = './example/ios/SampleForAppium.app.zip'.freeze
APP_PATH_IOS = 'https://github.com/KazuCocoa/sampleSenarioForAppium/blob/master/example/ios/TestApp.app.zip'.freeze

APP_PATH_ANDROID = '/Users/username/Documents/test.apk'.freeze

TARGET_SERVER = 'http://localhost:4723'.freeze

SCREENSHOT_SAVE_PATH = "#{Date::today.to_s}/".freeze
FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH) unless FileTest.exist?(SCREENSHOT_SAVE_PATH)

# 絶対パスの取得
def absolute_app_path
    file = File.join(File.dirname(__FILE__), APP_PATH)
    raise "App doesn't exist #{file}" unless File.exist? file
    file
end

# capabilities for Appium
IOS_CAPABILITIES = {
  'browserName' => '',
  'device' => 'iPhone',
  'deviceName' => 'iPhone Retina (4-inch)', #only for ios simulator: 'iPhone Retina (3.5-inch)'
  'version' => '6.1',
  'app' => APP_PATH_IOS
}.freeze

ANDROID_CAPABILITIES = {
  'browserName' => '',
  'device' => 'Android',
  'version' => '4.2',
  'app' => APP_PATH_ANDROID,
  'app-package' => 'com.example',
  'app-activity' => '.views.InitialActovoty',
  'newCommandTimeout' => 60,
  'app-wait-activity' => '.views.InitialActovoty'
  #'device-ready-timeout' => 5
}.freeze

SERVER_RUL = "#{TARGET_SERVER}/wd/hub".freeze
