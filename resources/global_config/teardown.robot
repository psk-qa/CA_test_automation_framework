*** Settings ***
Documentation     Test suite pour login avec définition de keywords
Library           AppiumLibrary
Library           RequestsLibrary
Library           Collections
Variables         ../../config/config_manager.py

*** Variables ***
${SAUCE_API_URL}    https://api.eu-central-1.saucelabs.com
${suite}            /v1/rdc/jobs?limit=
*** Keywords ***
Update Sauce Labs Job Status And close Demo App
    [Documentation]    Met à jour le job Sauce Labs via REST API et ferme l'application
    [Arguments]    ${status}=${PREV_TEST_STATUS}

    ${session_id}=    Get Appium SessionId
    Log To Console    Updating Sauce Labs session ${session_id}

    ${auth}=    Create List    ${username}    ${access_key}
    Create Session    sauce    ${SAUCE_API_URL}    auth=${auth}

    ${resp}=    GET On Session    sauce    ${SAUCE_API_URL}${suite}
    ${json}=    Evaluate    json.loads("""${resp.content}""")    modules=json
    ${entities}=    Get From Dictionary    ${json}    entities
    # Trier par start_time décroissant et prendre le premier
    ${sorted}=    Evaluate    sorted(${entities}, key=lambda x: x['start_time'], reverse=True)    modules=__main__
    ${last_job}=    Get From List    ${sorted}    0
    ${job_id}=    Get From Dictionary    ${last_job}    id

    ${passed}=    Run Keyword If    '${status}'=='PASS'    Set Variable    True
    ...    ELSE    Set Variable    False

    ${data}=    Create Dictionary    passed=${passed}
    ${resp}=    PUT On Session    sauce    ${SAUCE_API_URL}/v1/rdc/jobs/${job_id}    json=${data}

    Close Demo App

Close Demo App
    [Documentation]    Ouvre l'application de démo sur Sauce Labs
    Sleep    5s
    Close Application
