import os
from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy
import time
from appium.options.android import UiAutomator2Options

# host_ip = os.getenv("HOST_IP", "localhost")
host_ip = os.getenv("HOST_IP", "host.docker.internal")

# 테스트 앱 열기
capabilities = UiAutomator2Options().load_capabilities({
  "platformName": "Android",
  "appium:deviceName": "galaxy",
  "appium:udid": "R3CN30JZ89F",
  "appium:automationName": "UiAutomator2",
  "appium:appPackage": "com.example.test_flutter",
  "appium:appActivity": ".MainActivity",
  "appium:autoGrantPermissions": "true",
  "appium:noReset": "true",
  "appium:newCommandTimeout": "3000"
})
driver = webdriver.Remote(command_executor=f"http://{host_ip}:4723", options=capabilities)

time.sleep(3)

# "Todo list" 클릭
el = driver.find_element(by=AppiumBy.ACCESSIBILITY_ID, value="Todo list")
el.click()

time.sleep(2)

# 스크롤
driver.swipe(700, 800, 0, 0, 1000)
driver.swipe(200, 500, 900, 1800, 1000)

time.sleep(3)








