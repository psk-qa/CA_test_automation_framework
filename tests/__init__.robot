*** Settings ***
Library    AppiumLibrary
Resource    ../resources/global_config/setup.robot
Resource    ../resources/global_config/teardown.robot
Suite Setup  Open Demo App
Suite Teardown  Update Sauce Labs Job Status And close Demo App