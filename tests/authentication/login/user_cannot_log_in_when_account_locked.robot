*** Settings ***
Documentation     User cannot log in if it's account is locked (he provides more than 3 times wrong credentials for
...               instance). To access the Pacifica mobile application, user must contact the bank to unlock their 
...               account before being able to log in again.  
Library           SeleniumLibrary

*** Variables ***

*** Test Cases ***
User cannot log in - account locked
    [Documentation]   User cannot log in if it's account is locked
    [Tags]            TO_IMPLEMENT
    Given User's account is locked
    When User provide valid userid
    And User provide valid password
    Then An error message is displayed
    And User is not logged in


*** Keywords ***
Given User's account is locked
    Log    Not implemented yet

When User provide valid userid
    Log    Not implemented yet

And User provide valid password
    Log    Not implemented yet

Then An error message is displayed
    Log    Not implemented yet

And User is not logged in
    Log    Not implemented yet


