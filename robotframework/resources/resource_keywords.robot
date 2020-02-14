*** Settings ***

*** Variables ***

*** Keywords ***
Validate page
    [Documentation]    This keyword ...
    [Timeout]    3 minutes
    [Arguments]    ${name}
    Wait until page contains    Luottokumppani vaativiin testausprojekteihin   5   error=Tekstiä ei löytynyt
    Log    ${name}

Test Link validity


Siirry Mobiilitestaus sivulle
    [Arguments]     ${teksti}
    Mouse Over       ${PALVELUT_BUTTON}
    Wait Until Page Contains Element        ${TESTAUS_JA_LAADUNVARMISTUS_BUTTON}
    Mouse Over       ${TESTAUS_JA_LAADUNVARMISTUS_BUTTON}
    Wait Until Page COntains Element        ${MOBIILITESTAUS_BUTTON}
    Mouse Down       ${MOBIILITESTAUS_BUTTON}
    Click Element       ${MOBIILITESTAUS_BUTTON}
    Wait Until Page Contains    ${teksti}    10    error=tekstiä ei löytynyt 10s
    Capture Page Screenshot     EMBED
    Page Should Contain    ${TEKSTI_1_MOBIILISOVELLUS}