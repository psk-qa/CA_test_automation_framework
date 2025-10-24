*** Settings ***
Documentation     To access the Pacifica mobile application, the user must meet the following conditions:
...               The user must be a Credit Agricole customer (an account number is required to identify)
...               User's account must be active and not locked.
...               The user must provide valid login credentials (valid account number and valid password).

Resource          config/Setup.robot
Resource          config/Teardown.robot

Test Setup        Open Demo App
Test Teardown     Close Demo App

*** Test Cases ***
User can logs in with valid credentials
    [Documentation]   User can log in with valid credentials
    [Tags]            TO_IMPLEMENT
    #[TO CHANGE] when user provide valid id + valid pwd + confirm
    Given User's account is not locked

# pourquoi ne pas faire ? input + btn ? 
# cas de test trop fragile / qui dépend de l UI et non du metier

*** Keywords ***
User's account is not locked
    [Documentation]   Verify that the user's account is not locked. [TO CHANGE] id plutot que xpath et safe click lib
    AppiumLibrary.Click Element    xpath=//android.widget.ImageView[@content-desc="View menu"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/itemTV" and @text="Catalog"]
    ${elements}=    Get WebElements    xpath=(//android.widget.ImageView[@content-desc='Product Image'])
    AppiumLibrary.Click Element    ${elements}[0]
    Should Be Equal    1    1