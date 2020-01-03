WIFINAME = "Test"

#--format AllureCucumber::CucumberFormatter --out allure-results --format pretty, this is just pretty just for reference

Given /^user is on \"([^\"]*)\"$/ do |argpage|
  @menu_page = MenuPage.new(@driver)
  @list_page = ListPage.new(@driver)
  @preference_page = PreferencePage.new(@driver)
  @wifi_page = WifiPage.new(@driver)

  if argpage == 'prefpage'
    puts @menu_page.preferencebutton.click
    puts @list_page.preferencefromcodebutton.click
  else
    if argpage == 'wifipage'
      puts @menu_page.preferencebutton.click
      puts @list_page.preferencedependbutton.click
      puts @wifi_page.wifitextisdisplayed
    end
  end
end

When /^user clicks \"([^\"]*)\"$/ do |button|
  @preference_page = PreferencePage.new(@driver)
  @wifi_page = WifiPage.new(@driver)

  if button == 'togbutton'
    puts @preference_page.toggleswitchbutton
  else
    if button == 'wifisetting'
      puts @wifi_page.tickwificheckbox.click
      puts @wifi_page.tapwifisettingbutton
      puts @wifi_page.enterwifiname(WIFINAME)
      puts @wifi_page.clickokbutton.click
    else
      if button == 'childcheckbox'
        puts @wifi_page.clickchildcheckbox
      end
    end
  end
end

Then /^toggle button is switched on$/ do
  @preference_page = PreferencePage.new(@driver)
  wait { assert_equal "ON", @driver.find_element(:id, "android:id/switch_widget").text }
end

Then /^wifi connection is added successfully$/ do
  @wifi_page = WifiPage.new(@driver)
  puts @wifi_page.tapwifisettingbutton
  wait { assert_equal "Test", @driver.find_element(:id, "android:id/edit").text }
  puts @wifi_page.clickokbutton.click
end


Then /^child checkbox is marked as turned on$/ do
  @preference_page = PreferencePage.new(@driver)
  array_of_elements = find_elements(id: 'android:id/checkbox')
  actual_child_button = array_of_elements[2]
  wait { assert_equal "true", actual_child_button.checked }
end







