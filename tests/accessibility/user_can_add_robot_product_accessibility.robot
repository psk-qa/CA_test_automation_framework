*** Settings ***
Documentation     Verify accessibility page
Resource          ../../resources/keywords/flow_basket_accessibility.robot

*** Test Cases ***
User with disable capabilities should be able to add product to basket
    [Documentation]   Verify accessibility features on add product to basket page
    Given User's basket is empty
    When User adds product to basket
    Then product is added to User's basket

*** Keywords ***
User's basket is empty
    [Documentation]   User basket is empty
    [Teardown]        Capture Page Screenshot
    Verify Basket Is Empty

User adds product to basket
    [Documentation]   User selects a product and adds it to his basket
    [Teardown]        Capture Page Screenshot
    Add product to basket

Product is added to User's basket 
    [Documentation]   Verify that the product is added to basket
    [Teardown]        Capture Page Screenshot
    Verify Basket Is Not Empty

# verifier que le content description est présent pour les images et les boutons
# naviguer , don con peut vérifier qu 'une personne en situation de handicap peut naviguer completement sur la page (scenario ajout article panie)
# manuel on peut compléter et verifier que le talkback lit bien à voir 