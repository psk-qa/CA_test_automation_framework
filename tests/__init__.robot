*** Settings ***
Library    AppiumLibrary
Resource    ../resources/global_config/Setup.robot
Resource    ../resources/global_config/Teardown.robot
Suite Setup  Open Demo App
Suite Teardown  Close Demo App
