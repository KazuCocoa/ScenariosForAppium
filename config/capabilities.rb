# coding: utf-8

# please modify the following path to fit your app
#APP_PATH_IOS = '/Users/username/Library/Developer/Xcode/DerivedData/SampleForAppium-fmhghmrlprlpisbamziauoqidtwh/Build/Products/Debug-iphoneos/SampleForAppium.app'.freeze
APP_PATH_IOS = 'https://dl.dropboxusercontent.com/u/1265532/SampleForAppium.app.zip'.freeze
#APP_PATH_IOS = 'https://dl.dropboxusercontent.com/u/1265532/TestApp.app.zip'.freeze
 
APP_PATH_ANDROID = '/Users/username/Documents/test.apk'.freeze
 
APPIUM_SERVER = 'http://localhost:4723'.freeze
APPIUM_SERVER_URL = "#{APPIUM_SERVER}/wd/hub".freeze


SCREENSHOT_SAVE_PATH = "./screenshot/#{Date::today.to_s}/".freeze
FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH) unless FileTest.exist?(SCREENSHOT_SAVE_PATH)

# capabilities for Appium
IOS_CAPABILITIES = {
  browserName: '',
  device: 'iPhone',
  deviceName: 'iPhone Retina (4-inch)', #only for ios simulator: 'iPhone Retina (3.5-inch)'
  version: '7.0',
  #app: APP_PATH_IOS
  app: 'safari'
}.freeze

#new capability
IOS_CAPABILITIES = {
  automationName: 'appium',
  platformName: 'iOS',
  platformVersion: '7.0', #or version: '7.0'
  device: 'iPhone',
  deviceName: 'iPhone Retina (4-inch)',
  browserName: 'safari'#app: APP_PATH
}.freeze


# capabilities for Appium
IOS_CAPABILITIES_SAFARI = {
  browserName: '',
  device: 'iPhone',
  deviceName: 'iPhone Retina (4-inch)', #only for ios simulator: 'iPhone Retina (3.5-inch)'
  version: '7.0',
  app: 'safari'
}.freeze
 
# capabilities for Appium
IOS_CAPABILITIES_SAFARI_IPAD = {
  browserName: '',
  device: 'iPad',
  deviceName: 'iPad Retina',
  version: '7.0',
  app: 'safari'
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
