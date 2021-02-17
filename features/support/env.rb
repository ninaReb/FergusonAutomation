require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
#require 'test/unit/assertions'
#require 'webdrivers/chromedriver'
require 'webdrivers/chromedriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
   # config.default_wait_time = 20
    config.default_max_wait_time = 30
    config.app_host = 'https://ferguson.com'
end

RSpec.configure do |config|
    config.expect_with :rspec do |c|
      c.syntax = :expect
    end
  end

 # World(Test::Unit::Assertions)
