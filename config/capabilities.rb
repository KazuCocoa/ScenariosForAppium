# coding: utf-8

if ENV['appium_server']
  APPIUM_SERVER = ENV['appium_server'].freeze
else
  APPIUM_SERVER = 'http://127.0.0.1:4723'.freeze
end

APPIUM_SERVER_URL = "#{APPIUM_SERVER}/wd/hub".freeze

if ENV['scope']
  if ENV['caps']
    SCREENSHOT_SAVE_PATH =
        "./screenshot/#{ENV['scope']}/#{DateTime.now.strftime("%Y-%m-%d-%H%M%S")}_#{ENV['caps']}/"
        .freeze
  else
    SCREENSHOT_SAVE_PATH =
        "./screenshot/#{ENV['scope']}/#{DateTime.now.strftime("%Y-%m-%d-%H%M%S")}/"
        .freeze
  end

  SCREENSHOT_SAVE_PATH_ERRORS =
      "#{SCREENSHOT_SAVE_PATH}errors/"
      .freeze
else
  SCREENSHOT_SAVE_PATH =
      "./screenshot/#{DateTime.now.strftime("%Y-%m-%d-%H%M%S")}/"
      .freeze

  SCREENSHOT_SAVE_PATH_ERRORS =
      "#{SCREENSHOT_SAVE_PATH}errors/"
      .freeze
end

FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH) unless FileTest.exist?(SCREENSHOT_SAVE_PATH)
FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH_ERRORS) unless FileTest.exist?(SCREENSHOT_SAVE_PATH_ERRORS)
