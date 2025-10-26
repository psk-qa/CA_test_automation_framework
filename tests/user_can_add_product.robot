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
User can add a product to basket
    [Documentation]   User should be able to add a product to the basket
    Given User's basket is empty
    When User adds product to basket
    Then product is added to User's basket 

*** Keywords ***
User's basket is empty
    [Documentation]   User basket is empty
    AppiumLibrary.Click Element    xpath=//android.widget.RelativeLayout[@content-desc="View cart"]      
    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/noItemTitleTV"]

User adds product to basket
    [Documentation]   User selects a product and adds it to his basket
    AppiumLibrary.Click Element    id=com.saucelabs.mydemoapp.android:id/shoppingBt
    ${elements}=    Get WebElements    xpath=(//android.widget.ImageView[@content-desc='Product Image'])
    AppiumLibrary.Click Element    ${elements}[0]
    AppiumLibrary.Click Element    id=com.saucelabs.mydemoapp.android:id/cartBt

product is added to User's basket 
    [Documentation]   Verify that the product is added to basket
    AppiumLibrary.Click Element    xpath=//android.widget.RelativeLayout[@content-desc="View cart"]      
    AppiumLibrary.Element Should Be Visible    id=com.saucelabs.mydemoapp.android:id/productRV
