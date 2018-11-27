require 'selenium-webdriver'
class SiteElement

  def initialize(url)
    @driver=Selenium::WebDriver.for :firefox
    @driver.manage.window.maximize
    @driver.navigate.to "http://web-dev.mypick.se/admin"
  end

  def login_username()
    return @driver.find_element(:id,'user_email')
  end

  def login_password()
    return @driver.find_element(:id,'user_password')
  end

  def submit_button()
    return @driver.find_element(:name,'commit')
  end

  def logout_link()
    @driver.find_element(:link_text,'Logout')
  end

  def close_browser()
    @driver.quit
  end

end
