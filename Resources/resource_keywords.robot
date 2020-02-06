*** Settings ***

*** Keywords ***
Validate page
    [Documentation]    This keyword ...
    [Timeout]    3 minutes
    Wait Until Page Contains Element   ${PALVELUT_BUTTON}
    Click button    ${PALVELUT_BUTTON}
    Wait until page contains text    Testausta kaikkiin tarpeisiin   5   error=Tekstiä ei löytynyt
    Go back
