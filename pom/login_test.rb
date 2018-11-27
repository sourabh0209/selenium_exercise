require 'selenium-webdriver'
require_relative 'site_element.rb'
    #define new browser
browser=SiteElement.new("http://web-dev.mypick.se/admin")
    #input user name
browser.login_username.send_keys('super_admin@mypick.com')
    #input password
browser.login_password.send_keys('admin1234')
    #click on submit button
browser.submit_button.click
browser.close_browser
