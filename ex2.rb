require "selenium-webdriver"

@driver = Selenium::WebDriver.for :firefox
@driver.navigate.to "http://web-dev.mypick.se/en/admin"
@driver.manage.window.maximize
@driver.find_element(:id,'user_email').send_keys "super_admin@mypick.com"
@driver.find_element(:id,'user_password').send_keys "admin1234"
@driver.find_element(:name,'commit').click


if @driver.title == "MyPick admin"
  puts"Admin successfully logged in."
  @driver.find_element(:xpath, '/html/body/div[1]/section[1]/div/div/div[2]/a').click
  @driver.find_element(:name,'admin[first_name]').send_keys "Automate"
  @driver.find_element(:name,'admin[last_name]').send_keys "Admin"
  @driver.find_element(:name,'admin[email]').send_keys "admin@mypick.se"
  @driver.find_element(:name,'admin[password]').send_keys "admin1234"
  @driver.find_element(:name,'admin[password_confirmation]').send_keys "admin1234"
  @driver.find_element(:name, 'submit').click

  logout_button = @driver.find_element(:class_name,'text-link')
  logout_button.click
else
  puts 'Admin failed to login.'
end

@driver.quit
