require 'selenium-webdriver'
# require 'rspec/expectations'
# include RSpec::Matchers

@commonground_initial_url = 'http://commongroundshreveport.com/'
@commonground_homeurl = 'http://www.commongroundshreveport.com/'

@driver = Selenium::WebDriver.for :firefox
@driver.navigate.to @commonground_initial_url
# expect(@driver.find_element(id: 'login').displayed?).to eql false

puts 'This is the current URL: ' + @driver.current_url

if @driver.current_url == @commonground_homeurl
  puts 'current url is correct!'
else
  puts 'Sorry Captain! this URL is wrong!'
  abort
end