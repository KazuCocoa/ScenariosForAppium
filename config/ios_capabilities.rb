# coding: utf-8

APP_PATH_IOS = "#{Dir.pwd}/iphone-build/Debug-iphonesimulator/example.app".freeze

#####
## iPhone
#####

CAPS_COMMON_IOS = {
    'appium-version' => '1.2.1',
    calendarFormat: 'gregorian', # japanese
    localizableStringsDir: 'ja.lproj', #use japanese localization
    interKeyDelay: 10, #The delay, in ms, between keystrokes sent to an element when typing.
    # autoAcceptAlerts: true, # if you need accept permission alert like location, photos and contacts, you need to acce
    #locale: 'ja_JP',
    language: 'ja'
}

# capabilities for Appium
IOS_CAPS = {
    automationName: 'Appium',
    platformName: :ios,
    platformVersion: '7.1', # 6.1, 7.0, 7.1 is available in xcode5.1
    deviceName: 'iPhone 5s', #only for ios simulator: 'iPhone Retina (3.5-inch)'
    app: APP_PATH_IOS,
    raw: CAPS_COMMON_IOS
}.freeze

#####
## iPad
#####

# capabilities for Appium
IOS_CAPS_IPAD = {
    automationName: 'Appium',
    platformName: :ios,
    platformVersion: '7.1', # 6.1, 7.0, 7.1 is available in xcode5.1
    deviceName: 'iPad Retina',
    app: APP_PATH_IOS,
    raw: CAPS_COMMON_IOS
}.freeze

# capabilities for real device
IOS_CAPABILITIES_REAL_DEVICE = {
    automationName: 'Appium',
    platformName: 'iOS',
}.freeze

