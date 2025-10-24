-user tries to authenticate *3 account locked
    Given user with "locked" account status
    When user attempts to login with valid credentials
    Then authentication should be denied with "account locked" message
    And user is not authenticated