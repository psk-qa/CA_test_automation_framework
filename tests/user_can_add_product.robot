*** Settings ***
Documentation     User should be able to add a product to the basket
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
    [Teardown]        Capture Page Screenshot
    Verify Basket Is Empty
    Capture Page Screenshot

User adds product to basket
    [Documentation]   User selects a product and adds it to his basket
    [Teardown]        Capture Page Screenshot
    Add product to basket

Product is added to User's basket 
    [Documentation]   Verify that the product is added to basket
    [Teardown]        Capture Page Screenshot
    Verify Basket Is Not Empty
