*** Settings ***
Documentation     To access the Pacifica mobile application, the user must meet the following conditions:
...               The user must be a Credit Agricole customer (an account number is required to identify)
...               User's account must be active and not blocked.
...               The user must provide valid login credentials (valid account number and valid password).
...
Library           SeleniumLibrary

*** Variables ***

*** Test Cases ***
User can log in with valid credentials
    [Documentation]   User can log in with valid credentials
    [Tags]            TO_IMPLEMENT
    Given User's account is not locked and is active
    And User has valid userid
    And User has valid password
    When User logs in
    Then User successfully logged in

*** Keywords ***
Given User's account is not locked and is active
    Log    Not implemented yet


And User has valid userid
    Log    Not implemented yet

And User has valid password
    Log    Not implemented yet

When User logs in
    Log    Not implemented yet

Then User successfully logged in
    Log    Not implemented yet


