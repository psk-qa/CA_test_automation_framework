*** Settings ***
Documentation     User should be able to remove a product from his basket
Resource          ../resources/keywords/flow_basket.robot
Test Teardown     Navigate to catalog

*** Test Cases ***
User can delete a product from basket
    [Documentation]   User should be able to delete a product from the basket
    Given User's basket is not empty
    When User remove product from basket
    Then product is removed from User's basket
    

*** Keywords ***
User's basket is not empty
    [Documentation]   User basket is not empty
    [Teardown]        Capture Page Screenshot
    Add product to basket homepage
    Verify Basket Is Not Empty

User remove product from basket
    [Documentation]   User selects a product and removes it from basket
    [Teardown]        Capture Page Screenshot
    Remove product from basket

product is removed from User's basket
    [Documentation]   Verify that the product is removed from basket
    [Teardown]        Capture Page Screenshot
    Verify Basket Is Empty
