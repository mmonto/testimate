*** Settings ***

*** Keywords ***
Validate page
    [Documentation]    This keyword ...
    [Timeout]    3 minutes
    Capture Page Screenshot    etusivu.png
    #Wait Until Page Contains Element   ${PALVELUT_BUTTON}       15
    #Click Link   Palvelut
    #Wait until page contains    Testausta kaikkiin tarpeisiin   5   error=Tekstiä ei löytynyt
    #Go back
