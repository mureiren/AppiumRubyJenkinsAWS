class ListPage
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end

  def preferencefromcodebutton
    @driver.find_element(:uiautomator, 'new UiSelector().className("android.widget.TextView").text("5. Preferences from code")')
  end

  def preferencedependbutton
    @driver.find_element(:uiautomator, 'new UiSelector().className("android.widget.TextView").text("3. Preference dependencies")')
  end
end