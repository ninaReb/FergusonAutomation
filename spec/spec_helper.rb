require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'cucumber'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL 
end

 Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://ferguson.com'
#by ana - to clear cookies, sessions and localstorage
    Selenium::WebDriver::Chrome.path = AppConfig.selenium_chrome_path if AppConfig.selenium_chrome_path?
    Capybara::Selenium::Driver.new(app, browser: :chrome)
    Capybara.javascript_driver = :chrome

    config.after do
      if self.class.include?(Capybara::DSL)
        if Capybara.current_driver == :chrome
          Capybara.execute_script "localStorage.clear()"
        end
        browser = Capybara.current_session.driver.browser
        browser.manage.delete_all_cookies
        Capybara.reset_sessions!
      end
    end
#end ana
 end
