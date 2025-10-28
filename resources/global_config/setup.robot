*** Settings ***
Variables    ../../config/config_manager.py
Library      AppiumLibrary
Resource     ../config_keywords.robot

*** Keywords ***
Open Demo App
    ${TAGS}=    Create List    accessibilite    mobile    android
    ${SAUCE_OPTIONS}=    Create Dictionary
    ...    username=${username}
    ...    accessKey=${access_key}
    ...    name=${session_name}
    ...    build=${build}
    ...    sessionCreationRetry=${session_retry}
    ...    sessionCreationTimeout=${session_timeout}
    ...    appiumVersion=latest
    ...    tags=${TAGS}

    Open Application    ${remote_url}
    ...    platformName=android
    ...    appium:app=${app}
    ...    appium:deviceName=${device_name}
    ...    appium:platformVersion=${platform_version}
    ...    appium:automationName=${automation_name}
    ...    appium:appPackage=${app_package}
    ...    appium:appActivity=${app_activity}
    ...    appium:newCommandTimeout=${new_command_timeout}
    ...    sauce:options=${SAUCE_OPTIONS}
