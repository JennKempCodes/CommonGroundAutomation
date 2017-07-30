require 'selenium-webdriver'
# require 'rspec/expectations'
# include RSpec::Matchers

@commonground_homeurl = "http://www.commongroundshreveport.com/"

@driver = Selenium::WebDriver.for :firefox
@driver.get @commonground_homeurl
# expect(@driver.find_element(id: 'login').displayed?).to eql false

puts "This is the current URL: " + @driver.current_url

if @driver.current_url == @commonground_homeurl
  puts "current url is correct!"
  send_success_email
else
  puts "Sorry Captain! this URL is wrong!"
  send_failure_email
  abort
end

# @commonground_homeurl = .to have_current_url(@people, "http://www.commongroundshreveport.com/": true)


# expect(@driver).to have_current_url(@people, "http@commonground_homeurl


def send_failure_email
end

def send_success_email

end