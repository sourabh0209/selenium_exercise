require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get("web-dev.mypick.se/admin")
driver.find_element(id: 'user_email').send_keys('super_admin@mypick.com')
driver.find_element(id: 'user_password').send_keys('admin1234')
driver.find_element(name: 'commit').click
puts "Admin successfully logged in."
sleep 10
driver.quit
