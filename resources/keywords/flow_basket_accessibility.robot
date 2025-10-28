*** Settings ***
Documentation     Keywords related to basket operations
Library           AppiumLibrary
Resource          keywords_basket_accessibility.robot

*** Keywords ***
Verify basket is empty
    [Documentation]   Verify that the user's basket is empty
    Go To Basket
    Check Basket Empty

Add product to basket
    [Documentation]   Add a product to the user's basket
    Go To Shopping
    Get Product
    Click Add Product

Add product to basket homepage
    [Documentation]   Add a product to the user's basket from homepage
    Get Product
    Click Add Product

Verify Basket Is Not Empty
    [Documentation]   Verify that the user's basket is not empty
    Go To Basket
    Check Basket Not Empty

Remove product from basket
    [Documentation]   Remove a product from user's basket
    Go To Basket
    Click Remove Product

Navigate to catalog
    [Documentation]   Navigate to the catalog from the menu
    Open Catalog From Menu