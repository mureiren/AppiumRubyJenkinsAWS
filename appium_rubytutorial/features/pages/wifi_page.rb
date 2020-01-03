class WifiPage
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end



  def wifitextisdisplayed
    @driver.find_element(:uiautomator, 'new UiSelector().className("android.widget.TextView").text("WiFi")').displayed?
  end

  def tickwificheckbox
    @driver.find_element(:id, 'android:id/checkbox')
  end

  def tapwifisettingbutton
    b = @driver.find_element(:uiautomator, 'new UiSelector().className("android.widget.TextView").text("WiFi settings")')
    tap_action = Appium::TouchAction.new.tap(element: b)
    tap_action.perform
  end

  def enterwifiname(wifiname)
    @driver.find_element(:id, 'android:id/edit').send_keys(wifiname)
  end

  def clickokbutton
    @driver.find_element(:id, 'android:id/button1')
  end

  def clickchildcheckbox
    scroll_action = Appium::TouchAction.new.swipe(start_x:0.5,start_y:0.8,end_x:0.5,end_y:0.2,duration:1000)
    scroll_action.perform
    array_of_elements = find_elements(id:'android:id/checkbox')
    actual_child_button=array_of_elements[2]
    actual_child_button.click
    end
  end

