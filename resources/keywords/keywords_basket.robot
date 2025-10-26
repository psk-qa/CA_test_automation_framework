*** Settings ***
Documentation     Keywords related to basket operations
Library           AppiumLibrary
Resource          ../locators.robot

*** Keywords ***
Go To Basket
    [Documentation]   Navigate to the user's basket
    AppiumLibrary.Click Element               ${BTN_BASKET}

Check Basket Not Empty
    [Documentation]   Check if the user's basket is not empty
    AppiumLibrary.Element Should Be Visible   ${ARTICLE_ITEM_BASKET}

Check Basket Empty
    [Documentation]   Check if the user's basket is empty
    Go To Basket
    AppiumLibrary.Element Should Be Visible   ${TEXT_BASKET_EMPTY}

Go To Shopping
    [Documentation]   Navigate to the shopping section
    AppiumLibrary.Click Element               ${BTN_GO_SHOPPING}

Click Add Product
    [Documentation]   Add a product to the user's basket
    AppiumLibrary.Click Element               ${BTN_ADD_ARTICLE}

Get Product
    [Documentation]   Retrieve the list of product elements available for selection
    ${article}=    Get WebElements            ${ARTICLE_ITEM}
    AppiumLibrary.Click Element               ${article}[0]

Click Remove Product
    [Documentation]   Remove a product from the user's basket
    AppiumLibrary.Click Element               ${BTN_REMOVE_ARTICLE}
