class PreferencePage
  attr_accessor :driver

  def initialize(driver)
    @driver = driver
  end

  def toggleswitchbutton
    b = @driver.find_element(:id, 'android:id/switch_widget')
    tap_action = Appium::TouchAction.new.tap(element: b, x:0.5, y:0.5)
    tap_action.perform
  end

  def clickchildcheckbox
    @driver.find_element(:id, 'android:id/checkbox')
  end

end