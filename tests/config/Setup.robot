*** Settings ***
Documentation     Test suite pour login avec définition de keywords
Library           AppiumLibrary

*** Variables ***
${ACCESS_KEY}         47ef4602-e952-4931-bec9-4c305e306776
${USERNAME}           test32165461561
${REMOTE_URL}         https://${USERNAME}:${ACCESS_KEY}@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${APP}                storage:f0a08710-1518-4b6c-a9b9-4d3faa32a476
${DEVICE_NAME}        Samsung.*Galaxy.*
${PLATFORM_VERSION}   15
${AUTOMATION_NAME}    UiAutomator2
${APP_PACKAGE}        com.saucelabs.mydemoapp.android
${APP_ACTIVITY}       com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${NEW_COMMAND_TIMEOUT}     300
${SESSION_NAME}       MobileDemoAppTest
${SESSION_RETRY}      2
${SESSION_TIMEOUT}    300000

*** Test Cases ***


Open Demo App
    [Documentation]    Ouvre l'application de démo sur Sauce Labs

    ${sauce_options}=    Create Dictionary
    ...    name=${SESSION_NAME}
    ...    sessionCreationRetry=${SESSION_RETRY}
    ...    sessionCreationTimeout=${SESSION_TIMEOUT}
    ...    appiumVersion=latest

    Open Application    ${REMOTE_URL}
    ...    platformName=android
    ...    appium:app=${APP}
    ...    appium:deviceName=${DEVICE_NAME}
    ...    appium:platformVersion=${PLATFORM_VERSION}
    ...    appium:automationName=${AUTOMATION_NAME}
    ...    appium:appPackage=${APP_PACKAGE}
    ...    appium:appActivity=${APP_ACTIVITY}
    ...    appium:newCommandTimeout=${NEW_COMMAND_TIMEOUT}
    ...    sauce:options=${sauce_options}
    Sleep    5s
    Capture Page Screenshot
    Close Application