*** Settings ***
Documentation     Keywords related to basket operations
Library           AppiumLibrary
Resource          ../locators.robot

*** Keywords ***
Go To Basket
    [Documentation]   Navigate to the user's basket
    Element Should Be Visible    ${BTN_BASKET}
    Click Element                ${BTN_BASKET}
    ${desc}=    Get Element Attribute    ${BTN_BASKET}    content-desc
    Should Be Equal    ${desc}    View cart

Check Basket Not Empty
    [Documentation]   Check if the user's basket is not empty
    Element Should Be Visible   ${ARTICLE_ITEM_BASKET}

Check Basket Empty
    [Documentation]   Check if the user's basket is empty
    Go To Basket
    Element Should Be Visible    ${TEXT_BASKET_EMPTY}
    ${desc}=    Get Element Attribute    ${TEXT_BASKET_EMPTY}    content-desc
    Should Not Be Empty    ${desc}
    Should Be Equal    ${desc}    "Empty"

Go To Shopping
    [Documentation]   Navigate to the shopping section
    AppiumLibrary.Click Element               ${BTN_GO_SHOPPING}

Click Add Product
    [Documentation]   Add a product to the user's basket
    AppiumLibrary.Click Element               ${BTN_ADD_ARTICLE}

Get Product
    [Documentation]   Retrieve the list of product elements available for selection
    AppiumLibrary.Click Element               ${ARTICLE_ITEM}

Click Remove Product
    [Documentation]   Remove a product from the user's basket
    AppiumLibrary.Click Element               ${BTN_REMOVE_ARTICLE}

Open Catalog From Menu
    [Documentation]   Open the catalog from the menu
    AppiumLibrary.Click Element               ${BTN_MENU}
    AppiumLibrary.Click Element               ${BTN_CATALOG}