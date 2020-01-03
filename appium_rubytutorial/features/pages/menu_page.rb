class MenuPage
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end

  def preferencebutton
    wait_for{@driver.find_element(:uiautomator, 'new UiSelector().className("android.widget.TextView").text("Preference")').displayed?}
    @driver.find_element(:uiautomator, 'new UiSelector().className("android.widget.TextView").text("Preference")')
  end


end