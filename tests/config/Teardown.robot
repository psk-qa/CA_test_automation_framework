*** Settings ***
Documentation     Test suite pour login avec définition de keywords
Library           AppiumLibrary

*** Keywords ***
Close Demo App
    [Documentation]    Ouvre l'application de démo sur Sauce Labs
    Sleep    5s
    Capture Page Screenshot
    Close Application