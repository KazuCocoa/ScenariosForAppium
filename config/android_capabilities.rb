# coding: utf-8

APP_PATH_ANDROID = "#{Dir.pwd}apk/example.apk".freeze

CAPS_COMMON_ANDROID = {
    'appium-version' => '1.2.1'
    #resetKeyboard: true,
    #unicodeKeyboard: true
}

#for Appium
ANDROID_CAPS = {
    automationName: 'Appium',
    platformName: :android,
    platformVersion: '4.2',
    deviceName: 'Android',
    app: APP_PATH_ANDROID,
    raw: CAPS_COMMON_ANDROID
}.freeze

ANDROID_CAPS_DISABLE_AUTOLAUNCH = {
    automationName: 'Appium',
    platformName: :android,
    platformVersion: '4.2',
    deviceName: 'Android',
    app: '',
    appPackage: 'com.sample.activities', # you should replace
    appWaitActivity: '.main', # you should replace
    autoLaunch: false,
    raw: CAPS_COMMON_ANDROID
}

ANDROID_CAPABILITIES_DEBUG = {
    platformName: 'Android',
    platformVersion: '4.2',
    app: APP_PATH_ANDROID,
    raw: CAPS_COMMON_ANDROID
}.freeze

# for selendroid
SELENDROID_CAPABILITIES = {
    automationName: 'appium',
    platformName: 'Selendroid',
    platformVersion: '4.1',
    app: APP_PATH_ANDROID,
    raw: CAPS_COMMON_ANDROID
}.freeze

SELENDROID_CAPABILITIES_DEBUG = {
    automationName: 'appium',
    platformName: 'Selendroid',
    platformVersion: '4.1',
    app: APP_PATH_ANDROID,
    raw: CAPS_COMMON_ANDROID
}.freeze
