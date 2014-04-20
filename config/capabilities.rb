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
  automationName: 'appium',
  platformName: 'iPhone',
  platformVersion: '6.1',
  deviceName: 'iPhone Retina (4-inch)', #only for ios simulator: 'iPhone Retina (3.5-inch)'
  browserName: 'safari'
  #app: 'safari'  #app: APP_PATH_IOS
}.freeze

# capabilities for Appium
IOS_CAPABILITIES_SAFARI_IPAD = {
  automationName: 'appium',
  platformName: 'iPad',
  platformVersion: '7.0',
  deviceName: 'iPad Retina',
  app: 'safari'
}.freeze
 
ANDROID_CAPABILITIES = {
  automationName: 'appium',
  platformName: 'Android',
  platformVersion: '4.2',
  #deviceName: '', #e.g. Nexus 4
  #app: APP_PATH_ANDROID
  browserName: 'chrome'
}.freeze

ANDROID_CAPABILITIES_SELENDROID = {
  automationName: 'selendroid',
  platformName: 'Android',
  platformVersion: '4.2',
  #deviceName: '', #e.g. Nexus 4
  app: 'chrome' # APP_PATH_ANDROID,
}.freeze
