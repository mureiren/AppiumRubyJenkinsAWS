# AppiumRubyJenkinsAWS

First ruby repository. This project tests APIDemos app using Appium Ruby cucumber framework.

## Prerequisites

* Ruby => 2.6.5
* Ruby mine IDE => 2019.3
* Appium Desktop => 1.15.1
*  Android sdk and tools (required)
* Please change the capabilities accordingly in the base test to run it on your devices
https://github.com/mureiren/AppiumRubyJenkinsAWS/blob/master/appium_rubytutorial/features/support/env.rb


### Setup
Ensure to install/include the necessary gem files via Gemfile

### Run tests Locally:
```
If you are using cucumber.yml to create your profiles then run using:
cucumber -p <profile specified in your cucumber yml file>


Alternativley if you want to run using features directory of given feature file then use:
cucumber features/example.feature -t @tag DEVICE_NAME='your device name' in my i case used
cucumber features/APIDemos.feature -t @C1 DEVICE_NAME='HUAWEI Y6 2019'

*N.B* the tag name can be anything that you would have specified in your feature file. In my case i used C1.

```

### Run tests on  AWS:
You need to have an aws account created. Instructions on how to create a project to run tests on aws can be found at. #Head to Deploying Appium/TestNG tests to Device Farm section# 
at https://aws.amazon.com/blogs/mobile/testing-mobile-apps-with-cucumber-and-appium-through-testng-on-aws-device-farm/ to get started.

#N.B# The instructions are based on client language Java.In my case i had to select Appium Ruby from Test dropdown under the "configure your test"section.
Remember to include the same  test commands used to run tests locally in YAML spec file. Continue to follow instruction until when prompted to run tests.

If you are using Appium and Ruby as a client language to test on Android devices then you might want to follow the steps that are specific for Ruby:
https://docs.aws.amazon.com/devicefarm/latest/developerguide/test-types-android-appium-ruby.html

### Sample reports from both Jenkins and AWS

#Cucumber report:#
![Cucumber](https://user-images.githubusercontent.com/53050573/71786828-2bbe8800-3008-11ea-920f-87506e8dd8a7.PNG)


#Jenkins AWS Devicfarm trend results#
![AWSdevicefarm](https://user-images.githubusercontent.com/53050573/71786884-dcc52280-3008-11ea-8bbb-ed555aa95599.PNG)


#AWS devicefarm Testrun report#
![AWS_testrun_results](https://user-images.githubusercontent.com/53050573/71787052-8a850100-300a-11ea-811f-bbf9712ba58e.PNG)



