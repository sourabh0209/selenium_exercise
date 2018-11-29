require 'selenium-webdriver'
EXPECTED_URL = "http://web-dev.mypick.se/sv/admin/admin_users"
Given(/^User must be an admin.$/) do
  @driver = Selenium::WebDriver.for :firefox
  @driver.navigate.to("http://web-dev.mypick.se/admin")
end

When (/^I entered the Admin's Email as email$/) do
  @driver.find_element(id: 'user_email').send_keys('super_admin@mypick.com')
end

And(/^I entered the password as password.$/) do
  @driver.find_element(id: 'user_password').send_keys('admin1234')    	
end
  
Then(/^I should be redirected to the admin's home page.$/) do
  @driver.find_element(name: 'commit').click 
end

And(/^Alert successfull message must be appeared.$/) do
  existing_url = @driver.current_url
  if (existing_url == EXPECTED_URL)
    puts "Admin successfully logged in."
  else
  	puts "Admin failed to login"
  end
  @driver.quit
end
