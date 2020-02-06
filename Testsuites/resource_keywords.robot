*** Settings ***

*** Variables ***
${PALVELUT_BUTTON}      xpath://span[contains(text(),"Palvelut")]

*** Keywords ***
Validate page
    [Documentation]    This keyword ...
    [Timeout]    3 minutes
    Wait Until Page Contains Element   ${PALVELUT_BUTTON}
    Click Link   Palvelut
    Wait until page contains    Testausta kaikkiin tarpeisiin   5   error=Tekstiä ei löytynyt
    Go back
