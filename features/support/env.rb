require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'webdrivers'
require 'site_prism'


Capybara.register_driver :selenium do |driver|
  Capybara::Selenium::Driver.new(driver, :browser => :chrome)
end

Capybara.configure do
  Capybara.default_driver = :selenium
  #Capybara.page.driver.browser.manage.window.maximize
end
