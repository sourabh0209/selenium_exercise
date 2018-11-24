require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://google.com"

element = driver.find_element(name: 'q')
element.send_keys "Hello WebDriver!"
element.submit

puts driver.execute_script("return window.location.pathname")

puts driver.title

driver.quit