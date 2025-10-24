*** Settings ***
Documentation     Test suite pour login avec définition de keywords
Library           AppiumLibrary

*** Variables ***
${ACCESS_KEY}         
${USERNAME}           
${REMOTE_URL}         https://${USERNAME}:${ACCESS_KEY}@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${APP}                storage:ea3cb33a-387f-4f41-8953-3155f731572c
${DEVICE_NAME}        Samsung.*Galaxy.*
${PLATFORM_VERSION}   15
${AUTOMATION_NAME}    UiAutomator2
${APP_PACKAGE}        com.saucelabs.mydemoapp.android
${APP_ACTIVITY}       com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${NEW_COMMAND_TIMEOUT}     300
${SESSION_NAME}       MobileDemoAppTest
${SESSION_RETRY}      2
${SESSION_TIMEOUT}    300000
*** Keywords ***
Open Demo App
    [Documentation]    Ouvre l'application de démo sur Sauce Labs
    ${TAGS}=    Create List    accessibilite    mobile    android
    ${sauce_options}=    Create Dictionary
    ...    name=${SESSION_NAME}
    ...    sessionCreationRetry=${SESSION_RETRY}
    ...    sessionCreationTimeout=${SESSION_TIMEOUT}
    ...    appiumVersion=latest
    ...    tags=${TAGS}

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
