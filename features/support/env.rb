require "capybara/cucumber"
# require "selenium-webdriver"
require "webdrivers/chromedriver"
require "site_prism"
require "pry"
require_relative "helper"
require_relative "page_helper.rb"

World(Helper)
World(Pages)

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  @driver = :selenium_chrome_headless
else
  puts "Invalid browser"
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = "https://www.advantageonlineshopping.com"
  config.default_max_wait_time = 10
end
