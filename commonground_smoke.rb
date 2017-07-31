require 'selenium-webdriver'
require 'gmail'
require_relative 'Login'
# require 'rspec/expectations'
# include RSpec::Matchers

include Login

@commonground_initial_url = 'http://commongroundshreveport.com/'
@commonground_homeurl = 'http://www.commongroundshreveport.com/'

@driver = Selenium::WebDriver.for :firefox
@driver.navigate.to @commonground_initial_url

# expect(@driver.find_element(id: 'login').displayed?).to eql false

puts 'This is the current URL: ' + @driver.current_url

def send_email(status)
  @gmail = Gmail.connect(username, password)

  email = @gmail.compose do
    to 'Jenn.Kemp.Codes@gmail.com'

    if status == 'success'
     subject 'Your website is up and running!'
      body 'We have succesfully pinged your website and it is up and working'
      puts 'Success email has been sent'
    else
      subject 'Your website is not up working'
      body 'We have pinged your website and it is not functioning properly'
      puts 'Failure email has been sent'
      end
  end
  email.deliver!
end

if @driver.current_url == @commonground_homeurl
  puts 'current url is correct!'
  send_email('success')

else
  puts 'Sorry Captain! this URL is wrong!'
  send_email('failure')
end
