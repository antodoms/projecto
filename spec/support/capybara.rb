require "capybara"
require "selenium-webdriver"
require "webdrivers"

Selenium::WebDriver.logger.level = :error

Capybara.register_driver :chrome_headless do |app|
  options = ::Selenium::WebDriver::Chrome::Options.new

  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--window-size=1400,1400')

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :chrome_headless

Capybara.configure do |config|
  config.run_server = ENV["HOST_ADDRESS"].nil?
  config.default_driver = :chrome_headless
  config.app_host = ENV["HOST_ADDRESS"] if ENV["HOST_ADDRESS"].present?
end
