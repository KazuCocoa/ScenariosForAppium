# coding: utf-8

#####
## iPhone
#####
APP_PATH_IOS = "#{Dir.pwd}/iphone-build/Debug-iphonesimulator/example.app".freeze
BUNDLE_ID = "com.example"

#########
## common cap settings
#########
CAPS_TEST_TARGET_IOS = {
    app: APP_PATH_IOS, # 'safari'
    bundleId: BUNDLE_ID
}

CAPS_COMMON_IOS = {
    automationName: 'Appium',
    platformName: :ios
}

CAPS_LOCAL_IOS = {
    localizableStringsDir: 'ja.lproj', #use japanese localization
    language: 'ja',
    locale: 'ja_JP'
}

CAPS_KEYS_IOS = {
    interKeyDelay: 10 #The delay, in ms, between keystrokes sent to an element when typing.
}

CAPS_OTHER_IOS = {
    #autoAcceptAlerts: true, # set true if you need accept permission alert like location, photos and contacts
}

###########
#### 6 Plus x iOS8.1
###########
IOS_CAPS = {
    platformVersion: '8.1',
    deviceName: 'iPhone 6 Plus',
    calendarFormat: 'gregorian' # || japanese
}.merge(CAPS_TEST_TARGET_IOS)
               .merge(CAPS_COMMON_IOS)
               .merge(CAPS_KEYS_IOS)
               .merge(CAPS_LOCAL_IOS)
               .merge(CAPS_OTHER_IOS)
               .freeze

#####
## iPad x iOS7.1
#####
IOS_CAPS_IPAD_71 = {
    platformVersion: '8.1',
    deviceName: 'iPad Retina',
    calendarFormat: 'gregorian' # 西暦
}.merge(CAPS_TEST_TARGET_IOS)
               .merge(CAPS_COMMON_IOS)
               .merge(CAPS_KEYS_IOS)
               .merge(CAPS_LOCAL_IOS)
               .merge(CAPS_OTHER_IOS)
               .freeze

# capabilities for real device
IOS_CAPABILITIES_REAL_DEVICE = {
    automationName: 'Appium',
    platformName: 'iOS',
}.freeze
