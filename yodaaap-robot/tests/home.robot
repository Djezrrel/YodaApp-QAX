*** Settings ***

Library  AppiumLibrary

*** Test Cases ***

Deve abrir a tela principal

    Open Application     http://localhost:4723
    ...                  platformName=Android
    ...                  deviceName=Pixel 8 API 31
    ...                  automationName=UIAutomator2
    ...                  platformVersion=12
    ...                  udid=emulator-5554
    ...                  autoGrantPermissions=true
    ...                  app=${EXECDIR}/app/yodapp-beta.apk
    
    #validar informação inicial
    Wait Until Page Contains     Yodapp
    Wait Until Page Contains     Mobile Training
    Wait Until Page Contains     by Papito

    Close Application



#     {
#   "platformName": "Android",
#   "appium:deviceName": "Pixel 8 API 31",
#   "appium:automationName": "UIAutomator2",
#   "appium:app": "C:\\QaX-Mobile\\yodaaap\\app\\yodapp-beta.apk",
#   "appium:platformVersion": "12",
#   "appium:udid": "emulator-5554",
#   "appium:autoGrantPermissions": true
# }