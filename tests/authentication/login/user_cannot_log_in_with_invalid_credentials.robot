*** Settings ***
Documentation     To access the Pacifica mobile application, the user must meet the following conditions:
...               The user must be a Credit Agricole customer (an account number is required to identify)
...               User's account must be active and not blocked.
...               The user must provide valid login credentials (valid account number and valid password).
...
Library           SeleniumLibrary

*** Variables ***

*** Test Cases ***
User cannot log in with wrong credentials - wrong userid
    [Documentation]   User can log in with valid credentials
    [Tags]            TO_IMPLEMENT
    Given User's account is not locked and is active
    And User has wrong userid
    And User has valid password
    When User logs in
    Then an error message is displayed
    And user is not logged in

User cannot log in with wrong credentials - wrong password
    [Documentation]   User can log in with valid credentials
    [Tags]            TO_IMPLEMENT
    Given User's account is not locked and is active
    And User has valid userid
    And User has wrong password
    When User logs in
    Then an error message is displayed
    And user is not logged in

User cannot log in with wrong credentials - wrong userid and wrong password
    [Documentation]   User can log in with valid credentials
    [Tags]            TO_IMPLEMENT
    Given User's account is not locked and is active
    And User has wrong userid
    And User has wrong password
    When User logs in
    Then an error message is displayed
    And user is not logged in

*** Keywords ***
Given User's account is not locked and is active
    Log    Not implemented yet
    # là encore on encapsule et on évite l'implémentation technique mélangée
    # au métier
    # requete API ? DB ? status account user ? locked active ? 

And User has valid userid
    Log    Not implemented yet

And User has wrong userid
    Log    Not implemented yet

And User has valid password
    Log    Not implemented yet

And user is not logged in
    Log    Not implemented yet

And User has wrong password
    Log    Not implemented yet

When User logs in
    Log    Not implemented yet

Then an error message is displayed
    Log    Not implemented yet