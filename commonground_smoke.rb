require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

@driver = Selenium::WebDriver.for :firefox
@driver.get "http://www.commongroundshreveport.com/"
# expect(@driver.find_element(id: 'login').displayed?).to eql false

expect(@driver).to have_current_url(@people, "http://www.commongroundshreveport.com/": true)
