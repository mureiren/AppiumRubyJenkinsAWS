require 'appium_lib'
require 'allure-cucumber'
require 'selenium-webdriver'
require 'page-object'
require "test/unit/assertions"
require "cucumber/core"
require "cucumber"

include Test::Unit::Assertions


def caps
  {caps: {
      deviceName: "HUAWEI Y6 2019",
      platformName: "Android",
      platformVersion: "9",
      app: (File.join(File.dirname(__FILE__), "SampleAppium.apk")),
      appPackage: "io.appium.android.apis",
      appActivity: "io.appium.android.apis.ApiDemos",
      automationName: "UiAutomator2",
      newCommandTimeout: "3600"
  }}
end

def wait_for
  Selenium::WebDriver::Wait.new(:timeout => 10).until {yield}
end



class Cucumber::Core::Test::Step
  def name
    return text if self.text == 'Before hook'
    return text if self.text == 'After hook'
    "#{source.last.keyword}#{text}"
  end
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

