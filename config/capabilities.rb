# coding: utf-8

if ENV['appium_server']
  APPIUM_SERVER = ENV['appium_server'].freeze
else
  APPIUM_SERVER = 'http://127.0.0.1:4723'.freeze
end

APPIUM_SERVER_URL = "#{APPIUM_SERVER}/wd/hub".freeze

OUT_PATH = "./report/#{DateTime.now.strftime("%Y-%m-%d-%H%M%S")}/".freeze
OUT_REPORT_PATH = "#{
def get_result_path(out_dir, scope, caps)
  if scope && caps
    "#{out_dir}/#{scope}-#{caps}/"
  elsif scope
    "#{out_dir}/#{scope}/"
  else
    "#{out_dir}/non-scope/"
  end
end
get_result_path(OUT_PATH, ENV['scope'], ENV['caps'])
}".freeze
SCREENSHOT_SAVE_PATH = "#{OUT_REPORT_PATH}/screenshot/".freeze
SCREENSHOT_SAVE_PATH_ERRORS = "#{SCREENSHOT_SAVE_PATH}errors/".freeze

OUT_REPORT = "#{OUT_REPORT_PATH}/turnip_report.html".freeze

FileUtils.mkdir_p(OUT_PATH) unless FileTest.exist?(OUT_PATH)
FileUtils.mkdir_p(OUT_REPORT_PATH) unless FileTest.exist?(OUT_REPORT_PATH)
FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH) unless FileTest.exist?(SCREENSHOT_SAVE_PATH)
FileUtils.mkdir_p(SCREENSHOT_SAVE_PATH_ERRORS) unless FileTest.exist?(SCREENSHOT_SAVE_PATH_ERRORS)
