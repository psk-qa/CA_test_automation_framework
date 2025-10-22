*** Settings ***
Documentation     Test suite pour login avec définition de keywords
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}      http://127.0.0.1:4723
${PLATFORM_NAME}   Android
${DEVICE_NAME}     emulator-5554
${APP}             Android.SauceLabs.Mobile.Sample.app.2.7.1.apk
${AUTOMATION_NAME}     UiAutomator2
${APP_PACKAGE}     com.swaglabsmobileapp
${APP_ACTIVITY}    com.swaglabsmobileapp.MainActivity
${APP_WAIT}        com.swaglabsmobileapp.*


*** Test Cases ***
Open Demo App
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    app=${APP}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    appWaitActivity=${APP_WAIT}
    ...    fullReset=true    
    Sleep    5s
    Close Application