require "capybara/cucumber"
# require "selenium-webdriver"
require "webdrivers/chromedriver"
require "site_prism"
require "pry"
require_relative "helper"
require_relative "page_helper.rb"

World(Helper)
World(Pages)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://www.advantageonlineshopping.com"
  config.default_max_wait_time = 10
end
